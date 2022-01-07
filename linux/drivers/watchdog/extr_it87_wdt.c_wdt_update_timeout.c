
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO ;
 int _wdt_update_timeout (unsigned int) ;
 int superio_enter () ;
 int superio_exit () ;
 int superio_select (int ) ;

__attribute__((used)) static int wdt_update_timeout(unsigned int t)
{
 int ret;

 ret = superio_enter();
 if (ret)
  return ret;

 superio_select(GPIO);
 _wdt_update_timeout(t);
 superio_exit();

 return 0;
}
