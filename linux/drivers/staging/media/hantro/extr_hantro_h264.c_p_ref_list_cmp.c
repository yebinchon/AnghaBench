
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct v4l2_h264_dpb_entry {int flags; int frame_num; int pic_num; } ;
struct hantro_h264_reflist_builder {struct v4l2_h264_dpb_entry* dpb; } ;


 int V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM ;

__attribute__((used)) static int p_ref_list_cmp(const void *ptra, const void *ptrb, const void *data)
{
 const struct hantro_h264_reflist_builder *builder = data;
 const struct v4l2_h264_dpb_entry *a, *b;
 u8 idxa, idxb;

 idxa = *((u8 *)ptra);
 idxb = *((u8 *)ptrb);
 a = &builder->dpb[idxa];
 b = &builder->dpb[idxb];

 if ((a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM) !=
     (b->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)) {

  if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
   return -1;
  else
   return 1;
 }





 if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
  return b->frame_num - a->frame_num;

 return a->pic_num - b->pic_num;
}
