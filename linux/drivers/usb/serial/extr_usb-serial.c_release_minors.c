
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial {int num_ports; scalar_t__ minors_reserved; TYPE_1__** port; } ;
struct TYPE_2__ {int minor; } ;


 int idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serial_minors ;
 int table_lock ;

__attribute__((used)) static void release_minors(struct usb_serial *serial)
{
 int i;

 mutex_lock(&table_lock);
 for (i = 0; i < serial->num_ports; ++i)
  idr_remove(&serial_minors, serial->port[i]->minor);
 mutex_unlock(&table_lock);
 serial->minors_reserved = 0;
}
