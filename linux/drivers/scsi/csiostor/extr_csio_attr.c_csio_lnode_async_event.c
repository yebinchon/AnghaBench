
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_lnode {int dummy; } ;
typedef enum csio_ln_fc_evt { ____Placeholder_csio_ln_fc_evt } csio_ln_fc_evt ;






 int csio_fchost_attr_init (struct csio_lnode*) ;
 int csio_is_npiv_ln (struct csio_lnode*) ;
 int csio_vport_set_state (struct csio_lnode*) ;

void
csio_lnode_async_event(struct csio_lnode *ln, enum csio_ln_fc_evt fc_evt)
{
 switch (fc_evt) {
 case 128:
  break;
 case 129:


  if (csio_is_npiv_ln(ln))
   csio_vport_set_state(ln);

  break;
 case 130:


  if (csio_is_npiv_ln(ln))
   csio_vport_set_state(ln);

  break;
 case 131:
  csio_fchost_attr_init(ln);
  break;
 default:
  break;
 }
}
