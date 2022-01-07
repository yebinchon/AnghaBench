
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_fifo {char* name; int ctr; int sel; int port; } ;


 int CFIFO ;
 int CFIFOCTR ;
 int CFIFOSEL ;
 int USBHS_DFIFO_INIT (struct usbhs_priv*,struct usbhs_fifo*,int) ;
 int USBHS_DFIFO_INIT_NO_PORT (struct usbhs_priv*,struct usbhs_fifo*,int) ;
 struct usbhs_fifo* usbhsf_get_cfifo (struct usbhs_priv*) ;

int usbhs_fifo_probe(struct usbhs_priv *priv)
{
 struct usbhs_fifo *fifo;


 fifo = usbhsf_get_cfifo(priv);
 fifo->name = "CFIFO";
 fifo->port = CFIFO;
 fifo->sel = CFIFOSEL;
 fifo->ctr = CFIFOCTR;


 USBHS_DFIFO_INIT(priv, fifo, 0);
 USBHS_DFIFO_INIT(priv, fifo, 1);
 USBHS_DFIFO_INIT_NO_PORT(priv, fifo, 2);
 USBHS_DFIFO_INIT_NO_PORT(priv, fifo, 3);

 return 0;
}
