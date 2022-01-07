
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
struct mutex {int dummy; } ;
struct kfifo {int dummy; } ;
typedef int latency ;


 int EAGAIN ;
 scalar_t__ kfifo_len (struct kfifo*) ;
 int kfifo_out (struct kfifo*,int *,int) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int gb_loopback_dbgfs_latency_show_common(struct seq_file *s,
       struct kfifo *kfifo,
       struct mutex *mutex)
{
 u32 latency;
 int retval;

 if (kfifo_len(kfifo) == 0) {
  retval = -EAGAIN;
  goto done;
 }

 mutex_lock(mutex);
 retval = kfifo_out(kfifo, &latency, sizeof(latency));
 if (retval > 0) {
  seq_printf(s, "%u", latency);
  retval = 0;
 }
 mutex_unlock(mutex);
done:
 return retval;
}
