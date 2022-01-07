
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {TYPE_1__* driver; int name; struct slgt_info* driver_data; } ;
struct TYPE_6__ {int count; int * tty; int mutex; } ;
struct slgt_info {TYPE_2__ port; int timeout; int device_name; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int name; } ;


 int DBGINFO (char*) ;
 int flush_buffer (struct tty_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int shutdown (struct slgt_info*) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 int tty_port_close_end (TYPE_2__*,struct tty_struct*) ;
 scalar_t__ tty_port_close_start (TYPE_2__*,struct tty_struct*,struct file*) ;
 scalar_t__ tty_port_initialized (TYPE_2__*) ;
 int wait_until_sent (struct tty_struct*,int ) ;

__attribute__((used)) static void close(struct tty_struct *tty, struct file *filp)
{
 struct slgt_info *info = tty->driver_data;

 if (sanity_check(info, tty->name, "close"))
  return;
 DBGINFO(("%s close entry, count=%d\n", info->device_name, info->port.count));

 if (tty_port_close_start(&info->port, tty, filp) == 0)
  goto cleanup;

 mutex_lock(&info->port.mutex);
 if (tty_port_initialized(&info->port))
   wait_until_sent(tty, info->timeout);
 flush_buffer(tty);
 tty_ldisc_flush(tty);

 shutdown(info);
 mutex_unlock(&info->port.mutex);

 tty_port_close_end(&info->port, tty);
 info->port.tty = ((void*)0);
cleanup:
 DBGINFO(("%s close exit, count=%d\n", tty->driver->name, info->port.count));
}
