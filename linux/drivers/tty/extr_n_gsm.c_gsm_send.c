
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gsm_mux {int encoding; int (* output ) (struct gsm_mux*,int*,int) ;} ;


 int EA ;
 int GSM0_SOF ;
 int GSM1_SOF ;
 int INIT_FCS ;
 int WARN_ON (int) ;
 int gsm_fcs_add_block (int ,int*,int) ;
 int gsm_print_packet (char*,int,int,int,int *,int ) ;
 int gsm_stuff_frame (int*,int*,int) ;
 int stub1 (struct gsm_mux*,int*,int) ;

__attribute__((used)) static void gsm_send(struct gsm_mux *gsm, int addr, int cr, int control)
{
 int len;
 u8 cbuf[10];
 u8 ibuf[3];

 switch (gsm->encoding) {
 case 0:
  cbuf[0] = GSM0_SOF;
  cbuf[1] = (addr << 2) | (cr << 1) | EA;
  cbuf[2] = control;
  cbuf[3] = EA;
  cbuf[4] = 0xFF - gsm_fcs_add_block(INIT_FCS, cbuf + 1, 3);
  cbuf[5] = GSM0_SOF;
  len = 6;
  break;
 case 1:
 case 2:

  ibuf[0] = (addr << 2) | (cr << 1) | EA;
  ibuf[1] = control;
  ibuf[2] = 0xFF - gsm_fcs_add_block(INIT_FCS, ibuf, 2);

  len = gsm_stuff_frame(ibuf, cbuf + 1, 3);

  cbuf[0] = GSM1_SOF;
  cbuf[len + 1] = GSM1_SOF;

  len += 2;
  break;
 default:
  WARN_ON(1);
  return;
 }
 gsm->output(gsm, cbuf, len);
 gsm_print_packet("-->", addr, cr, control, ((void*)0), 0);
}
