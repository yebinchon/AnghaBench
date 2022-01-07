
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_fifo {int ctr; } ;


 int DTLN_MASK ;
 int usbhs_read (struct usbhs_priv*,int ) ;

__attribute__((used)) static int usbhsf_fifo_rcv_len(struct usbhs_priv *priv,
          struct usbhs_fifo *fifo)
{
 return usbhs_read(priv, fifo->ctr) & DTLN_MASK;
}
