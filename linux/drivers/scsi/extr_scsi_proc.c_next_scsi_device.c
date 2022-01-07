
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 struct device* bus_find_next_device (int *,struct device*) ;
 int put_device (struct device*) ;
 int scsi_bus_type ;

__attribute__((used)) static inline struct device *next_scsi_device(struct device *start)
{
 struct device *next = bus_find_next_device(&scsi_bus_type, start);

 put_device(start);
 return next;
}
