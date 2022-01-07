
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int dummy; } ;


 int CyberEnhance ;
 int read3CE (struct tridentfb_par*,int ) ;
 int write3CE (struct tridentfb_par*,int ,int) ;

__attribute__((used)) static void set_number_of_lines(struct tridentfb_par *par, int lines)
{
 int tmp = read3CE(par, CyberEnhance) & 0x8F;
 if (lines > 1024)
  tmp |= 0x50;
 else if (lines > 768)
  tmp |= 0x30;
 else if (lines > 600)
  tmp |= 0x20;
 else if (lines > 480)
  tmp |= 0x10;
 write3CE(par, CyberEnhance, tmp);
}
