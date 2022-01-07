
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsit_transport {int owner; } ;


 int module_put (int ) ;

void iscsit_put_transport(struct iscsit_transport *t)
{
 module_put(t->owner);
}
