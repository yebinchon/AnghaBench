
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int data; } ;


 struct of_device_id* of_match_node (int ,int ) ;
 int ufs_hisi_of_match ;
 int ufshcd_pltfrm_init (struct platform_device*,int ) ;

__attribute__((used)) static int ufs_hisi_probe(struct platform_device *pdev)
{
 const struct of_device_id *of_id;

 of_id = of_match_node(ufs_hisi_of_match, pdev->dev.of_node);

 return ufshcd_pltfrm_init(pdev, of_id->data);
}
