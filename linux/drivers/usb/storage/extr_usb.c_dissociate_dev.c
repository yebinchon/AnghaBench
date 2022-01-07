
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int pusb_intf; int iobuf_dma; int iobuf; int pusb_dev; int cr; } ;


 int US_IOBUF_SIZE ;
 int kfree (int ) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_set_intfdata (int ,int *) ;

__attribute__((used)) static void dissociate_dev(struct us_data *us)
{

 kfree(us->cr);
 usb_free_coherent(us->pusb_dev, US_IOBUF_SIZE, us->iobuf, us->iobuf_dma);


 usb_set_intfdata(us->pusb_intf, ((void*)0));
}
