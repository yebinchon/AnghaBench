
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid ;
typedef int u32 ;
struct tb_nhi {int pdev; } ;
struct tb {TYPE_1__* root_switch; struct tb_nhi* nhi; } ;
struct TYPE_2__ {int uuid; } ;


 int GFP_KERNEL ;
 int VS_CAP_10 ;
 int VS_CAP_11 ;
 int kmemdup (int*,int,int ) ;
 int pci_read_config_dword (int ,int ,int*) ;

__attribute__((used)) static void icm_icl_set_uuid(struct tb *tb)
{
 struct tb_nhi *nhi = tb->nhi;
 u32 uuid[4];

 pci_read_config_dword(nhi->pdev, VS_CAP_10, &uuid[0]);
 pci_read_config_dword(nhi->pdev, VS_CAP_11, &uuid[1]);
 uuid[2] = 0xffffffff;
 uuid[3] = 0xffffffff;

 tb->root_switch->uuid = kmemdup(uuid, sizeof(uuid), GFP_KERNEL);
}
