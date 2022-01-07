
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct se_session {int sup_prot_ops; scalar_t__ sess_prot_type; } ;
struct TYPE_6__ {int lba_map_lock; int lba_map_list; } ;
struct TYPE_5__ {scalar_t__ pi_prot_type; } ;
struct se_device {TYPE_3__ t10_alua; TYPE_2__ dev_attrib; TYPE_1__* transport; } ;
struct se_cmd {struct se_device* se_dev; struct se_session* se_sess; } ;
typedef int sense_reason_t ;
struct TYPE_4__ {scalar_t__ (* get_device_type ) (struct se_device*) ;} ;


 scalar_t__ TARGET_DIF_TYPE1_PROT ;
 scalar_t__ TARGET_DIF_TYPE3_PROT ;
 int TARGET_PROT_DIN_PASS ;
 int TARGET_PROT_DOUT_PASS ;
 scalar_t__ TYPE_DISK ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (struct se_device*) ;
 scalar_t__ target_check_wce (struct se_device*) ;

__attribute__((used)) static sense_reason_t
spc_emulate_evpd_86(struct se_cmd *cmd, unsigned char *buf)
{
 struct se_device *dev = cmd->se_dev;
 struct se_session *sess = cmd->se_sess;

 buf[3] = 0x3c;




 if (sess->sup_prot_ops & (TARGET_PROT_DIN_PASS | TARGET_PROT_DOUT_PASS)) {
  if (dev->dev_attrib.pi_prot_type == TARGET_DIF_TYPE1_PROT ||
      cmd->se_sess->sess_prot_type == TARGET_DIF_TYPE1_PROT)
   buf[4] = 0x5;
  else if (dev->dev_attrib.pi_prot_type == TARGET_DIF_TYPE3_PROT ||
    cmd->se_sess->sess_prot_type == TARGET_DIF_TYPE3_PROT)
   buf[4] = 0x4;
 }


 if ((dev->transport->get_device_type(dev) == TYPE_DISK) &&
     (sess->sup_prot_ops & (TARGET_PROT_DIN_PASS | TARGET_PROT_DOUT_PASS)) &&
     (dev->dev_attrib.pi_prot_type || cmd->se_sess->sess_prot_type)) {
  buf[4] |= (0x3 << 3);
 }


 buf[5] = 0x07;


 if (target_check_wce(dev))
  buf[6] = 0x01;

 spin_lock(&cmd->se_dev->t10_alua.lba_map_lock);
 if (!list_empty(&dev->t10_alua.lba_map_list))
  buf[8] = 0x10;
 spin_unlock(&cmd->se_dev->t10_alua.lba_map_lock);
 return 0;
}
