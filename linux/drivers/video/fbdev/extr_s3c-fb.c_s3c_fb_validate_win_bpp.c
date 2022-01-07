
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int valid_bpp; } ;
struct s3c_fb_win {TYPE_1__ variant; } ;


 int VALID_BPP (unsigned int) ;

__attribute__((used)) static bool s3c_fb_validate_win_bpp(struct s3c_fb_win *win, unsigned int bpp)
{
 return win->variant.valid_bpp & VALID_BPP(bpp);
}
