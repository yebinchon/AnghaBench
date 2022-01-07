
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {TYPE_1__* pdev; } ;
struct aac_aifcmd {int dummy; } ;
struct TYPE_2__ {int dev; } ;




 int aac_aif_data (struct aac_aifcmd*,int) ;
 int dev_info (int *,char*,...) ;

__attribute__((used)) static void aac_handle_aif_bu(struct aac_dev *dev, struct aac_aifcmd *aifcmd)
{
 switch (aac_aif_data(aifcmd, 1)) {
 case 129:
  if (aac_aif_data(aifcmd, 2))
   dev_info(&dev->pdev->dev, "Backup unit had cache data loss - [%d]\n",
   aac_aif_data(aifcmd, 2));
  else
   dev_info(&dev->pdev->dev, "Backup Unit had cache data loss\n");
  break;
 case 128:
  if (aac_aif_data(aifcmd, 2))
   dev_info(&dev->pdev->dev, "DDR cache data recovered successfully - [%d]\n",
   aac_aif_data(aifcmd, 2));
  else
   dev_info(&dev->pdev->dev, "DDR cache data recovered successfully\n");
  break;
 }
}
