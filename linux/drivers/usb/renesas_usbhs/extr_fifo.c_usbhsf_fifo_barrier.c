
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_fifo {int ctr; } ;


 int EBUSY ;
 int FRDY ;
 int usbhs_read (struct usbhs_priv*,int ) ;

__attribute__((used)) static int usbhsf_fifo_barrier(struct usbhs_priv *priv,
          struct usbhs_fifo *fifo)
{

 if (usbhs_read(priv, fifo->ctr) & FRDY)
  return 0;

 return -EBUSY;
}
