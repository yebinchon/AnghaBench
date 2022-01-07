
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_cache {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct usb_host_interface {struct usb_interface_cache* string; struct usb_interface_cache* endpoint; } ;
struct kref {int dummy; } ;


 int kfree (struct usb_interface_cache*) ;
 struct usb_interface_cache* ref_to_usb_interface_cache (struct kref*) ;

void usb_release_interface_cache(struct kref *ref)
{
 struct usb_interface_cache *intfc = ref_to_usb_interface_cache(ref);
 int j;

 for (j = 0; j < intfc->num_altsetting; j++) {
  struct usb_host_interface *alt = &intfc->altsetting[j];

  kfree(alt->endpoint);
  kfree(alt->string);
 }
 kfree(intfc);
}
