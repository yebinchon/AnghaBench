
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int temp; } ;
union mrq_thermal_bpmp_to_host_response {TYPE_5__ get_temp; } ;
struct tegra_bpmp_thermal_zone {TYPE_4__* tegra; int idx; } ;
struct TYPE_8__ {int size; union mrq_thermal_bpmp_to_host_response* data; } ;
struct TYPE_7__ {int size; struct tegra_bpmp_message* data; } ;
struct TYPE_6__ {int zone; } ;
struct tegra_bpmp_message {TYPE_3__ rx; TYPE_2__ tx; int mrq; TYPE_1__ get_temp; int type; } ;
struct mrq_thermal_host_to_bpmp_request {TYPE_3__ rx; TYPE_2__ tx; int mrq; TYPE_1__ get_temp; int type; } ;
typedef int req ;
typedef int reply ;
typedef int msg ;
struct TYPE_9__ {int bpmp; } ;


 int CMD_THERMAL_GET_TEMP ;
 int MRQ_THERMAL ;
 int memset (struct tegra_bpmp_message*,int ,int) ;
 int tegra_bpmp_transfer (int ,struct tegra_bpmp_message*) ;

__attribute__((used)) static int tegra_bpmp_thermal_get_temp(void *data, int *out_temp)
{
 struct tegra_bpmp_thermal_zone *zone = data;
 struct mrq_thermal_host_to_bpmp_request req;
 union mrq_thermal_bpmp_to_host_response reply;
 struct tegra_bpmp_message msg;
 int err;

 memset(&req, 0, sizeof(req));
 req.type = CMD_THERMAL_GET_TEMP;
 req.get_temp.zone = zone->idx;

 memset(&msg, 0, sizeof(msg));
 msg.mrq = MRQ_THERMAL;
 msg.tx.data = &req;
 msg.tx.size = sizeof(req);
 msg.rx.data = &reply;
 msg.rx.size = sizeof(reply);

 err = tegra_bpmp_transfer(zone->tegra->bpmp, &msg);
 if (err)
  return err;

 *out_temp = reply.get_temp.temp;

 return 0;
}
