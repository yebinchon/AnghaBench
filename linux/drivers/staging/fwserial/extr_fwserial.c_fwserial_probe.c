
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee1394_device_id {int dummy; } ;
struct fw_unit {int dummy; } ;
struct fw_serial {int dummy; } ;
struct TYPE_2__ {int card; } ;


 TYPE_1__* fw_parent_device (struct fw_unit*) ;
 int fwserial_add_peer (struct fw_serial*,struct fw_unit*) ;
 int fwserial_create (struct fw_unit*) ;
 int fwserial_list_mutex ;
 struct fw_serial* fwserial_lookup (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fwserial_probe(struct fw_unit *unit,
     const struct ieee1394_device_id *id)
{
 struct fw_serial *serial;
 int err;

 mutex_lock(&fwserial_list_mutex);
 serial = fwserial_lookup(fw_parent_device(unit)->card);
 if (!serial)
  err = fwserial_create(unit);
 else
  err = fwserial_add_peer(serial, unit);
 mutex_unlock(&fwserial_list_mutex);
 return err;
}
