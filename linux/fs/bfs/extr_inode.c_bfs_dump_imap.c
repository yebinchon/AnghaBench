
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int si_lasti; int si_imap; } ;


 TYPE_1__* BFS_SB (struct super_block*) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int printf (char*,char const*,int,char*) ;
 int strcat (char*,char*) ;
 scalar_t__ test_bit (int,int ) ;

void bfs_dump_imap(const char *prefix, struct super_block *s)
{
}
