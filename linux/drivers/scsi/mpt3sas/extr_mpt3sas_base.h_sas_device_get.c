
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _sas_device {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void sas_device_get(struct _sas_device *s)
{
 kref_get(&s->refcount);
}
