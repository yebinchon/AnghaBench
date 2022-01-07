
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct uwb_dev {struct uwb_beca_e* bce; } ;
struct uwb_beca_e {int mutex; TYPE_1__* be; } ;
struct uwb_beacon_frame {int Beacon_Slot_Number; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int wBPSTOffset; scalar_t__ BeaconInfo; } ;


 int UWB_BEACON_SLOT_LENGTH_US ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;

__attribute__((used)) static ssize_t uwb_dev_BPST_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 struct uwb_beca_e *bce;
 struct uwb_beacon_frame *bf;
 u16 bpst;

 bce = uwb_dev->bce;
 mutex_lock(&bce->mutex);
 bf = (struct uwb_beacon_frame *)bce->be->BeaconInfo;
 bpst = bce->be->wBPSTOffset
  - (u16)(bf->Beacon_Slot_Number * UWB_BEACON_SLOT_LENGTH_US);
 mutex_unlock(&bce->mutex);

 return sprintf(buf, "%d\n", bpst);
}
