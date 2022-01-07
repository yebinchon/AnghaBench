
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct se_cmd {int se_cmd_flags; } ;


 int EINVAL ;
 int SCF_FUA ;
 int pr_err (char*,unsigned char) ;
 int target_check_fua (struct se_device*) ;

__attribute__((used)) static int
sbc_check_dpofua(struct se_device *dev, struct se_cmd *cmd, unsigned char *cdb)
{
 if (cdb[1] & 0x10) {

  if (!target_check_fua(dev)) {
   pr_err("Got CDB: 0x%02x with DPO bit set, but device"
          " does not advertise support for DPO\n", cdb[0]);
   return -EINVAL;
  }
 }
 if (cdb[1] & 0x8) {
  if (!target_check_fua(dev)) {
   pr_err("Got CDB: 0x%02x with FUA bit set, but device"
          " does not advertise support for FUA write\n",
          cdb[0]);
   return -EINVAL;
  }
  cmd->se_cmd_flags |= SCF_FUA;
 }
 return 0;
}
