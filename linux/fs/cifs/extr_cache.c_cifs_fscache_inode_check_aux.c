
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct cifs_fscache_inode_auxdata {int last_change_time_nsec; int last_write_time_nsec; int last_change_time_sec; int last_write_time_sec; int eof; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {TYPE_2__ i_ctime; TYPE_1__ i_mtime; } ;
struct cifsInodeInfo {TYPE_3__ vfs_inode; int server_eof; } ;
typedef int loff_t ;
typedef enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;
typedef int auxdata ;


 int FSCACHE_CHECKAUX_OBSOLETE ;
 int FSCACHE_CHECKAUX_OKAY ;
 scalar_t__ memcmp (void const*,struct cifs_fscache_inode_auxdata*,int) ;
 int memset (struct cifs_fscache_inode_auxdata*,int ,int) ;

__attribute__((used)) static enum
fscache_checkaux cifs_fscache_inode_check_aux(void *cookie_netfs_data,
           const void *data,
           uint16_t datalen,
           loff_t object_size)
{
 struct cifs_fscache_inode_auxdata auxdata;
 struct cifsInodeInfo *cifsi = cookie_netfs_data;

 if (datalen != sizeof(auxdata))
  return FSCACHE_CHECKAUX_OBSOLETE;

 memset(&auxdata, 0, sizeof(auxdata));
 auxdata.eof = cifsi->server_eof;
 auxdata.last_write_time_sec = cifsi->vfs_inode.i_mtime.tv_sec;
 auxdata.last_change_time_sec = cifsi->vfs_inode.i_ctime.tv_sec;
 auxdata.last_write_time_nsec = cifsi->vfs_inode.i_mtime.tv_nsec;
 auxdata.last_change_time_nsec = cifsi->vfs_inode.i_ctime.tv_nsec;

 if (memcmp(data, &auxdata, datalen) != 0)
  return FSCACHE_CHECKAUX_OBSOLETE;

 return FSCACHE_CHECKAUX_OKAY;
}
