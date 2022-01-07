
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct btt {scalar_t__ sector_size; scalar_t__ lbasize; } ;



__attribute__((used)) static u32 btt_meta_size(struct btt *btt)
{
 return btt->lbasize - btt->sector_size;
}
