
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vb2_queue {int dummy; } ;
struct vb2_buffer {int dummy; } ;
typedef int dma_addr_t ;


 int vb2_dma_contig_plane_dma_addr (struct vb2_buffer*,int ) ;
 int vb2_find_timestamp (struct vb2_queue*,int ,int ) ;
 struct vb2_buffer* vb2_get_buffer (struct vb2_queue*,int) ;

dma_addr_t hantro_get_ref(struct vb2_queue *q, u64 ts)
{
 struct vb2_buffer *buf;
 int index;

 index = vb2_find_timestamp(q, ts, 0);
 if (index < 0)
  return 0;
 buf = vb2_get_buffer(q, index);
 return vb2_dma_contig_plane_dma_addr(buf, 0);
}
