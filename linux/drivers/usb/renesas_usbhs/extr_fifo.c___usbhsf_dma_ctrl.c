
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int sel; } ;


 int DREQE ;
 int usbhs_bset (struct usbhs_priv*,int ,int ,int ) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;

__attribute__((used)) static void __usbhsf_dma_ctrl(struct usbhs_pipe *pipe,
         struct usbhs_fifo *fifo,
         u16 dreqe)
{
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);

 usbhs_bset(priv, fifo->sel, DREQE, dreqe);
}
