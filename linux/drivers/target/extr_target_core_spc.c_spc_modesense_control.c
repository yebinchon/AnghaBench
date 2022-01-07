
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct se_session {int sup_prot_ops; scalar_t__ sess_prot_type; } ;
struct TYPE_2__ {int emulate_rest_reord; int emulate_ua_intlck_ctrl; scalar_t__ pi_prot_type; scalar_t__ emulate_tas; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
struct se_cmd {struct se_session* se_sess; struct se_device* se_dev; } ;


 int TARGET_PROT_DIN_PASS ;
 int TARGET_PROT_DOUT_PASS ;
 scalar_t__ target_sense_desc_format (struct se_device*) ;

__attribute__((used)) static int spc_modesense_control(struct se_cmd *cmd, u8 pc, u8 *p)
{
 struct se_device *dev = cmd->se_dev;
 struct se_session *sess = cmd->se_sess;

 p[0] = 0x0a;
 p[1] = 0x0a;


 if (pc == 1)
  goto out;


 p[2] = (1 << 1);
 if (target_sense_desc_format(dev))

  p[2] |= (1 << 2);
 p[3] = (dev->dev_attrib.emulate_rest_reord == 1) ? 0x00 : 0x10;
 p[4] = (dev->dev_attrib.emulate_ua_intlck_ctrl == 2) ? 0x30 :
        (dev->dev_attrib.emulate_ua_intlck_ctrl == 1) ? 0x20 : 0x00;
 p[5] = (dev->dev_attrib.emulate_tas) ? 0x40 : 0x00;
 if (sess->sup_prot_ops & (TARGET_PROT_DIN_PASS | TARGET_PROT_DOUT_PASS)) {
  if (dev->dev_attrib.pi_prot_type || sess->sess_prot_type)
   p[5] |= 0x80;
 }

 p[8] = 0xff;
 p[9] = 0xff;
 p[11] = 30;

out:
 return 12;
}
