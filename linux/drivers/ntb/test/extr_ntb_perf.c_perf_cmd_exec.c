
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_peer {int service; TYPE_2__* perf; int sts; } ;
typedef enum perf_cmd { ____Placeholder_perf_cmd } perf_cmd ;
struct TYPE_4__ {TYPE_1__* ntb; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;





 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int queue_work (int ,int *) ;
 int set_bit (int,int *) ;
 int system_highpri_wq ;

__attribute__((used)) static int perf_cmd_exec(struct perf_peer *peer, enum perf_cmd cmd)
{
 switch (cmd) {
 case 129:
 case 131:
 case 128:
 case 130:
 case 132:
  break;
 default:
  dev_err(&peer->perf->ntb->dev, "Exec invalid command\n");
  return -EINVAL;
 }


 set_bit(cmd, &peer->sts);

 dev_dbg(&peer->perf->ntb->dev, "CMD exec: %d\n", cmd);

 (void)queue_work(system_highpri_wq, &peer->service);

 return 0;
}
