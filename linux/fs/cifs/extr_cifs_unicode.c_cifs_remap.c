
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_sb_info {int mnt_cifs_flags; } ;


 int CIFS_MOUNT_MAP_SFM_CHR ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int NO_MAP_UNI_RSVD ;
 int SFM_MAP_UNI_RSVD ;
 int SFU_MAP_UNI_RSVD ;

int cifs_remap(struct cifs_sb_info *cifs_sb)
{
 int map_type;

 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SFM_CHR)
  map_type = SFM_MAP_UNI_RSVD;
 else if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MAP_SPECIAL_CHR)
  map_type = SFU_MAP_UNI_RSVD;
 else
  map_type = NO_MAP_UNI_RSVD;

 return map_type;
}
