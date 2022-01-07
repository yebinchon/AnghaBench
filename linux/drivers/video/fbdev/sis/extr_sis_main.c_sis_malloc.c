
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sis_video_info* vinfo; } ;
struct sis_video_info {TYPE_1__ sisfb_heap; } ;
struct sis_memreq {scalar_t__ size; scalar_t__ offset; } ;


 int sis_int_malloc (struct sis_video_info*,struct sis_memreq*) ;
 TYPE_1__* sisfb_heap ;

void
sis_malloc(struct sis_memreq *req)
{
 struct sis_video_info *ivideo = sisfb_heap->vinfo;

 if(&ivideo->sisfb_heap == sisfb_heap)
  sis_int_malloc(ivideo, req);
 else
  req->offset = req->size = 0;
}
