
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pch_udc_stp_dma_desc {int status; int request; scalar_t__ reserved; } ;


 int PCH_UDC_BS_HST_RDY ;
 int memset (int *,int,int) ;

__attribute__((used)) static void pch_udc_init_setup_buff(struct pch_udc_stp_dma_desc *td_stp)
{
 static u32 pky_marker;

 if (!td_stp)
  return;
 td_stp->reserved = ++pky_marker;
 memset(&td_stp->request, 0xFF, sizeof td_stp->request);
 td_stp->status = PCH_UDC_BS_HST_RDY;
}
