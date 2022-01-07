
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blk_cleanup_queue (void*) ;

__attribute__((used)) static void nd_blk_release_queue(void *q)
{
 blk_cleanup_queue(q);
}
