
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int wait; } ;


 int DEFINE_WAIT (int ) ;
 scalar_t__ IS_ERR (struct list_head*) ;
 int TASK_UNINTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int memalloc_nofs_restore (unsigned int) ;
 unsigned int memalloc_nofs_save () ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int wait ;
 TYPE_1__ wsm ;
 struct list_head* zstd_alloc_workspace (unsigned int) ;
 struct list_head* zstd_find_workspace (unsigned int) ;

__attribute__((used)) static struct list_head *zstd_get_workspace(unsigned int level)
{
 struct list_head *ws;
 unsigned int nofs_flag;


 if (!level)
  level = 1;

again:
 ws = zstd_find_workspace(level);
 if (ws)
  return ws;

 nofs_flag = memalloc_nofs_save();
 ws = zstd_alloc_workspace(level);
 memalloc_nofs_restore(nofs_flag);

 if (IS_ERR(ws)) {
  DEFINE_WAIT(wait);

  prepare_to_wait(&wsm.wait, &wait, TASK_UNINTERRUPTIBLE);
  schedule();
  finish_wait(&wsm.wait, &wait);

  goto again;
 }

 return ws;
}
