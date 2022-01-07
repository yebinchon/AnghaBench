
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {struct sh_mobile_lcdc_chan* ch; } ;
struct sh_mobile_lcdc_chan {int frame_end; int vsync_completion; int frame_end_wait; int enabled; } ;
typedef int irqreturn_t ;


 int ARRAY_SIZE (struct sh_mobile_lcdc_chan*) ;
 int IRQ_HANDLED ;
 unsigned long LDINTR_FS ;
 unsigned long LDINTR_STATUS_MASK ;
 unsigned long LDINTR_VEE ;
 unsigned long LDINTR_VES ;
 int LDSR_MSS ;
 int _LDINTR ;
 int _LDSR ;
 int complete (int *) ;
 int lcdc_chan_is_sublcd (struct sh_mobile_lcdc_chan*) ;
 int lcdc_read (struct sh_mobile_lcdc_priv*,int ) ;
 int lcdc_write (struct sh_mobile_lcdc_priv*,int ,unsigned long) ;
 int sh_mobile_lcdc_clk_off (struct sh_mobile_lcdc_priv*) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t sh_mobile_lcdc_irq(int irq, void *data)
{
 struct sh_mobile_lcdc_priv *priv = data;
 struct sh_mobile_lcdc_chan *ch;
 unsigned long ldintr;
 int is_sub;
 int k;


 ldintr = lcdc_read(priv, _LDINTR);
 lcdc_write(priv, _LDINTR, (ldintr ^ LDINTR_STATUS_MASK) & ~LDINTR_VEE);


 is_sub = (lcdc_read(priv, _LDSR) & LDSR_MSS) ? 1 : 0;


 for (k = 0; k < ARRAY_SIZE(priv->ch); k++) {
  ch = &priv->ch[k];

  if (!ch->enabled)
   continue;


  if (ldintr & LDINTR_FS) {
   if (is_sub == lcdc_chan_is_sublcd(ch)) {
    ch->frame_end = 1;
    wake_up(&ch->frame_end_wait);

    sh_mobile_lcdc_clk_off(priv);
   }
  }


  if (ldintr & LDINTR_VES)
   complete(&ch->vsync_completion);
 }

 return IRQ_HANDLED;
}
