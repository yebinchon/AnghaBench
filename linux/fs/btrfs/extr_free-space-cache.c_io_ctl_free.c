
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_io_ctl {int * pages; } ;


 int kfree (int *) ;

__attribute__((used)) static void io_ctl_free(struct btrfs_io_ctl *io_ctl)
{
 kfree(io_ctl->pages);
 io_ctl->pages = ((void*)0);
}
