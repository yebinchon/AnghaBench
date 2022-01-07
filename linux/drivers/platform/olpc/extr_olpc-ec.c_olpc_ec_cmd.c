
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct olpc_ec_priv {int suspended; } ;
struct ec_cmd_desc {size_t inlen; size_t outlen; int err; int finished; int * outbuf; int * inbuf; int cmd; } ;
struct TYPE_2__ {int ec_cmd; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 scalar_t__ WARN_ON (int) ;
 TYPE_1__* ec_driver ;
 struct olpc_ec_priv* ec_priv ;
 int init_completion (int *) ;
 int might_sleep () ;
 int queue_ec_descriptor (struct ec_cmd_desc*,struct olpc_ec_priv*) ;
 int wait_for_completion (int *) ;

int olpc_ec_cmd(u8 cmd, u8 *inbuf, size_t inlen, u8 *outbuf, size_t outlen)
{
 struct olpc_ec_priv *ec = ec_priv;
 struct ec_cmd_desc desc;


 if (!ec_driver)
  return -EPROBE_DEFER;

 if (WARN_ON(!ec_driver->ec_cmd))
  return -ENODEV;

 if (!ec)
  return -ENOMEM;


 if (WARN_ON(ec->suspended))
  return -EBUSY;

 might_sleep();

 desc.cmd = cmd;
 desc.inbuf = inbuf;
 desc.outbuf = outbuf;
 desc.inlen = inlen;
 desc.outlen = outlen;
 desc.err = 0;
 init_completion(&desc.finished);

 queue_ec_descriptor(&desc, ec);


 wait_for_completion(&desc.finished);


 return desc.err;
}
