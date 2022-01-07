
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_bpmp_thermal_zone {TYPE_3__* tegra; int idx; } ;
struct TYPE_5__ {int size; struct tegra_bpmp_message* data; } ;
struct TYPE_4__ {int enabled; int low; int high; int zone; } ;
struct tegra_bpmp_message {TYPE_2__ tx; int mrq; TYPE_1__ set_trip; int type; } ;
struct mrq_thermal_host_to_bpmp_request {TYPE_2__ tx; int mrq; TYPE_1__ set_trip; int type; } ;
typedef int req ;
typedef int msg ;
struct TYPE_6__ {int bpmp; } ;


 int CMD_THERMAL_SET_TRIP ;
 int MRQ_THERMAL ;
 int memset (struct tegra_bpmp_message*,int ,int) ;
 int tegra_bpmp_transfer (int ,struct tegra_bpmp_message*) ;

__attribute__((used)) static int tegra_bpmp_thermal_set_trips(void *data, int low, int high)
{
 struct tegra_bpmp_thermal_zone *zone = data;
 struct mrq_thermal_host_to_bpmp_request req;
 struct tegra_bpmp_message msg;

 memset(&req, 0, sizeof(req));
 req.type = CMD_THERMAL_SET_TRIP;
 req.set_trip.zone = zone->idx;
 req.set_trip.enabled = 1;
 req.set_trip.low = low;
 req.set_trip.high = high;

 memset(&msg, 0, sizeof(msg));
 msg.mrq = MRQ_THERMAL;
 msg.tx.data = &req;
 msg.tx.size = sizeof(req);

 return tegra_bpmp_transfer(zone->tegra->bpmp, &msg);
}
