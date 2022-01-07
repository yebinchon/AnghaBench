
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_fix_screeninfo {int type; int visual; int type_aux; int line_length; scalar_t__ ywrapstep; scalar_t__ ypanstep; scalar_t__ xpanstep; int smem_len; int smem_start; int id; } ;
struct atafb_par {int next_line; } ;





 int FB_VISUAL_MONO01 ;
 int FB_VISUAL_MONO10 ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_STATIC_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 int PAGE_ALIGN (int ) ;
 int external_addr ;
 int external_depth ;
 int external_len ;
 int external_pmode ;
 scalar_t__ external_vgaiobase ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int ext_encode_fix(struct fb_fix_screeninfo *fix, struct atafb_par *par)
{
 strcpy(fix->id, "Unknown Extern");
 fix->smem_start = external_addr;
 fix->smem_len = PAGE_ALIGN(external_len);
 if (external_depth == 1) {
  fix->type = 129;


  fix->visual =
   (external_pmode == 130 ||
    external_pmode == 129) ?
    FB_VISUAL_MONO10 : FB_VISUAL_MONO01;
 } else {

  int visual = external_vgaiobase ?
      FB_VISUAL_PSEUDOCOLOR :
      FB_VISUAL_STATIC_PSEUDOCOLOR;
  switch (external_pmode) {
  case -1:
   fix->type = 129;
   fix->visual = FB_VISUAL_TRUECOLOR;
   break;
  case 129:
   fix->type = 129;
   fix->visual = visual;
   break;
  case 128:
   fix->type = 128;
   fix->visual = visual;
   break;
  case 130:
   fix->type = 130;
   fix->type_aux = 2;
   fix->visual = visual;
   break;
  }
 }
 fix->xpanstep = 0;
 fix->ypanstep = 0;
 fix->ywrapstep = 0;
 fix->line_length = par->next_line;
 return 0;
}
