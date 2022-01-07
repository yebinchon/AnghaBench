
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef void* u32 ;
struct uic_command {void* argument3; int argument2; void* argument1; int command; int member_0; } ;
struct ufs_hba {int dev; } ;


 int UFS_UIC_COMMAND_RETRIES ;
 int UIC_ARG_ATTR_TYPE (scalar_t__) ;
 int UIC_CMD_DME_PEER_SET ;
 int UIC_CMD_DME_SET ;
 int UIC_GET_ATTR_ID (void*) ;
 int dev_dbg (int ,char*,char const*,int ,void*,int) ;
 int dev_err (int ,char*,char const*,int ,void*,int) ;
 int ufshcd_send_uic_cmd (struct ufs_hba*,struct uic_command*) ;

int ufshcd_dme_set_attr(struct ufs_hba *hba, u32 attr_sel,
   u8 attr_set, u32 mib_val, u8 peer)
{
 struct uic_command uic_cmd = {0};
 static const char *const action[] = {
  "dme-set",
  "dme-peer-set"
 };
 const char *set = action[!!peer];
 int ret;
 int retries = UFS_UIC_COMMAND_RETRIES;

 uic_cmd.command = peer ?
  UIC_CMD_DME_PEER_SET : UIC_CMD_DME_SET;
 uic_cmd.argument1 = attr_sel;
 uic_cmd.argument2 = UIC_ARG_ATTR_TYPE(attr_set);
 uic_cmd.argument3 = mib_val;

 do {

  ret = ufshcd_send_uic_cmd(hba, &uic_cmd);
  if (ret)
   dev_dbg(hba->dev, "%s: attr-id 0x%x val 0x%x error code %d\n",
    set, UIC_GET_ATTR_ID(attr_sel), mib_val, ret);
 } while (ret && peer && --retries);

 if (ret)
  dev_err(hba->dev, "%s: attr-id 0x%x val 0x%x failed %d retries\n",
   set, UIC_GET_ATTR_ID(attr_sel), mib_val,
   UFS_UIC_COMMAND_RETRIES - retries);

 return ret;
}
