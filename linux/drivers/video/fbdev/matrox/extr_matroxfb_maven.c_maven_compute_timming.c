
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct my_timming {unsigned int HTotal; unsigned int VTotal; unsigned int HSyncEnd; unsigned int HSyncStart; unsigned int delay; unsigned int VSyncEnd; unsigned int VSyncStart; int HDisplay; unsigned int VDisplay; int pixclock; } ;
struct mavenregs {unsigned int hcorr; unsigned int* regs; int htotal; int vlines; int mode; } ;
struct maven_data {scalar_t__ version; struct matrox_fb_info* primary_head; } ;
struct matrox_fb_info {TYPE_1__* outputs; } ;
struct TYPE_2__ {int mode; } ;


 int DAC1064_calcclock (int ,int,unsigned int*,unsigned int*,unsigned int*) ;
 int EINVAL ;
 int MATROXFB_OUTPUT_MODE_MONITOR ;
 scalar_t__ MGATVO_B ;
 int do_div (int,int) ;
 scalar_t__ maven_find_exact_clocks (unsigned int,unsigned int,struct mavenregs*) ;
 int maven_init_TVdata (struct maven_data*,struct mavenregs*) ;

__attribute__((used)) static inline int maven_compute_timming(struct maven_data* md,
  struct my_timming* mt,
  struct mavenregs* m) {
 unsigned int tmpi;
 unsigned int a, bv, c;
 struct matrox_fb_info *minfo = md->primary_head;

 m->mode = minfo->outputs[1].mode;
 if (m->mode != MATROXFB_OUTPUT_MODE_MONITOR) {
  unsigned int lmargin;
  unsigned int umargin;
  unsigned int vslen;
  unsigned int hcrt;
  unsigned int slen;

  maven_init_TVdata(md, m);

  if (maven_find_exact_clocks(mt->HTotal, mt->VTotal, m) == 0)
   return -EINVAL;

  lmargin = mt->HTotal - mt->HSyncEnd;
  slen = mt->HSyncEnd - mt->HSyncStart;
  hcrt = mt->HTotal - slen - mt->delay;
  umargin = mt->VTotal - mt->VSyncEnd;
  vslen = mt->VSyncEnd - mt->VSyncStart;

  if (m->hcorr < mt->HTotal)
   hcrt += m->hcorr;
  if (hcrt > mt->HTotal)
   hcrt -= mt->HTotal;
  if (hcrt + 2 > mt->HTotal)
   hcrt = 0;



  m->regs[0x96] = m->hcorr;
  m->regs[0x97] = m->hcorr >> 8;

  m->regs[0x98] = 0x00; m->regs[0x99] = 0x00;

  m->regs[0x9A] = lmargin;
  m->regs[0x9B] = lmargin >> 8;

  m->regs[0x9C] = 0x04;
  m->regs[0x9D] = 0x00;

  m->regs[0xA0] = m->htotal;
  m->regs[0xA1] = m->htotal >> 8;

  m->regs[0xA2] = mt->VTotal - mt->VSyncStart - 1;
  m->regs[0xA3] = (mt->VTotal - mt->VSyncStart - 1) >> 8;

  if (md->version == MGATVO_B) {
   m->regs[0xA4] = 0x04;
   m->regs[0xA5] = 0x00;
  } else {
   m->regs[0xA4] = 0x01;
   m->regs[0xA5] = 0x00;
  }

  m->regs[0xA6] = 0x00;
  m->regs[0xA7] = 0x00;

  m->regs[0xA8] = mt->VTotal - 1;
  m->regs[0xA9] = (mt->VTotal - 1) >> 8;

  m->regs[0xAA] = hcrt;
  m->regs[0xAB] = hcrt >> 8;

  m->regs[0xAC] = mt->VTotal - 2;
  m->regs[0xAD] = (mt->VTotal - 2) >> 8;

  m->regs[0xAE] = 0x01;
  m->regs[0xAF] = 0x00;
  {
   int hdec;
   int hlen;
   unsigned int ibmin = 4 + lmargin + mt->HDisplay;
   unsigned int ib;
   int i;



   if (mt->HTotal)
    hdec = 94208 / (mt->HTotal);
   else
    hdec = 0x81;
   if (hdec > 0x81)
    hdec = 0x81;
   if (hdec < 0x41)
    hdec = 0x41;
   hdec--;
   hlen = 98304 - 128 - ((lmargin + mt->HDisplay - 8) * hdec);
   if (hlen < 0)
    hlen = 0;
   hlen = hlen >> 8;
   if (hlen > 0xFF)
    hlen = 0xFF;
   i = 1;
   do {
    ib = ((0x3C0000 * i - 0x8000)/ hdec + 0x05E7) >> 8;
    i++;
   } while (ib < ibmin);
   if (ib >= m->htotal + 2) {
    ib = ibmin;
   }

   m->regs[0x90] = hdec;
   m->regs[0xC2] = hlen;

   m->regs[0x9E] = ib;
   m->regs[0x9F] = ib >> 8;
  }
  {
   int vdec;
   int vlen;


   if (mt->VTotal) {

    u64 f1;
    u32 a;
    u32 b;

    a = m->vlines * (m->htotal + 2);
    b = (mt->VTotal - 1) * (m->htotal + 2) + m->hcorr + 2;

    f1 = ((u64)a) << 15;
    do_div(f1, b);
    vdec = f1;



   } else
    vdec = 0x8000;
   if (vdec > 0x8000)
    vdec = 0x8000;
   vlen = (vslen + umargin + mt->VDisplay) * vdec;
   vlen = (vlen >> 16) - 146;
   if (vlen < 0)
    vlen = 0;
   if (vlen > 0xFF)
    vlen = 0xFF;
   vdec--;
   m->regs[0x91] = vdec;
   m->regs[0x92] = vdec >> 8;
   m->regs[0xBE] = vlen;
  }
  m->regs[0xB0] = 0x08;
  return 0;
 }

 DAC1064_calcclock(mt->pixclock, 450000, &a, &bv, &c);
 m->regs[0x80] = a;
 m->regs[0x81] = bv;
 m->regs[0x82] = c | 0x80;

 m->regs[0xB3] = 0x01;
 m->regs[0x94] = 0xB2;


 m->regs[0x96] = mt->HTotal;
 m->regs[0x97] = mt->HTotal >> 8;

 m->regs[0x98] = 0x00;
 m->regs[0x99] = 0x00;

 tmpi = mt->HSyncEnd - mt->HSyncStart;
 m->regs[0x9A] = tmpi;
 m->regs[0x9B] = tmpi >> 8;

 tmpi = mt->HTotal - mt->HSyncStart;
 m->regs[0x9C] = tmpi;
 m->regs[0x9D] = tmpi >> 8;

 tmpi += mt->HDisplay;
 m->regs[0x9E] = tmpi;
 m->regs[0x9F] = tmpi >> 8;

 tmpi = mt->HTotal + 1;
 m->regs[0xA0] = tmpi;
 m->regs[0xA1] = tmpi >> 8;

 tmpi = mt->VSyncEnd - mt->VSyncStart - 1;
 m->regs[0xA2] = tmpi;
 m->regs[0xA3] = tmpi >> 8;

 tmpi = mt->VTotal - mt->VSyncStart;
 m->regs[0xA4] = tmpi;
 m->regs[0xA5] = tmpi >> 8;

 tmpi = mt->VTotal - 1;
 m->regs[0xA6] = tmpi;
 m->regs[0xA7] = tmpi >> 8;

 m->regs[0xA8] = tmpi;
 m->regs[0xA9] = tmpi >> 8;

 tmpi = mt->HTotal - mt->delay;
 m->regs[0xAA] = tmpi;
 m->regs[0xAB] = tmpi >> 8;

 tmpi = mt->VTotal - 2;
 m->regs[0xAC] = tmpi;
 m->regs[0xAD] = tmpi >> 8;

 m->regs[0xAE] = 0x00;
 m->regs[0xAF] = 0x00;

 m->regs[0xB0] = 0x03;
 m->regs[0xB1] = 0xA0;
 m->regs[0x8C] = 0x20;
 m->regs[0x8D] = 0x04;
 m->regs[0xB9] = 0x1A;
 m->regs[0xBF] = 0x22;

 return 0;
}
