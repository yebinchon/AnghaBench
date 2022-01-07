
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct cifs_tcon* fid; } ;
struct cifs_tcon {struct cifs_tcon* dfs_path; TYPE_1__ crfid; int password; struct cifs_tcon* nativeFileSystem; } ;


 int FYI ;
 int atomic_dec (int *) ;
 int cifs_dbg (int ,char*) ;
 int kfree (struct cifs_tcon*) ;
 int kzfree (int ) ;
 int tconInfoAllocCount ;

void
tconInfoFree(struct cifs_tcon *buf_to_free)
{
 if (buf_to_free == ((void*)0)) {
  cifs_dbg(FYI, "Null buffer passed to tconInfoFree\n");
  return;
 }
 atomic_dec(&tconInfoAllocCount);
 kfree(buf_to_free->nativeFileSystem);
 kzfree(buf_to_free->password);
 kfree(buf_to_free->crfid.fid);



 kfree(buf_to_free);
}
