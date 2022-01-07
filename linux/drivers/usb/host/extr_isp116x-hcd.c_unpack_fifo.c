
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptd {void* faddr; void* len; void* mps; void* count; } ;
struct isp116x_ep {int data; int length; struct isp116x_ep* active; struct ptd ptd; } ;
struct isp116x {scalar_t__ atl_last_dir; int atl_buflen; int atl_bufshrt; struct isp116x_ep* atl_active; } ;


 scalar_t__ ALIGN (int ,int) ;
 int BUG_ON (int) ;
 int HCATLPORT ;
 int HCXFERCTR ;
 int HCuPINT ;
 int HCuPINT_AIIEOT ;
 scalar_t__ PTD_DIR_IN ;
 int dump_ptd (struct ptd*) ;
 int dump_ptd_in_data (struct ptd*,int ) ;
 void* isp116x_read_data16 (struct isp116x*) ;
 int isp116x_write_addr (struct isp116x*,int ) ;
 int isp116x_write_reg16 (struct isp116x*,int ,int) ;
 int read_ptddata_from_fifo (struct isp116x*,int ,int ) ;

__attribute__((used)) static void unpack_fifo(struct isp116x *isp116x)
{
 struct isp116x_ep *ep;
 struct ptd *ptd;
 int buflen = isp116x->atl_last_dir == PTD_DIR_IN
     ? isp116x->atl_buflen : isp116x->atl_bufshrt;

 isp116x_write_reg16(isp116x, HCuPINT, HCuPINT_AIIEOT);
 isp116x_write_reg16(isp116x, HCXFERCTR, buflen);
 isp116x_write_addr(isp116x, HCATLPORT);
 for (ep = isp116x->atl_active; ep; ep = ep->active) {
  ptd = &ep->ptd;
  ptd->count = isp116x_read_data16(isp116x);
  ptd->mps = isp116x_read_data16(isp116x);
  ptd->len = isp116x_read_data16(isp116x);
  ptd->faddr = isp116x_read_data16(isp116x);
  buflen -= sizeof(struct ptd);

  if (ep->active || (isp116x->atl_last_dir == PTD_DIR_IN)) {
   read_ptddata_from_fifo(isp116x, ep->data, ep->length);
   buflen -= ALIGN(ep->length, 4);
  }
  dump_ptd(ptd);
  dump_ptd_in_data(ptd, ep->data);
 }
 BUG_ON(buflen);
}
