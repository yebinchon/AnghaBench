
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct v4l2_h264_dpb_entry {int flags; int pic_num; } ;
struct hantro_h264_reflist_builder {scalar_t__* pocs; scalar_t__ curpoc; struct v4l2_h264_dpb_entry* dpb; } ;
typedef scalar_t__ s32 ;


 int POC_CMP (scalar_t__,scalar_t__) ;
 int V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM ;

__attribute__((used)) static int b1_ref_list_cmp(const void *ptra, const void *ptrb, const void *data)
{
 const struct hantro_h264_reflist_builder *builder = data;
 const struct v4l2_h264_dpb_entry *a, *b;
 s32 poca, pocb;
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


 if (a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
  return a->pic_num - b->pic_num;

 poca = builder->pocs[idxa];
 pocb = builder->pocs[idxb];






 if ((poca < builder->curpoc) != (pocb < builder->curpoc))
  return POC_CMP(pocb, poca);
 else if (poca < builder->curpoc)
  return POC_CMP(pocb, poca);

 return POC_CMP(poca, pocb);
}
