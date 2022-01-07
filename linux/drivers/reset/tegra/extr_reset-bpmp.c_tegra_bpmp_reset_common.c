
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; struct tegra_bpmp_message* data; } ;
struct tegra_bpmp_message {int cmd; unsigned int reset_id; TYPE_1__ tx; int mrq; } ;
struct tegra_bpmp {int dummy; } ;
struct reset_controller_dev {int dummy; } ;
struct mrq_reset_request {int cmd; unsigned int reset_id; TYPE_1__ tx; int mrq; } ;
typedef int request ;
typedef int msg ;
typedef enum mrq_reset_commands { ____Placeholder_mrq_reset_commands } mrq_reset_commands ;


 int MRQ_RESET ;
 int memset (struct tegra_bpmp_message*,int ,int) ;
 int tegra_bpmp_transfer (struct tegra_bpmp*,struct tegra_bpmp_message*) ;
 struct tegra_bpmp* to_tegra_bpmp (struct reset_controller_dev*) ;

__attribute__((used)) static int tegra_bpmp_reset_common(struct reset_controller_dev *rstc,
       enum mrq_reset_commands command,
       unsigned int id)
{
 struct tegra_bpmp *bpmp = to_tegra_bpmp(rstc);
 struct mrq_reset_request request;
 struct tegra_bpmp_message msg;

 memset(&request, 0, sizeof(request));
 request.cmd = command;
 request.reset_id = id;

 memset(&msg, 0, sizeof(msg));
 msg.mrq = MRQ_RESET;
 msg.tx.data = &request;
 msg.tx.size = sizeof(request);

 return tegra_bpmp_transfer(bpmp, &msg);
}
