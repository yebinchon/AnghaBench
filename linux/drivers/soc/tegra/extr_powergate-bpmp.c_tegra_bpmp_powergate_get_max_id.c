
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int max_id; } ;
struct TYPE_5__ {int size; scalar_t__ ret; struct tegra_bpmp_message* data; } ;
struct TYPE_4__ {int size; struct tegra_bpmp_message* data; } ;
struct tegra_bpmp_message {TYPE_3__ get_max_id; TYPE_2__ rx; TYPE_1__ tx; int mrq; int cmd; } ;
struct tegra_bpmp {int dummy; } ;
struct mrq_pg_response {TYPE_3__ get_max_id; TYPE_2__ rx; TYPE_1__ tx; int mrq; int cmd; } ;
struct mrq_pg_request {TYPE_3__ get_max_id; TYPE_2__ rx; TYPE_1__ tx; int mrq; int cmd; } ;
typedef int response ;
typedef int request ;
typedef int msg ;


 int CMD_PG_GET_MAX_ID ;
 int EINVAL ;
 int MRQ_PG ;
 int memset (struct tegra_bpmp_message*,int ,int) ;
 int tegra_bpmp_transfer (struct tegra_bpmp*,struct tegra_bpmp_message*) ;

__attribute__((used)) static int tegra_bpmp_powergate_get_max_id(struct tegra_bpmp *bpmp)
{
 struct mrq_pg_response response;
 struct mrq_pg_request request;
 struct tegra_bpmp_message msg;
 int err;

 memset(&request, 0, sizeof(request));
 request.cmd = CMD_PG_GET_MAX_ID;

 memset(&response, 0, sizeof(response));

 memset(&msg, 0, sizeof(msg));
 msg.mrq = MRQ_PG;
 msg.tx.data = &request;
 msg.tx.size = sizeof(request);
 msg.rx.data = &response;
 msg.rx.size = sizeof(response);

 err = tegra_bpmp_transfer(bpmp, &msg);
 if (err < 0)
  return err;
 else if (msg.rx.ret < 0)
  return -EINVAL;

 return response.get_max_id.max_id;
}
