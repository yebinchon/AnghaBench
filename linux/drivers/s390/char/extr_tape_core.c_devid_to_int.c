
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_dev_id {int devno; int ssid; } ;



__attribute__((used)) static int devid_to_int(struct ccw_dev_id *dev_id)
{
 return dev_id->devno + (dev_id->ssid << 16);
}
