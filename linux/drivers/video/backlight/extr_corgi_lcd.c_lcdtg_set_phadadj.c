
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct corgi_lcd {int dummy; } ;
struct TYPE_2__ {int phadadj; } ;




 int DEFAULT_PHAD_QVGA ;
 int PHACTRL_ADRS ;
 int PHACTRL_PHASE_MANUAL ;
 int corgi_ssp_lcdtg_send (struct corgi_lcd*,int ,int) ;
 TYPE_1__ sharpsl_param ;

__attribute__((used)) static void lcdtg_set_phadadj(struct corgi_lcd *lcd, int mode)
{
 int adj;

 switch (mode) {
 case 128:

  adj = sharpsl_param.phadadj;
  adj = (adj < 0) ? PHACTRL_PHASE_MANUAL :
      PHACTRL_PHASE_MANUAL | ((adj & 0xf) << 1);
  break;
 case 129:
 default:

  adj = (DEFAULT_PHAD_QVGA << 1) | PHACTRL_PHASE_MANUAL;
  break;
 }

 corgi_ssp_lcdtg_send(lcd, PHACTRL_ADRS, adj);
}
