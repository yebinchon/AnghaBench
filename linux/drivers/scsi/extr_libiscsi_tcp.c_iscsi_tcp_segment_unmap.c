
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_segment {int * data; int * sg_mapped; int sg; scalar_t__ atomic_mapped; } ;


 int kunmap (int ) ;
 int kunmap_atomic (int *) ;
 int sg_page (int ) ;

void iscsi_tcp_segment_unmap(struct iscsi_segment *segment)
{
 if (segment->sg_mapped) {
  if (segment->atomic_mapped)
   kunmap_atomic(segment->sg_mapped);
  else
   kunmap(sg_page(segment->sg));
  segment->sg_mapped = ((void*)0);
  segment->data = ((void*)0);
 }
}
