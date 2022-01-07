
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cifs_tcon {int fscache; } ;
struct cifs_fscache_inode_auxdata {int last_change_time_nsec; int last_write_time_nsec; int last_change_time_sec; int last_write_time_sec; int eof; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int i_size; TYPE_2__ i_ctime; TYPE_1__ i_mtime; } ;
struct cifsInodeInfo {TYPE_3__ vfs_inode; int uniqueid; int fscache; int server_eof; } ;
typedef int auxdata ;


 int cifs_fscache_inode_object_def ;
 int fscache_acquire_cookie (int ,int *,int *,int,struct cifs_fscache_inode_auxdata*,int,struct cifsInodeInfo*,int ,int) ;
 int memset (struct cifs_fscache_inode_auxdata*,int ,int) ;

__attribute__((used)) static void cifs_fscache_acquire_inode_cookie(struct cifsInodeInfo *cifsi,
           struct cifs_tcon *tcon)
{
 struct cifs_fscache_inode_auxdata auxdata;

 memset(&auxdata, 0, sizeof(auxdata));
 auxdata.eof = cifsi->server_eof;
 auxdata.last_write_time_sec = cifsi->vfs_inode.i_mtime.tv_sec;
 auxdata.last_change_time_sec = cifsi->vfs_inode.i_ctime.tv_sec;
 auxdata.last_write_time_nsec = cifsi->vfs_inode.i_mtime.tv_nsec;
 auxdata.last_change_time_nsec = cifsi->vfs_inode.i_ctime.tv_nsec;

 cifsi->fscache =
  fscache_acquire_cookie(tcon->fscache,
           &cifs_fscache_inode_object_def,
           &cifsi->uniqueid, sizeof(cifsi->uniqueid),
           &auxdata, sizeof(auxdata),
           cifsi, cifsi->vfs_inode.i_size, 1);
}
