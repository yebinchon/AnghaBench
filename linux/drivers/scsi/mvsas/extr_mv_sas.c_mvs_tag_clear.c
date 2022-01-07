
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {void* tags; } ;


 int clear_bit (int ,void*) ;

void mvs_tag_clear(struct mvs_info *mvi, u32 tag)
{
 void *bitmap = mvi->tags;
 clear_bit(tag, bitmap);
}
