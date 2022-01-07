
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {int lock_owner; int spinning_readers; int spinning_writers; int blocking_readers; int blocking_writers; int read_locks; int write_locks; int refs; int fs_info; } ;
struct TYPE_2__ {int pid; } ;


 int atomic_read (int *) ;
 int btrfs_info (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* current ;

__attribute__((used)) static void print_eb_refs_lock(struct extent_buffer *eb)
{
}
