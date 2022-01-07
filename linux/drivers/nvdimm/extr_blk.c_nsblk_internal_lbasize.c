
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nd_namespace_blk {int lbasize; } ;


 int INT_LBASIZE_ALIGNMENT ;
 int roundup (int ,int ) ;

__attribute__((used)) static u32 nsblk_internal_lbasize(struct nd_namespace_blk *nsblk)
{
 return roundup(nsblk->lbasize, INT_LBASIZE_ALIGNMENT);
}
