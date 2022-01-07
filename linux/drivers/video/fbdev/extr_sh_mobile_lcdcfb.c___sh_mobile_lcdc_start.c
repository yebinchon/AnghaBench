
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {unsigned long lddckr; int started; struct sh_mobile_lcdc_chan* ch; } ;
struct sh_mobile_lcdc_chan {unsigned long enabled; int colorspace; unsigned long line_size; unsigned long base_addr_y; unsigned long base_addr_c; int ldmt1r_value; TYPE_3__* format; TYPE_2__* cfg; } ;
struct TYPE_6__ {unsigned long lddfr; int fourcc; scalar_t__ yuv; } ;
struct TYPE_4__ {scalar_t__ deferred_io_msec; } ;
struct TYPE_5__ {int clock_divider; TYPE_1__ sys_bus_cfg; } ;


 int ARRAY_SIZE (struct sh_mobile_lcdc_chan*) ;
 unsigned long LDCNT1R_DE ;
 int LDDCKPAT1R ;
 int LDDCKPAT2R ;
 int LDDCKR_MOSEL ;
 unsigned long LDDDSR_BS ;
 unsigned long LDDDSR_LS ;
 unsigned long LDDDSR_WS ;
 int LDDFR ;
 unsigned long LDDFR_CF0 ;
 unsigned long LDDFR_CF1 ;
 unsigned long LDINTR_FE ;
 int LDMLSR ;
 int LDMT1R_IFM ;
 int LDPMR ;
 int LDSA1R ;
 int LDSA2R ;
 int LDSM1R ;
 unsigned long LDSM1R_OS ;
 int _LDCNT1R ;
 int _LDCNT2R ;
 int _LDDCKR ;
 int _LDDCKSTPR ;
 int _LDDDSR ;
 int _LDINTR ;
 scalar_t__ lcdc_chan_is_sublcd (struct sh_mobile_lcdc_chan*) ;
 int lcdc_wait_bit (struct sh_mobile_lcdc_priv*,int ,int ,int ) ;
 int lcdc_write (struct sh_mobile_lcdc_priv*,int ,unsigned long) ;
 int lcdc_write_chan (struct sh_mobile_lcdc_chan*,int ,unsigned long) ;
 int sh_mobile_lcdc_geometry (struct sh_mobile_lcdc_chan*) ;
 int sh_mobile_lcdc_start_stop (struct sh_mobile_lcdc_priv*,int) ;

__attribute__((used)) static void __sh_mobile_lcdc_start(struct sh_mobile_lcdc_priv *priv)
{
 struct sh_mobile_lcdc_chan *ch;
 unsigned long tmp;
 int k, m;




 lcdc_write(priv, _LDCNT2R, priv->ch[0].enabled | priv->ch[1].enabled);


 sh_mobile_lcdc_start_stop(priv, 0);
 lcdc_write(priv, _LDINTR, 0);


 tmp = priv->lddckr;
 for (k = 0; k < ARRAY_SIZE(priv->ch); k++) {
  ch = &priv->ch[k];
  if (!ch->enabled)
   continue;


  lcdc_write_chan(ch, LDPMR, 0);

  m = ch->cfg->clock_divider;
  if (!m)
   continue;




  lcdc_write_chan(ch, LDDCKPAT1R, 0);
  lcdc_write_chan(ch, LDDCKPAT2R, (1 << (m/2)) - 1);

  if (m == 1)
   m = LDDCKR_MOSEL;
  tmp |= m << (lcdc_chan_is_sublcd(ch) ? 8 : 0);
 }

 lcdc_write(priv, _LDDCKR, tmp);
 lcdc_write(priv, _LDDCKSTPR, 0);
 lcdc_wait_bit(priv, _LDDCKSTPR, ~0, 0);


 for (k = 0; k < ARRAY_SIZE(priv->ch); k++) {
  ch = &priv->ch[k];
  if (!ch->enabled)
   continue;

  sh_mobile_lcdc_geometry(ch);

  tmp = ch->format->lddfr;

  if (ch->format->yuv) {
   switch (ch->colorspace) {
   case 137:
    tmp |= LDDFR_CF1;
    break;
   case 138:
    tmp |= LDDFR_CF0;
    break;
   }
  }

  lcdc_write_chan(ch, LDDFR, tmp);
  lcdc_write_chan(ch, LDMLSR, ch->line_size);
  lcdc_write_chan(ch, LDSA1R, ch->base_addr_y);
  if (ch->format->yuv)
   lcdc_write_chan(ch, LDSA2R, ch->base_addr_c);





  if (ch->ldmt1r_value & LDMT1R_IFM &&
      ch->cfg->sys_bus_cfg.deferred_io_msec) {
   lcdc_write_chan(ch, LDSM1R, LDSM1R_OS);
   lcdc_write(priv, _LDINTR, LDINTR_FE);
  } else {
   lcdc_write_chan(ch, LDSM1R, 0);
  }
 }


 switch (priv->ch[0].format->fourcc) {
 case 128:
 case 132:
 case 129:
 case 130:
  tmp = LDDDSR_LS | LDDDSR_WS;
  break;
 case 136:
 case 134:
 case 133:
 case 131:
  tmp = LDDDSR_LS | LDDDSR_WS | LDDDSR_BS;
  break;
 case 135:
 default:
  tmp = LDDDSR_LS;
  break;
 }
 lcdc_write(priv, _LDDDSR, tmp);


 lcdc_write(priv, _LDCNT1R, LDCNT1R_DE);
 sh_mobile_lcdc_start_stop(priv, 1);
 priv->started = 1;
}
