
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cifs_fid {int create_guid; int purge_cache; int epoch; int mid; int volatile_fid; int persistent_fid; } ;
struct cifsInodeInfo {int can_cache_brlcks; } ;
struct TYPE_7__ {int create_guid; int mid; int volatile_fid; int persistent_fid; } ;
struct cifsFileInfo {TYPE_3__ fid; int tlink; int dentry; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
typedef int __u32 ;
struct TYPE_8__ {TYPE_1__* ses; } ;
struct TYPE_6__ {int (* set_oplock_level ) (struct cifsInodeInfo*,int ,int ,int *) ;} ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;


 int CIFS_CACHE_WRITE (struct cifsInodeInfo*) ;
 struct cifsInodeInfo* CIFS_I (int ) ;
 int d_inode (int ) ;
 int memcpy (int ,int ,int) ;
 int stub1 (struct cifsInodeInfo*,int ,int ,int *) ;
 TYPE_4__* tlink_tcon (int ) ;

__attribute__((used)) static void
smb2_set_fid(struct cifsFileInfo *cfile, struct cifs_fid *fid, __u32 oplock)
{
 struct cifsInodeInfo *cinode = CIFS_I(d_inode(cfile->dentry));
 struct TCP_Server_Info *server = tlink_tcon(cfile->tlink)->ses->server;

 cfile->fid.persistent_fid = fid->persistent_fid;
 cfile->fid.volatile_fid = fid->volatile_fid;



 server->ops->set_oplock_level(cinode, oplock, fid->epoch,
          &fid->purge_cache);
 cinode->can_cache_brlcks = CIFS_CACHE_WRITE(cinode);
 memcpy(cfile->fid.create_guid, fid->create_guid, 16);
}
