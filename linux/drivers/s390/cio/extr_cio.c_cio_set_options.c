
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel {int dummy; } ;
struct TYPE_2__ {int suspend; int prefetch; int inter; } ;
struct io_subchannel_private {TYPE_1__ options; } ;


 int DOIO_ALLOW_SUSPEND ;
 int DOIO_DENY_PREFETCH ;
 int DOIO_SUPPRESS_INTER ;
 struct io_subchannel_private* to_io_private (struct subchannel*) ;

int cio_set_options(struct subchannel *sch, int flags)
{
 struct io_subchannel_private *priv = to_io_private(sch);

 priv->options.suspend = (flags & DOIO_ALLOW_SUSPEND) != 0;
 priv->options.prefetch = (flags & DOIO_DENY_PREFETCH) != 0;
 priv->options.inter = (flags & DOIO_SUPPRESS_INTER) != 0;
 return 0;
}
