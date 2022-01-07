
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_configuration {int dummy; } ;
struct usb_composite_dev {int dummy; } ;
struct snd_card {int dummy; } ;
struct f_midi {struct snd_card* card; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 int f_midi_disable (struct usb_function*) ;
 struct f_midi* func_to_midi (struct usb_function*) ;
 int snd_card_free_when_closed (struct snd_card*) ;
 int usb_free_all_descriptors (struct usb_function*) ;

__attribute__((used)) static void f_midi_unbind(struct usb_configuration *c, struct usb_function *f)
{
 struct usb_composite_dev *cdev = f->config->cdev;
 struct f_midi *midi = func_to_midi(f);
 struct snd_card *card;

 DBG(cdev, "unbind\n");


 f_midi_disable(f);

 card = midi->card;
 midi->card = ((void*)0);
 if (card)
  snd_card_free_when_closed(card);

 usb_free_all_descriptors(f);
}
