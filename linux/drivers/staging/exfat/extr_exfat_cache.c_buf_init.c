
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_11__ {struct TYPE_11__* prev; struct TYPE_11__* next; } ;
struct fs_info_t {TYPE_3__* buf_cache_array; TYPE_2__* buf_cache_hash_list; TYPE_3__* FAT_cache_array; TYPE_1__* FAT_cache_hash_list; TYPE_4__ buf_cache_lru_list; TYPE_4__ FAT_cache_lru_list; } ;
struct TYPE_12__ {struct fs_info_t fs_info; } ;
struct TYPE_10__ {int drv; int * next; int * prev; int * buf_bh; scalar_t__ flag; int sec; } ;
struct TYPE_9__ {int drv; struct TYPE_9__* hash_prev; struct TYPE_9__* hash_next; int sec; } ;
struct TYPE_8__ {int drv; struct TYPE_8__* hash_prev; struct TYPE_8__* hash_next; int sec; } ;


 int BUF_CACHE_HASH_SIZE ;
 int BUF_CACHE_SIZE ;
 TYPE_7__* EXFAT_SB (struct super_block*) ;
 int FAT_CACHE_HASH_SIZE ;
 int FAT_CACHE_SIZE ;
 int FAT_cache_insert_hash (struct super_block*,TYPE_3__*) ;
 int buf_cache_insert_hash (struct super_block*,TYPE_3__*) ;
 int push_to_mru (TYPE_3__*,TYPE_4__*) ;

void buf_init(struct super_block *sb)
{
 struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);

 int i;


 p_fs->FAT_cache_lru_list.next = &p_fs->FAT_cache_lru_list;
 p_fs->FAT_cache_lru_list.prev = &p_fs->FAT_cache_lru_list;

 for (i = 0; i < FAT_CACHE_SIZE; i++) {
  p_fs->FAT_cache_array[i].drv = -1;
  p_fs->FAT_cache_array[i].sec = ~0;
  p_fs->FAT_cache_array[i].flag = 0;
  p_fs->FAT_cache_array[i].buf_bh = ((void*)0);
  p_fs->FAT_cache_array[i].prev = ((void*)0);
  p_fs->FAT_cache_array[i].next = ((void*)0);
  push_to_mru(&p_fs->FAT_cache_array[i],
       &p_fs->FAT_cache_lru_list);
 }

 p_fs->buf_cache_lru_list.next = &p_fs->buf_cache_lru_list;
 p_fs->buf_cache_lru_list.prev = &p_fs->buf_cache_lru_list;

 for (i = 0; i < BUF_CACHE_SIZE; i++) {
  p_fs->buf_cache_array[i].drv = -1;
  p_fs->buf_cache_array[i].sec = ~0;
  p_fs->buf_cache_array[i].flag = 0;
  p_fs->buf_cache_array[i].buf_bh = ((void*)0);
  p_fs->buf_cache_array[i].prev = ((void*)0);
  p_fs->buf_cache_array[i].next = ((void*)0);
  push_to_mru(&p_fs->buf_cache_array[i],
       &p_fs->buf_cache_lru_list);
 }


 for (i = 0; i < FAT_CACHE_HASH_SIZE; i++) {
  p_fs->FAT_cache_hash_list[i].drv = -1;
  p_fs->FAT_cache_hash_list[i].sec = ~0;
  p_fs->FAT_cache_hash_list[i].hash_next =
   &p_fs->FAT_cache_hash_list[i];
  p_fs->FAT_cache_hash_list[i].hash_prev =
   &p_fs->FAT_cache_hash_list[i];
 }

 for (i = 0; i < FAT_CACHE_SIZE; i++)
  FAT_cache_insert_hash(sb, &p_fs->FAT_cache_array[i]);

 for (i = 0; i < BUF_CACHE_HASH_SIZE; i++) {
  p_fs->buf_cache_hash_list[i].drv = -1;
  p_fs->buf_cache_hash_list[i].sec = ~0;
  p_fs->buf_cache_hash_list[i].hash_next =
   &p_fs->buf_cache_hash_list[i];
  p_fs->buf_cache_hash_list[i].hash_prev =
   &p_fs->buf_cache_hash_list[i];
 }

 for (i = 0; i < BUF_CACHE_SIZE; i++)
  buf_cache_insert_hash(sb, &p_fs->buf_cache_array[i]);
}
