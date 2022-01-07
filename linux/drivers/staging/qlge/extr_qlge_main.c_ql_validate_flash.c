
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ql_adapter {int ndev; int flash; } ;
typedef int __le16 ;


 int ifup ;
 int le16_to_cpu (int ) ;
 int netif_err (struct ql_adapter*,int ,int ,char*,...) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static int ql_validate_flash(struct ql_adapter *qdev, u32 size, const char *str)
{
 int status, i;
 u16 csum = 0;
 __le16 *flash = (__le16 *)&qdev->flash;

 status = strncmp((char *)&qdev->flash, str, 4);
 if (status) {
  netif_err(qdev, ifup, qdev->ndev, "Invalid flash signature.\n");
  return status;
 }

 for (i = 0; i < size; i++)
  csum += le16_to_cpu(*flash++);

 if (csum)
  netif_err(qdev, ifup, qdev->ndev,
     "Invalid flash checksum, csum = 0x%.04x.\n", csum);

 return csum;
}
