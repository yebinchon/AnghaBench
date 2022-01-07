
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int flag; int vmode; int xres; int yres; int refresh; } ;


 int FB_MODE_IS_DETAILED ;
 int FB_MODE_IS_STANDARD ;
 int FB_MODE_IS_VESA ;
 int FB_VMODE_DOUBLE ;
 int FB_VMODE_INTERLACED ;
 scalar_t__ PAGE_SIZE ;
 int snprintf (char*,scalar_t__,char*,char,int,int,char,int ) ;

__attribute__((used)) static int mode_string(char *buf, unsigned int offset,
         const struct fb_videomode *mode)
{
 char m = 'U';
 char v = 'p';

 if (mode->flag & FB_MODE_IS_DETAILED)
  m = 'D';
 if (mode->flag & FB_MODE_IS_VESA)
  m = 'V';
 if (mode->flag & FB_MODE_IS_STANDARD)
  m = 'S';

 if (mode->vmode & FB_VMODE_INTERLACED)
  v = 'i';
 if (mode->vmode & FB_VMODE_DOUBLE)
  v = 'd';

 return snprintf(&buf[offset], PAGE_SIZE - offset, "%c:%dx%d%c-%d\n",
                 m, mode->xres, mode->yres, v, mode->refresh);
}
