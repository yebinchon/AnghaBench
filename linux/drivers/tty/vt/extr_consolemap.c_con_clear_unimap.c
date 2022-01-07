
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int con_do_clear_unimap (struct vc_data*) ;
 int console_lock () ;
 int console_unlock () ;

int con_clear_unimap(struct vc_data *vc)
{
 int ret;
 console_lock();
 ret = con_do_clear_unimap(vc);
 console_unlock();
 return ret;
}
