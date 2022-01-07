
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_info {int tags_num; } ;


 int mvs_tag_clear (struct mvs_info*,int) ;

void mvs_tag_init(struct mvs_info *mvi)
{
 int i;
 for (i = 0; i < mvi->tags_num; ++i)
  mvs_tag_clear(mvi, i);
}
