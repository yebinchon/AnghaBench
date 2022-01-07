
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {int active; int poll_thread; int buf; scalar_t__ getbuf_len; scalar_t__ setbuf_len; } ;


 int ENODEV ;
 int ENOMEM ;
 int wake_up_process (int ) ;

__attribute__((used)) static int __siox_start(struct siox_master *smaster)
{
 if (!(smaster->setbuf_len + smaster->getbuf_len))
  return -ENODEV;

 if (!smaster->buf)
  return -ENOMEM;

 if (smaster->active)
  return 0;

 smaster->active = 1;
 wake_up_process(smaster->poll_thread);

 return 1;
}
