
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ba_lun_info {int free_aun_cnt; } ;
struct ba_lun {struct ba_lun_info* ba_lun_handle; } ;



__attribute__((used)) static u64 ba_space(struct ba_lun *ba_lun)
{
 struct ba_lun_info *bali = ba_lun->ba_lun_handle;

 return bali->free_aun_cnt;
}
