
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wait; } ;
struct z_erofs_unzip_io {int pending_bios; TYPE_1__ u; } ;
struct z_erofs_collector {int owned_head; } ;
struct super_block {int dummy; } ;
struct list_head {int dummy; } ;


 size_t JQ_BYPASS ;
 size_t JQ_SUBMIT ;
 int NR_JOBQUEUES ;
 int atomic_read (int *) ;
 int wait_event (int ,int) ;
 int z_erofs_vle_submit_all (struct super_block*,int ,struct list_head*,struct z_erofs_unzip_io*,int) ;
 int z_erofs_vle_unzip_all (struct super_block*,struct z_erofs_unzip_io*,struct list_head*) ;

__attribute__((used)) static void z_erofs_submit_and_unzip(struct super_block *sb,
         struct z_erofs_collector *clt,
         struct list_head *pagepool,
         bool force_fg)
{
 struct z_erofs_unzip_io io[NR_JOBQUEUES];

 if (!z_erofs_vle_submit_all(sb, clt->owned_head,
        pagepool, io, force_fg))
  return;


 z_erofs_vle_unzip_all(sb, &io[JQ_BYPASS], pagepool);

 if (!force_fg)
  return;


 wait_event(io[JQ_SUBMIT].u.wait,
     !atomic_read(&io[JQ_SUBMIT].pending_bios));


 z_erofs_vle_unzip_all(sb, &io[JQ_SUBMIT], pagepool);
}
