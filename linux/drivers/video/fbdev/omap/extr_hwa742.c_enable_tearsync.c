
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int pix_tx_time; int line_upd_time; TYPE_1__* extif; scalar_t__ vsync_only; } ;
struct TYPE_3__ {int (* enable_tearsync ) (int,int) ;} ;


 int HWA742_NDP_CTRL ;
 TYPE_2__ hwa742 ;
 int hwa742_read_reg (int ) ;
 int hwa742_write_reg (int ,int) ;
 scalar_t__ likely (int) ;
 int stub1 (int,int) ;
 int stub2 (int,int) ;
 int stub3 (int,int) ;
 int stub4 (int,int) ;

__attribute__((used)) static void enable_tearsync(int y, int width, int height, int screen_height,
       int force_vsync)
{
 u8 b;

 b = hwa742_read_reg(HWA742_NDP_CTRL);
 b |= 1 << 2;
 hwa742_write_reg(HWA742_NDP_CTRL, b);

 if (likely(hwa742.vsync_only || force_vsync)) {
  hwa742.extif->enable_tearsync(1, 0);
  return;
 }

 if (width * hwa742.pix_tx_time < hwa742.line_upd_time) {
  hwa742.extif->enable_tearsync(1, 0);
  return;
 }

 if ((width * hwa742.pix_tx_time / 1000) * height <
     (y + height) * (hwa742.line_upd_time / 1000)) {
  hwa742.extif->enable_tearsync(1, 0);
  return;
 }

 hwa742.extif->enable_tearsync(1, y + 1);
}
