
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sis_video_info {scalar_t__ sisfb_id; scalar_t__ video_vbase; int sisfb_heap; int havenoheap; } ;
struct sis_memreq {scalar_t__ size; scalar_t__ offset; } ;
struct SIS_OH {scalar_t__ offset; scalar_t__ size; } ;


 int DPRINTK (char*,...) ;
 scalar_t__ SISFB_ID ;
 struct SIS_OH* sisfb_poh_allocate (int *,int ) ;

__attribute__((used)) static void
sis_int_malloc(struct sis_video_info *ivideo, struct sis_memreq *req)
{
 struct SIS_OH *poh = ((void*)0);

 if((ivideo) && (ivideo->sisfb_id == SISFB_ID) && (!ivideo->havenoheap))
  poh = sisfb_poh_allocate(&ivideo->sisfb_heap, (u32)req->size);

 if(poh == ((void*)0)) {
  req->offset = req->size = 0;
  DPRINTK("sisfb: Video RAM allocation failed\n");
 } else {
  req->offset = poh->offset;
  req->size = poh->size;
  DPRINTK("sisfb: Video RAM allocation succeeded: 0x%lx\n",
   (poh->offset + ivideo->video_vbase));
 }
}
