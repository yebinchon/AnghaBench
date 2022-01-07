
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rza1_port {int id; } ;
struct rza1_pinctrl {struct rza1_port* ports; } ;
struct rza1_mux_conf {size_t port; unsigned int pin; int mux_func; int mux_flags; } ;


 int MUX_FLAGS_BIDIR ;
 int MUX_FLAGS_SWIO_INPUT ;
 int MUX_FLAGS_SWIO_OUTPUT ;
 int MUX_FUNC_PFCEA_MASK ;
 int MUX_FUNC_PFCE_MASK ;
 int MUX_FUNC_PFC_MASK ;
 int RZA1_PBDC_REG ;
 int RZA1_PFCEA_REG ;
 int RZA1_PFCE_REG ;
 int RZA1_PFC_REG ;
 int RZA1_PIPC_REG ;
 int RZA1_PMC_REG ;
 int RZA1_PM_REG ;
 int rza1_pin_reset (struct rza1_port*,unsigned int) ;
 int rza1_pinmux_get_flags (int ,unsigned int,int,struct rza1_pinctrl*) ;
 int rza1_set_bit (struct rza1_port*,int ,unsigned int,int) ;

__attribute__((used)) static int rza1_pin_mux_single(struct rza1_pinctrl *rza1_pctl,
          struct rza1_mux_conf *mux_conf)
{
 struct rza1_port *port = &rza1_pctl->ports[mux_conf->port];
 unsigned int pin = mux_conf->pin;
 u8 mux_func = mux_conf->mux_func;
 u8 mux_flags = mux_conf->mux_flags;
 u8 mux_flags_from_table;

 rza1_pin_reset(port, pin);


 mux_flags_from_table = rza1_pinmux_get_flags(port->id, pin, mux_func,
           rza1_pctl);
 if (mux_flags)
  mux_flags |= (mux_flags_from_table & MUX_FLAGS_BIDIR);
 else
  mux_flags = mux_flags_from_table;

 if (mux_flags & MUX_FLAGS_BIDIR)
  rza1_set_bit(port, RZA1_PBDC_REG, pin, 1);
 mux_func -= 1;
 rza1_set_bit(port, RZA1_PFC_REG, pin, mux_func & MUX_FUNC_PFC_MASK);
 rza1_set_bit(port, RZA1_PFCE_REG, pin, mux_func & MUX_FUNC_PFCE_MASK);
 rza1_set_bit(port, RZA1_PFCEA_REG, pin, mux_func & MUX_FUNC_PFCEA_MASK);







 if (mux_flags & (MUX_FLAGS_SWIO_INPUT | MUX_FLAGS_SWIO_OUTPUT))
  rza1_set_bit(port, RZA1_PM_REG, pin,
        mux_flags & MUX_FLAGS_SWIO_INPUT);
 else
  rza1_set_bit(port, RZA1_PIPC_REG, pin, 1);

 rza1_set_bit(port, RZA1_PMC_REG, pin, 1);

 return 0;
}
