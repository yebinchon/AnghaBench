
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct isst_if_mbox_cmd {int req_data; int parameter; int sub_command; int command; int resp_data; } ;


 int BIT_ULL (int ) ;
 int EBUSY ;
 int ENXIO ;
 int GENMASK_ULL (int,int ) ;
 int OS_MAILBOX_RETRY_COUNT ;
 int PUNIT_MAILBOX_BUSY_BIT ;
 int PUNIT_MAILBOX_DATA ;
 int PUNIT_MAILBOX_INTERFACE ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static int isst_if_mbox_cmd(struct pci_dev *pdev,
       struct isst_if_mbox_cmd *mbox_cmd)
{
 u32 retries, data;
 int ret;


 retries = OS_MAILBOX_RETRY_COUNT;
 do {
  ret = pci_read_config_dword(pdev, PUNIT_MAILBOX_INTERFACE,
         &data);
  if (ret)
   return ret;

  if (data & BIT_ULL(PUNIT_MAILBOX_BUSY_BIT)) {
   ret = -EBUSY;
   continue;
  }
  ret = 0;
  break;
 } while (--retries);

 if (ret)
  return ret;


 ret = pci_write_config_dword(pdev, PUNIT_MAILBOX_DATA,
         mbox_cmd->req_data);
 if (ret)
  return ret;


 data = BIT_ULL(PUNIT_MAILBOX_BUSY_BIT) |
        (mbox_cmd->parameter & GENMASK_ULL(13, 0)) << 16 |
        (mbox_cmd->sub_command << 8) |
        mbox_cmd->command;

 ret = pci_write_config_dword(pdev, PUNIT_MAILBOX_INTERFACE, data);
 if (ret)
  return ret;


 retries = OS_MAILBOX_RETRY_COUNT;
 do {
  ret = pci_read_config_dword(pdev, PUNIT_MAILBOX_INTERFACE,
         &data);
  if (ret)
   return ret;

  if (data & BIT_ULL(PUNIT_MAILBOX_BUSY_BIT)) {
   ret = -EBUSY;
   continue;
  }

  if (data & 0xff)
   return -ENXIO;

  ret = pci_read_config_dword(pdev, PUNIT_MAILBOX_DATA, &data);
  if (ret)
   return ret;

  mbox_cmd->resp_data = data;
  ret = 0;
  break;
 } while (--retries);

 return ret;
}
