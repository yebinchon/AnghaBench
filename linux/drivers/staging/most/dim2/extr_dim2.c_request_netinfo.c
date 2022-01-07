
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct most_interface {int dummy; } ;
struct mbo {int buffer_length; int* virt_address; } ;
struct dim2_hdm {void (* on_netinfo ) (struct most_interface*,unsigned char,unsigned char*) ;scalar_t__ atx_idx; int most_iface; } ;


 struct dim2_hdm* iface_to_hdm (struct most_interface*) ;
 struct mbo* most_get_mbo (int *,scalar_t__,int *) ;
 int most_submit_mbo (struct mbo*) ;
 int pr_err (char*) ;

__attribute__((used)) static void request_netinfo(struct most_interface *most_iface, int ch_idx,
       void (*on_netinfo)(struct most_interface *,
            unsigned char, unsigned char *))
{
 struct dim2_hdm *dev = iface_to_hdm(most_iface);
 struct mbo *mbo;
 u8 *data;

 dev->on_netinfo = on_netinfo;
 if (!on_netinfo)
  return;

 if (dev->atx_idx < 0) {
  pr_err("Async Tx Not initialized\n");
  return;
 }

 mbo = most_get_mbo(&dev->most_iface, dev->atx_idx, ((void*)0));
 if (!mbo)
  return;

 mbo->buffer_length = 5;

 data = mbo->virt_address;

 data[0] = 0x00;
 data[1] = 0x03;
 data[2] = 0x02;
 data[3] = 0x08;
 data[4] = 0x40;

 most_submit_mbo(mbo);
}
