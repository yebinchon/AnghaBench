
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ crw_handler_t ;


 int EBUSY ;
 int EINVAL ;
 int NR_RSCS ;
 int crw_handler_mutex ;
 scalar_t__* crw_handlers ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int crw_register_handler(int rsc, crw_handler_t handler)
{
 int rc = 0;

 if ((rsc < 0) || (rsc >= NR_RSCS))
  return -EINVAL;
 mutex_lock(&crw_handler_mutex);
 if (crw_handlers[rsc])
  rc = -EBUSY;
 else
  crw_handlers[rsc] = handler;
 mutex_unlock(&crw_handler_mutex);
 return rc;
}
