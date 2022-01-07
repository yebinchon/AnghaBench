
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;
struct RunInThread_param {int context; int (* func ) (int ) ;} ;


 int H2C_PARAMETERS_ERROR ;
 int H2C_SUCCESS ;
 int stub1 (int ) ;

u8 run_in_thread_hdl(struct adapter *padapter, u8 *pbuf)
{
 struct RunInThread_param *p;


 if (((void*)0) == pbuf)
  return H2C_PARAMETERS_ERROR;
 p = (struct RunInThread_param *)pbuf;

 if (p->func)
  p->func(p->context);

 return H2C_SUCCESS;
}
