
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;
struct uni_pagedir {unsigned char** inverse_translations; } ;


 int E_TABSZ ;
 int GFP_KERNEL ;
 int MAX_GLYPH ;
 int conv_uni_to_pc (struct vc_data*,unsigned short) ;
 unsigned char* kmalloc (int,int ) ;
 int memset (unsigned char*,int ,int) ;
 unsigned short** translations ;

__attribute__((used)) static void set_inverse_transl(struct vc_data *conp, struct uni_pagedir *p, int i)
{
 int j, glyph;
 unsigned short *t = translations[i];
 unsigned char *q;

 if (!p) return;
 q = p->inverse_translations[i];

 if (!q) {
  q = p->inverse_translations[i] = kmalloc(MAX_GLYPH, GFP_KERNEL);
  if (!q) return;
 }
 memset(q, 0, MAX_GLYPH);

 for (j = 0; j < E_TABSZ; j++) {
  glyph = conv_uni_to_pc(conp, t[j]);
  if (glyph >= 0 && glyph < MAX_GLYPH && q[glyph] < 32) {

     q[glyph] = j;
  }
 }
}
