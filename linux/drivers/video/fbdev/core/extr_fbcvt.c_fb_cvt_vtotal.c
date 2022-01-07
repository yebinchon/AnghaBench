
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_cvt_data {int yres; int interlace; int v_margin; } ;


 scalar_t__ fb_cvt_vbi_lines (struct fb_cvt_data*) ;

__attribute__((used)) static u32 fb_cvt_vtotal(struct fb_cvt_data *cvt)
{
 u32 vtotal = cvt->yres/cvt->interlace;

 vtotal += 2 * cvt->v_margin + cvt->interlace/2 + fb_cvt_vbi_lines(cvt);
 vtotal |= cvt->interlace/2;

 return vtotal;
}
