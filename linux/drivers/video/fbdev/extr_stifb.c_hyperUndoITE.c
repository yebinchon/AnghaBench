
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stifb_info {int dummy; } ;


 int AddrLong ;
 int BA (int ,int ,int ,int ,int ,int ,int ) ;
 int BAIndexBase (int ) ;
 int BAJustPoint (int ) ;
 int BGx (int ) ;
 int BINovly ;
 int BitmapExtent08 ;
 int DataDynamic ;
 int FGx (int ) ;
 int GET_FIFO_SLOTS (struct stifb_info*,int,int) ;
 int IBOvals (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int IndexedDcd ;
 int MaskAddrOffset (int ) ;
 int MaskOtc ;
 int NGLE_BINC_SET_DSTADDR (struct stifb_info*,int ) ;
 int NGLE_BINC_SET_DSTMASK (struct stifb_info*,int) ;
 int NGLE_BINC_WRITE32 (struct stifb_info*,int ) ;
 int NGLE_LOCK (struct stifb_info*) ;
 int NGLE_LONG_FB_ADDRESS (int ,int,int ) ;
 int NGLE_QUICK_SET_DST_BM_ACCESS (struct stifb_info*,int ) ;
 int NGLE_QUICK_SET_IMAGE_BITMAP_OP (struct stifb_info*,int ) ;
 int NGLE_REALLY_SET_IMAGE_PLANEMASK (struct stifb_info*,int) ;
 int NGLE_UNLOCK (struct stifb_info*) ;
 int Otc04 ;
 int Ots08 ;
 int REG_32 ;
 int RopSrc ;
 int StaticReg (int ) ;
 int WRITE_WORD (int,struct stifb_info*,int ) ;

__attribute__((used)) static void hyperUndoITE(struct stifb_info *fb)
{
 int nFreeFifoSlots = 0;
 u32 fbAddr;

 NGLE_LOCK(fb);

 GET_FIFO_SLOTS(fb, nFreeFifoSlots, 1);
 WRITE_WORD(0xffffffff, fb, REG_32);




 GET_FIFO_SLOTS(fb, nFreeFifoSlots, 7);
 NGLE_QUICK_SET_DST_BM_ACCESS(fb,
  BA(IndexedDcd, Otc04, Ots08, AddrLong,
  BAJustPoint(0), BINovly, BAIndexBase(0)));
 NGLE_QUICK_SET_IMAGE_BITMAP_OP(fb,
  IBOvals(RopSrc, MaskAddrOffset(0),
  BitmapExtent08, StaticReg(0),
  DataDynamic, MaskOtc, BGx(0), FGx(0)));


 fbAddr = NGLE_LONG_FB_ADDRESS(0, 1532, 0);
 NGLE_BINC_SET_DSTADDR(fb, fbAddr);
 NGLE_REALLY_SET_IMAGE_PLANEMASK(fb, 0xffffff);
 NGLE_BINC_SET_DSTMASK(fb, 0xffffffff);


 NGLE_BINC_WRITE32(fb, 0);

 NGLE_UNLOCK(fb);
}
