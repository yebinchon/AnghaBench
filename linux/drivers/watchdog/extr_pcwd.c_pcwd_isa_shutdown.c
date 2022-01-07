
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ DEBUG ;
 scalar_t__ debug ;
 int pcwd_stop () ;
 int pr_debug (char*,unsigned int) ;

__attribute__((used)) static void pcwd_isa_shutdown(struct device *dev, unsigned int id)
{
 if (debug >= DEBUG)
  pr_debug("pcwd_isa_shutdown id=%d\n", id);

 pcwd_stop();
}
