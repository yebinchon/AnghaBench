
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {unsigned int oplock; unsigned int epoch; } ;
typedef int __u32 ;


 unsigned int CIFS_CACHE_READ_FLG ;
 unsigned int CIFS_CACHE_RHW_FLG ;
 unsigned int CIFS_CACHE_RH_FLG ;
 int smb21_set_oplock_level (struct cifsInodeInfo*,int ,unsigned int,int*) ;

__attribute__((used)) static void
smb3_set_oplock_level(struct cifsInodeInfo *cinode, __u32 oplock,
        unsigned int epoch, bool *purge_cache)
{
 unsigned int old_oplock = cinode->oplock;

 smb21_set_oplock_level(cinode, oplock, epoch, purge_cache);

 if (purge_cache) {
  *purge_cache = 0;
  if (old_oplock == CIFS_CACHE_READ_FLG) {
   if (cinode->oplock == CIFS_CACHE_READ_FLG &&
       (epoch - cinode->epoch > 0))
    *purge_cache = 1;
   else if (cinode->oplock == CIFS_CACHE_RH_FLG &&
     (epoch - cinode->epoch > 1))
    *purge_cache = 1;
   else if (cinode->oplock == CIFS_CACHE_RHW_FLG &&
     (epoch - cinode->epoch > 1))
    *purge_cache = 1;
   else if (cinode->oplock == 0 &&
     (epoch - cinode->epoch > 0))
    *purge_cache = 1;
  } else if (old_oplock == CIFS_CACHE_RH_FLG) {
   if (cinode->oplock == CIFS_CACHE_RH_FLG &&
       (epoch - cinode->epoch > 0))
    *purge_cache = 1;
   else if (cinode->oplock == CIFS_CACHE_RHW_FLG &&
     (epoch - cinode->epoch > 1))
    *purge_cache = 1;
  }
  cinode->epoch = epoch;
 }
}
