
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pts_fs_info {int allocated_ptys; } ;


 int atomic_dec (int *) ;
 int ida_free (int *,int) ;
 int pty_count ;

void devpts_kill_index(struct pts_fs_info *fsi, int idx)
{
 ida_free(&fsi->allocated_ptys, idx);
 atomic_dec(&pty_count);
}
