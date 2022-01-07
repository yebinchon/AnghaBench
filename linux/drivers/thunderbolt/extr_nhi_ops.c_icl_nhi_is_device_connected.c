
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_nhi {int pdev; } ;
struct tb {TYPE_1__* root_switch; } ;
struct TYPE_2__ {int dev; } ;


 int check_for_device ;
 int device_for_each_child (int *,int *,int ) ;
 struct tb* pci_get_drvdata (int ) ;

__attribute__((used)) static bool icl_nhi_is_device_connected(struct tb_nhi *nhi)
{
 struct tb *tb = pci_get_drvdata(nhi->pdev);
 int ret;

 ret = device_for_each_child(&tb->root_switch->dev, ((void*)0),
        check_for_device);
 return ret > 0;
}
