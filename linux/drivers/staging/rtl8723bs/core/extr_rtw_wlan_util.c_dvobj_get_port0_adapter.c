
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvobj_priv {struct adapter* padapters; } ;
struct adapter {int dummy; } ;


 scalar_t__ IFACE_PORT0 ;
 scalar_t__ get_iface_type (struct adapter) ;
 size_t i ;

struct adapter *dvobj_get_port0_adapter(struct dvobj_priv *dvobj)
{
 if (get_iface_type(dvobj->padapters[i]) != IFACE_PORT0)
  return ((void*)0);

 return dvobj->padapters;
}
