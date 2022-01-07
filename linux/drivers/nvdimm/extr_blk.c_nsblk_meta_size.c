
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nd_namespace_blk {int lbasize; } ;



__attribute__((used)) static u32 nsblk_meta_size(struct nd_namespace_blk *nsblk)
{
 return nsblk->lbasize - ((nsblk->lbasize >= 4096) ? 4096 : 512);
}
