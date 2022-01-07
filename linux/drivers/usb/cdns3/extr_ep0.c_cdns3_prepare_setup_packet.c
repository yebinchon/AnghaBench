
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int dummy; } ;
struct cdns3_device {int setup_dma; int ep0_stage; scalar_t__ ep0_data_dir; } ;


 int CDNS3_SETUP_STAGE ;
 int cdns3_ep0_run_transfer (struct cdns3_device*,int ,int,int ,int ) ;

__attribute__((used)) static void cdns3_prepare_setup_packet(struct cdns3_device *priv_dev)
{
 priv_dev->ep0_data_dir = 0;
 priv_dev->ep0_stage = CDNS3_SETUP_STAGE;
 cdns3_ep0_run_transfer(priv_dev, priv_dev->setup_dma,
          sizeof(struct usb_ctrlrequest), 0, 0);
}
