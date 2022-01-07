
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct gb_loopback* private; } ;
struct gb_loopback {int mutex; int kfifo_lat; } ;


 int gb_loopback_dbgfs_latency_show_common (struct seq_file*,int *,int *) ;

__attribute__((used)) static int gb_loopback_dbgfs_latency_show(struct seq_file *s, void *unused)
{
 struct gb_loopback *gb = s->private;

 return gb_loopback_dbgfs_latency_show_common(s, &gb->kfifo_lat,
           &gb->mutex);
}
