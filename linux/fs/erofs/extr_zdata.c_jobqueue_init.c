
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; int wait; } ;
struct z_erofs_unzip_io {int head; TYPE_1__ u; int pending_bios; } ;
struct z_erofs_unzip_io_sb {struct super_block* sb; struct z_erofs_unzip_io io; } ;
struct super_block {int dummy; } ;


 int DBG_BUGON (int) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int Z_EROFS_PCLUSTER_TAIL_CLOSED ;
 int __GFP_NOFAIL ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct z_erofs_unzip_io_sb* kvzalloc (int,int) ;
 int z_erofs_vle_unzip_wq ;

__attribute__((used)) static struct z_erofs_unzip_io *jobqueue_init(struct super_block *sb,
           struct z_erofs_unzip_io *io,
           bool foreground)
{
 struct z_erofs_unzip_io_sb *iosb;

 if (foreground) {

  DBG_BUGON(!io);

  init_waitqueue_head(&io->u.wait);
  atomic_set(&io->pending_bios, 0);
  goto out;
 }

 iosb = kvzalloc(sizeof(*iosb), GFP_KERNEL | __GFP_NOFAIL);
 DBG_BUGON(!iosb);


 io = &iosb->io;
 iosb->sb = sb;
 INIT_WORK(&io->u.work, z_erofs_vle_unzip_wq);
out:
 io->head = Z_EROFS_PCLUSTER_TAIL_CLOSED;
 return io;
}
