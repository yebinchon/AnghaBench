
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_mbus_framefmt {int width; int height; } ;
struct csi_state {TYPE_1__* csis_fmt; struct v4l2_mbus_framefmt format_mbus; } ;
struct TYPE_2__ {int fmt_reg; } ;


 int MIPI_CSIS_ISPCFG_FMT_MASK ;
 int MIPI_CSIS_ISPCONFIG_CH0 ;
 int MIPI_CSIS_ISPRESOL_CH0 ;
 int mipi_csis_read (struct csi_state*,int ) ;
 int mipi_csis_write (struct csi_state*,int ,int) ;

__attribute__((used)) static void __mipi_csis_set_format(struct csi_state *state)
{
 struct v4l2_mbus_framefmt *mf = &state->format_mbus;
 u32 val;


 val = mipi_csis_read(state, MIPI_CSIS_ISPCONFIG_CH0);
 val = (val & ~MIPI_CSIS_ISPCFG_FMT_MASK) | state->csis_fmt->fmt_reg;
 mipi_csis_write(state, MIPI_CSIS_ISPCONFIG_CH0, val);


 val = mf->width | (mf->height << 16);
 mipi_csis_write(state, MIPI_CSIS_ISPRESOL_CH0, val);
}
