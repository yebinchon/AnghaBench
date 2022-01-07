
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct se_session {int sup_prot_ops; scalar_t__ sess_prot_type; } ;
struct se_lun {int dummy; } ;
struct TYPE_6__ {int revision; int model; int vendor; } ;
struct TYPE_5__ {scalar_t__ pi_prot_type; scalar_t__ emulate_3pc; } ;
struct se_device {TYPE_3__ t10_wwn; TYPE_2__ dev_attrib; TYPE_1__* transport; } ;
struct se_cmd {struct se_session* se_sess; struct se_device* se_dev; struct se_lun* se_lun; } ;
typedef int sense_reason_t ;
struct TYPE_4__ {scalar_t__ (* get_device_type ) (struct se_device*) ;} ;


 scalar_t__ INQUIRY_MODEL_LEN ;
 scalar_t__ INQUIRY_REVISION_LEN ;
 scalar_t__ INQUIRY_VENDOR_LEN ;
 int TARGET_PROT_DIN_PASS ;
 int TARGET_PROT_DOUT_PASS ;
 scalar_t__ TYPE_TAPE ;
 int memcpy (unsigned char*,int ,int ) ;
 int memset (unsigned char*,int,scalar_t__) ;
 int spc_fill_alua_data (struct se_lun*,unsigned char*) ;
 int strnlen (int ,scalar_t__) ;
 scalar_t__ stub1 (struct se_device*) ;

sense_reason_t
spc_emulate_inquiry_std(struct se_cmd *cmd, unsigned char *buf)
{
 struct se_lun *lun = cmd->se_lun;
 struct se_device *dev = cmd->se_dev;
 struct se_session *sess = cmd->se_sess;


 if (dev->transport->get_device_type(dev) == TYPE_TAPE)
  buf[1] = 0x80;

 buf[2] = 0x05;
 buf[3] = 2;




 spc_fill_alua_data(lun, buf);




 if (dev->dev_attrib.emulate_3pc)
  buf[5] |= 0x8;






 if (sess->sup_prot_ops & (TARGET_PROT_DIN_PASS | TARGET_PROT_DOUT_PASS)) {
  if (dev->dev_attrib.pi_prot_type || cmd->se_sess->sess_prot_type)
   buf[5] |= 0x1;
 }

 buf[7] = 0x2;






 memset(&buf[8], 0x20,
        INQUIRY_VENDOR_LEN + INQUIRY_MODEL_LEN + INQUIRY_REVISION_LEN);
 memcpy(&buf[8], dev->t10_wwn.vendor,
        strnlen(dev->t10_wwn.vendor, INQUIRY_VENDOR_LEN));
 memcpy(&buf[16], dev->t10_wwn.model,
        strnlen(dev->t10_wwn.model, INQUIRY_MODEL_LEN));
 memcpy(&buf[32], dev->t10_wwn.revision,
        strnlen(dev->t10_wwn.revision, INQUIRY_REVISION_LEN));
 buf[4] = 31;

 return 0;
}
