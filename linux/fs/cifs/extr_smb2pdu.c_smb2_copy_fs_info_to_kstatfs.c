
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_fs_full_size_info {int CallerAvailableAllocationUnits; int TotalAllocationUnits; int SectorsPerAllocationUnit; int BytesPerSector; } ;
struct kstatfs {int f_bsize; void* f_bavail; void* f_bfree; void* f_blocks; } ;


 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;

void
smb2_copy_fs_info_to_kstatfs(struct smb2_fs_full_size_info *pfs_inf,
        struct kstatfs *kst)
{
 kst->f_bsize = le32_to_cpu(pfs_inf->BytesPerSector) *
     le32_to_cpu(pfs_inf->SectorsPerAllocationUnit);
 kst->f_blocks = le64_to_cpu(pfs_inf->TotalAllocationUnits);
 kst->f_bfree = kst->f_bavail =
   le64_to_cpu(pfs_inf->CallerAvailableAllocationUnits);
 return;
}
