
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dummy; } ;


 int cio_disable_subchannel (struct subchannel*) ;

__attribute__((used)) static void chsc_subchannel_shutdown(struct subchannel *sch)
{
 cio_disable_subchannel(sch);
}
