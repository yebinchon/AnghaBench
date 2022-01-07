
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc_evt_beacon {int wBeaconInfoLength; scalar_t__ BeaconInfo; } ;
struct uwb_ie_hdr {int dummy; } ;
struct uwb_dev {int dummy; } ;
struct uwb_beca_e {int mutex; struct uwb_rc_evt_beacon* be; } ;
struct uwb_beacon_frame {scalar_t__ IEData; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_ie_dump_hex (struct uwb_ie_hdr*,int,char*,size_t) ;

ssize_t uwb_bce_print_IEs(struct uwb_dev *uwb_dev, struct uwb_beca_e *bce,
     char *buf, size_t size)
{
 ssize_t result = 0;
 struct uwb_rc_evt_beacon *be;
 struct uwb_beacon_frame *bf;
 int ies_len;
 struct uwb_ie_hdr *ies;

 mutex_lock(&bce->mutex);

 be = bce->be;
 if (be) {
  bf = (struct uwb_beacon_frame *)bce->be->BeaconInfo;
  ies_len = be->wBeaconInfoLength - sizeof(struct uwb_beacon_frame);
  ies = (struct uwb_ie_hdr *)bf->IEData;

  result = uwb_ie_dump_hex(ies, ies_len, buf, size);
 }

 mutex_unlock(&bce->mutex);

 return result;
}
