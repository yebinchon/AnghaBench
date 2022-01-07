
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {int dummy; } ;
typedef int __le32 ;


 scalar_t__ CIFS_CACHE_HANDLE (struct cifsInodeInfo*) ;
 scalar_t__ CIFS_CACHE_READ (struct cifsInodeInfo*) ;
 scalar_t__ CIFS_CACHE_WRITE (struct cifsInodeInfo*) ;
 int SMB2_LEASE_HANDLE_CACHING ;
 int SMB2_LEASE_READ_CACHING ;
 int SMB2_LEASE_WRITE_CACHING ;

__le32
smb2_get_lease_state(struct cifsInodeInfo *cinode)
{
 __le32 lease = 0;

 if (CIFS_CACHE_WRITE(cinode))
  lease |= SMB2_LEASE_WRITE_CACHING;
 if (CIFS_CACHE_HANDLE(cinode))
  lease |= SMB2_LEASE_HANDLE_CACHING;
 if (CIFS_CACHE_READ(cinode))
  lease |= SMB2_LEASE_READ_CACHING;
 return lease;
}
