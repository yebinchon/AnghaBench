
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int DAC_XGENIODATA ;
 int matroxfb_DAC_in (struct matrox_fb_info*,int ) ;
 int matroxfb_DAC_lock_irqsave (unsigned long) ;
 int matroxfb_DAC_unlock_irqrestore (unsigned long) ;

__attribute__((used)) static int matroxfb_read_gpio(struct matrox_fb_info* minfo) {
 unsigned long flags;
 int v;

 matroxfb_DAC_lock_irqsave(flags);
 v = matroxfb_DAC_in(minfo, DAC_XGENIODATA);
 matroxfb_DAC_unlock_irqrestore(flags);
 return v;
}
