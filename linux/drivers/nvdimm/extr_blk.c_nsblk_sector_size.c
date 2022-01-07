
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nd_namespace_blk {scalar_t__ lbasize; } ;


 scalar_t__ nsblk_meta_size (struct nd_namespace_blk*) ;

__attribute__((used)) static u32 nsblk_sector_size(struct nd_namespace_blk *nsblk)
{
 return nsblk->lbasize - nsblk_meta_size(nsblk);
}
