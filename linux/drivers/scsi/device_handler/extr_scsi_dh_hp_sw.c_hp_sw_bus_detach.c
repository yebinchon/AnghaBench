
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int * handler_data; } ;


 int kfree (int *) ;

__attribute__((used)) static void hp_sw_bus_detach( struct scsi_device *sdev )
{
 kfree(sdev->handler_data);
 sdev->handler_data = ((void*)0);
}
