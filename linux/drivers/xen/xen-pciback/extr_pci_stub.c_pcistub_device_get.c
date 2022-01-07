
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcistub_device {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void pcistub_device_get(struct pcistub_device *psdev)
{
 kref_get(&psdev->kref);
}
