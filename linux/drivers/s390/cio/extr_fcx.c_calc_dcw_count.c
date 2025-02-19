
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tccb {int * tca; } ;
struct dcw {int flags; scalar_t__ cd_count; scalar_t__ count; } ;


 scalar_t__ ALIGN (int,int) ;
 int DCW_FLAGS_CC ;
 size_t tca_size (struct tccb*) ;

__attribute__((used)) static u32 calc_dcw_count(struct tccb *tccb)
{
 int offset;
 struct dcw *dcw;
 u32 count = 0;
 size_t size;

 size = tca_size(tccb);
 for (offset = 0; offset < size;) {
  dcw = (struct dcw *) &tccb->tca[offset];
  count += dcw->count;
  if (!(dcw->flags & DCW_FLAGS_CC))
   break;
  offset += sizeof(struct dcw) + ALIGN((int) dcw->cd_count, 4);
 }
 return count;
}
