
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uea_softc {int dsp_firm; int task; TYPE_1__* urb_int; int kthread; } ;
struct TYPE_3__ {int transfer_buffer; } ;


 int INS_TO_USBDEV (struct uea_softc*) ;
 int UEA_LOOPBACK_ON ;
 int UEA_SET_MODE ;
 int flush_work (int *) ;
 int kfree (int ) ;
 int kthread_stop (int ) ;
 int release_firmware (int ) ;
 int uea_dbg (int ,char*,int) ;
 int uea_enters (int ) ;
 int uea_leaves (int ) ;
 int uea_request (struct uea_softc*,int ,int ,int ,int *) ;
 int usb_free_urb (TYPE_1__*) ;
 int usb_kill_urb (TYPE_1__*) ;

__attribute__((used)) static void uea_stop(struct uea_softc *sc)
{
 int ret;
 uea_enters(INS_TO_USBDEV(sc));
 ret = kthread_stop(sc->kthread);
 uea_dbg(INS_TO_USBDEV(sc), "kthread finish with status %d\n", ret);

 uea_request(sc, UEA_SET_MODE, UEA_LOOPBACK_ON, 0, ((void*)0));

 usb_kill_urb(sc->urb_int);
 kfree(sc->urb_int->transfer_buffer);
 usb_free_urb(sc->urb_int);


 flush_work(&sc->task);

 release_firmware(sc->dsp_firm);
 uea_leaves(INS_TO_USBDEV(sc));
}
