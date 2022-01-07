
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int dummy; } ;


 int VertStretch ;
 int nativex ;
 int output (char*,int,int) ;
 int read3CE (struct tridentfb_par*,int ) ;

__attribute__((used)) static int get_nativex(struct tridentfb_par *par)
{
 int x, y, tmp;

 if (nativex)
  return nativex;

 tmp = (read3CE(par, VertStretch) >> 4) & 3;

 switch (tmp) {
 case 0:
  x = 1280; y = 1024;
  break;
 case 2:
  x = 1024; y = 768;
  break;
 case 3:
  x = 800; y = 600;
  break;
 case 1:
 default:
  x = 640; y = 480;
  break;
 }

 output("%dx%d flat panel found\n", x, y);
 return x;
}
