
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u16 ;
struct TYPE_2__ {char* unit_serial; } ;
struct se_device {int dev_flags; TYPE_1__ t10_wwn; } ;
struct se_cmd {struct se_device* se_dev; } ;
typedef int sense_reason_t ;


 int DF_EMULATED_VPD_UNIT_SERIAL ;
 unsigned char sprintf (unsigned char*,char*,char*) ;

__attribute__((used)) static sense_reason_t
spc_emulate_evpd_80(struct se_cmd *cmd, unsigned char *buf)
{
 struct se_device *dev = cmd->se_dev;
 u16 len;

 if (dev->dev_flags & DF_EMULATED_VPD_UNIT_SERIAL) {
  len = sprintf(&buf[4], "%s", dev->t10_wwn.unit_serial);
  len++;
  buf[3] = len;
 }
 return 0;
}
