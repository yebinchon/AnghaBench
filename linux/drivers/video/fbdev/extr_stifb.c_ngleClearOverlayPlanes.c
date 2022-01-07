
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int xres; int yres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct stifb_info {TYPE_2__ info; } ;


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
 int NGLE_LOCK (struct stifb_info*) ;
 int NGLE_QUICK_SET_DST_BM_ACCESS (struct stifb_info*,int ) ;
 int NGLE_QUICK_SET_IMAGE_BITMAP_OP (struct stifb_info*,int ) ;
 int NGLE_REALLY_SET_IMAGE_FG_COLOR (struct stifb_info*,int) ;
 int NGLE_REALLY_SET_IMAGE_PLANEMASK (struct stifb_info*,int) ;
 int NGLE_SET_DSTXY (struct stifb_info*,int) ;
 int NGLE_SET_TRANSFERDATA (struct stifb_info*,int) ;
 int NGLE_UNLOCK (struct stifb_info*) ;
 int Otc04 ;
 int Ots08 ;
 int RopSrc ;
 int SET_LENXY_START_RECFILL (struct stifb_info*,int) ;
 int StaticReg (int ) ;

__attribute__((used)) static void
ngleClearOverlayPlanes(struct stifb_info *fb, int mask, int data)
{
 int nFreeFifoSlots = 0;
 u32 packed_dst;
 u32 packed_len;

 NGLE_LOCK(fb);


 GET_FIFO_SLOTS(fb, nFreeFifoSlots, 8);
 NGLE_QUICK_SET_DST_BM_ACCESS(fb,
         BA(IndexedDcd, Otc04, Ots08, AddrLong,
     BAJustPoint(0), BINovly, BAIndexBase(0)));

        NGLE_SET_TRANSFERDATA(fb, 0xffffffff);

        NGLE_REALLY_SET_IMAGE_FG_COLOR(fb, data);
        NGLE_REALLY_SET_IMAGE_PLANEMASK(fb, mask);

        packed_dst = 0;
        packed_len = (fb->info.var.xres << 16) | fb->info.var.yres;
        NGLE_SET_DSTXY(fb, packed_dst);


 NGLE_QUICK_SET_IMAGE_BITMAP_OP(fb,
           IBOvals(RopSrc, MaskAddrOffset(0),
            BitmapExtent08, StaticReg(0),
            DataDynamic, MaskOtc, BGx(0), FGx(0)));

        SET_LENXY_START_RECFILL(fb, packed_len);

 NGLE_UNLOCK(fb);
}
