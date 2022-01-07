
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sis_video_info {scalar_t__ sisfb_id; int sisfb_heap; scalar_t__ havenoheap; } ;
struct SIS_OH {int dummy; } ;


 int DPRINTK (char*,unsigned int) ;
 scalar_t__ SISFB_ID ;
 struct SIS_OH* sisfb_poh_free (int *,scalar_t__) ;

__attribute__((used)) static void
sis_int_free(struct sis_video_info *ivideo, u32 base)
{
 struct SIS_OH *poh;

 if((!ivideo) || (ivideo->sisfb_id != SISFB_ID) || (ivideo->havenoheap))
  return;

 poh = sisfb_poh_free(&ivideo->sisfb_heap, base);

 if(poh == ((void*)0)) {
  DPRINTK("sisfb: sisfb_poh_free() failed at base 0x%x\n",
   (unsigned int) base);
 }
}
