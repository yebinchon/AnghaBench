
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whcrc {scalar_t__ rc_base; int event_work; struct umc_dev* umc_dev; } ;
struct uwb_rc {struct whcrc* priv; } ;
struct umc_dev {int dev; } ;


 scalar_t__ URCCMD ;
 scalar_t__ URCINTR ;
 scalar_t__ URCSTS ;
 int URCSTS_HALTED ;
 int cancel_work_sync (int *) ;
 int le_writel (int ,scalar_t__) ;
 int whci_wait_for (int *,scalar_t__,int ,int ,int,char*) ;

__attribute__((used)) static
void whcrc_stop_rc(struct uwb_rc *rc)
{
 struct whcrc *whcrc = rc->priv;
 struct umc_dev *umc_dev = whcrc->umc_dev;

 le_writel(0, whcrc->rc_base + URCINTR);
 cancel_work_sync(&whcrc->event_work);

 le_writel(0, whcrc->rc_base + URCCMD);
 whci_wait_for(&umc_dev->dev, whcrc->rc_base + URCSTS,
        URCSTS_HALTED, URCSTS_HALTED, 100, "radio controller stop");
}
