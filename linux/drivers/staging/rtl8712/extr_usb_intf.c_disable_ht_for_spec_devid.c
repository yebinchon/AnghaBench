
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct usb_device_id {scalar_t__ idVendor; scalar_t__ idProduct; } ;
struct TYPE_4__ {scalar_t__ ampdu_enable; scalar_t__ cbw40_enable; scalar_t__ ht_enable; } ;
struct _adapter {TYPE_1__ registrypriv; } ;
struct TYPE_5__ {scalar_t__ idVendor; scalar_t__ idProduct; int flags; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int SPEC_DEV_ID_DISABLE_HT ;
 TYPE_2__* specific_device_id_tbl ;

__attribute__((used)) static void disable_ht_for_spec_devid(const struct usb_device_id *pdid,
          struct _adapter *padapter)
{
 u16 vid, pid;
 u32 flags;
 int i;
 int num = ARRAY_SIZE(specific_device_id_tbl);

 for (i = 0; i < num; i++) {
  vid = specific_device_id_tbl[i].idVendor;
  pid = specific_device_id_tbl[i].idProduct;
  flags = specific_device_id_tbl[i].flags;

  if ((pdid->idVendor == vid) && (pdid->idProduct == pid) &&
      (flags & SPEC_DEV_ID_DISABLE_HT)) {
   padapter->registrypriv.ht_enable = 0;
   padapter->registrypriv.cbw40_enable = 0;
   padapter->registrypriv.ampdu_enable = 0;
  }
 }
}
