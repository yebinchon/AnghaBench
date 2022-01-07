
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pd_message {int header; scalar_t__ payload; } ;
struct fusb302_chip {int tcpm_port; } ;


 int EINVAL ;
 int FUSB_REG_FIFOS ;
 scalar_t__ PD_CTRL_GOOD_CRC ;
 int PD_MAX_PAYLOAD ;
 int TCPC_TX_SUCCESS ;
 int fusb302_i2c_block_read (struct fusb302_chip*,int ,int,int *) ;
 int fusb302_i2c_read (struct fusb302_chip*,int ,int *) ;
 int fusb302_log (struct fusb302_chip*,char*,int) ;
 int pd_header_cnt_le (int) ;
 scalar_t__ pd_header_type_le (int) ;
 int tcpm_pd_receive (int ,struct pd_message*) ;
 int tcpm_pd_transmit_complete (int ,int ) ;

__attribute__((used)) static int fusb302_pd_read_message(struct fusb302_chip *chip,
       struct pd_message *msg)
{
 int ret = 0;
 u8 token;
 u8 crc[4];
 int len;


 ret = fusb302_i2c_read(chip, FUSB_REG_FIFOS, &token);
 if (ret < 0)
  return ret;
 ret = fusb302_i2c_block_read(chip, FUSB_REG_FIFOS, 2,
         (u8 *)&msg->header);
 if (ret < 0)
  return ret;
 len = pd_header_cnt_le(msg->header) * 4;

 if (len > PD_MAX_PAYLOAD * 4) {
  fusb302_log(chip, "PD message too long %d", len);
  return -EINVAL;
 }
 if (len > 0) {
  ret = fusb302_i2c_block_read(chip, FUSB_REG_FIFOS, len,
          (u8 *)msg->payload);
  if (ret < 0)
   return ret;
 }

 ret = fusb302_i2c_block_read(chip, FUSB_REG_FIFOS, 4, crc);
 if (ret < 0)
  return ret;
 fusb302_log(chip, "PD message header: %x", msg->header);
 fusb302_log(chip, "PD message len: %d", len);
 if ((!len) && (pd_header_type_le(msg->header) == PD_CTRL_GOOD_CRC))
  tcpm_pd_transmit_complete(chip->tcpm_port, TCPC_TX_SUCCESS);
 else
  tcpm_pd_receive(chip->tcpm_port, msg);

 return ret;
}
