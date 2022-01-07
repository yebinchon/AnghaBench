
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ba_lun_info {struct ba_lun_info* lun_alloc_map; struct ba_lun_info* aun_clone_map; } ;
struct ba_lun {struct ba_lun_info* ba_lun_handle; } ;


 int kfree (struct ba_lun_info*) ;

void cxlflash_ba_terminate(struct ba_lun *ba_lun)
{
 struct ba_lun_info *bali = ba_lun->ba_lun_handle;

 if (bali) {
  kfree(bali->aun_clone_map);
  kfree(bali->lun_alloc_map);
  kfree(bali);
  ba_lun->ba_lun_handle = ((void*)0);
 }
}
