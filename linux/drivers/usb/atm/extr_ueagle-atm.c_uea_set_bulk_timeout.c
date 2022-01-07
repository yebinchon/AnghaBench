
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int dsrate; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct uea_softc {size_t modem_index; TYPE_2__ stats; } ;


 scalar_t__ ADI930 ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 scalar_t__ UEA_CHIP_VERSION (struct uea_softc*) ;
 int UEA_SET_TIMEOUT ;
 scalar_t__* altsetting ;
 int uea_info (int ,char*,int,char*) ;
 int uea_request (struct uea_softc*,int ,int,int ,int *) ;

__attribute__((used)) static void uea_set_bulk_timeout(struct uea_softc *sc, u32 dsrate)
{
 int ret;
 u16 timeout;







 if (UEA_CHIP_VERSION(sc) == ADI930 ||
     altsetting[sc->modem_index] > 0 ||
     sc->stats.phy.dsrate == dsrate)
  return;


 timeout = (dsrate <= 1024*1024) ? 0 : 1;
 ret = uea_request(sc, UEA_SET_TIMEOUT, timeout, 0, ((void*)0));
 uea_info(INS_TO_USBDEV(sc), "setting new timeout %d%s\n",
   timeout, ret < 0 ? " failed" : "");

}
