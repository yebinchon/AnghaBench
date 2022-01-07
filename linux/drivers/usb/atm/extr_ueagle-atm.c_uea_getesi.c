
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct uea_softc {TYPE_2__* usb_dev; } ;
typedef int mac_str ;
struct TYPE_3__ {int iSerialNumber; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;


 int ETH_ALEN ;
 int hex_to_bin (unsigned char) ;
 int usb_string (TYPE_2__*,int ,unsigned char*,int) ;

__attribute__((used)) static int uea_getesi(struct uea_softc *sc, u_char *esi)
{
 unsigned char mac_str[2 * ETH_ALEN + 1];
 int i;
 if (usb_string
     (sc->usb_dev, sc->usb_dev->descriptor.iSerialNumber, mac_str,
      sizeof(mac_str)) != 2 * ETH_ALEN)
  return 1;

 for (i = 0; i < ETH_ALEN; i++)
  esi[i] = hex_to_bin(mac_str[2 * i]) * 16 +
    hex_to_bin(mac_str[2 * i + 1]);

 return 0;
}
