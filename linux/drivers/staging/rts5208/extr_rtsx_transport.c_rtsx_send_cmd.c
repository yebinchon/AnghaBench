
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rtsx_dev {scalar_t__ trans_result; int trans_state; struct completion* done; int reg_lock; scalar_t__ check_card_cd; } ;
struct rtsx_chip {int host_cmds_addr; int ci; int int_reg; struct rtsx_dev* rtsx; } ;
struct completion {int dummy; } ;


 int BIT (int) ;
 int EIO ;
 int ETIMEDOUT ;
 scalar_t__ MS_CARD ;
 scalar_t__ MS_EXIST ;
 int RTSX_HCBAR ;
 int RTSX_HCBCTLR ;
 scalar_t__ SD_CARD ;
 scalar_t__ SD_EXIST ;
 int STATE_TRANS_CMD ;
 int STATE_TRANS_NONE ;
 scalar_t__ TRANS_NOT_READY ;
 scalar_t__ TRANS_RESULT_FAIL ;
 scalar_t__ TRANS_RESULT_OK ;
 scalar_t__ XD_CARD ;
 scalar_t__ XD_EXIST ;
 int dev_dbg (int ,char*,int ) ;
 int init_completion (struct completion*) ;
 int msecs_to_jiffies (int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_stop_cmd (struct rtsx_chip*,scalar_t__) ;
 int rtsx_writel (struct rtsx_chip*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 long wait_for_completion_interruptible_timeout (struct completion*,int ) ;

int rtsx_send_cmd(struct rtsx_chip *chip, u8 card, int timeout)
{
 struct rtsx_dev *rtsx = chip->rtsx;
 struct completion trans_done;
 u32 val = BIT(31);
 long timeleft;
 int err = 0;

 if (card == SD_CARD)
  rtsx->check_card_cd = SD_EXIST;
 else if (card == MS_CARD)
  rtsx->check_card_cd = MS_EXIST;
 else if (card == XD_CARD)
  rtsx->check_card_cd = XD_EXIST;
 else
  rtsx->check_card_cd = 0;

 spin_lock_irq(&rtsx->reg_lock);


 rtsx->done = &trans_done;
 rtsx->trans_result = TRANS_NOT_READY;
 init_completion(&trans_done);
 rtsx->trans_state = STATE_TRANS_CMD;

 rtsx_writel(chip, RTSX_HCBAR, chip->host_cmds_addr);

 val |= (u32)(chip->ci * 4) & 0x00FFFFFF;

 val |= 0x40000000;
 rtsx_writel(chip, RTSX_HCBCTLR, val);

 spin_unlock_irq(&rtsx->reg_lock);


 timeleft = wait_for_completion_interruptible_timeout(
  &trans_done, msecs_to_jiffies(timeout));
 if (timeleft <= 0) {
  dev_dbg(rtsx_dev(chip), "chip->int_reg = 0x%x\n",
   chip->int_reg);
  err = -ETIMEDOUT;
  goto finish_send_cmd;
 }

 spin_lock_irq(&rtsx->reg_lock);
 if (rtsx->trans_result == TRANS_RESULT_FAIL)
  err = -EIO;
 else if (rtsx->trans_result == TRANS_RESULT_OK)
  err = 0;

 spin_unlock_irq(&rtsx->reg_lock);

finish_send_cmd:
 rtsx->done = ((void*)0);
 rtsx->trans_state = STATE_TRANS_NONE;

 if (err < 0)
  rtsx_stop_cmd(chip, card);

 return err;
}
