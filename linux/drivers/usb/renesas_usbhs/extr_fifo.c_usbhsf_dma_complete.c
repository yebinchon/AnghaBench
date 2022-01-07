
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct device {int dummy; } ;


 int USBHSF_PKT_DMA_DONE ;
 int dev_err (struct device*,char*,int ,int) ;
 int usbhs_pipe_number (struct usbhs_pipe*) ;
 struct usbhs_priv* usbhs_pipe_to_priv (struct usbhs_pipe*) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 int usbhsf_pkt_handler (struct usbhs_pipe*,int ) ;

__attribute__((used)) static void usbhsf_dma_complete(void *arg)
{
 struct usbhs_pipe *pipe = arg;
 struct usbhs_priv *priv = usbhs_pipe_to_priv(pipe);
 struct device *dev = usbhs_priv_to_dev(priv);
 int ret;

 ret = usbhsf_pkt_handler(pipe, USBHSF_PKT_DMA_DONE);
 if (ret < 0)
  dev_err(dev, "dma_complete run_error %d : %d\n",
   usbhs_pipe_number(pipe), ret);
}
