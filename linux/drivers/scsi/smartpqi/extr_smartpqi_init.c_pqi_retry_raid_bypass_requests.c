
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_io_request {int dummy; } ;
struct pqi_ctrl_info {int dummy; } ;


 int pqi_add_to_raid_bypass_retry_list (struct pqi_ctrl_info*,struct pqi_io_request*,int) ;
 scalar_t__ pqi_ctrl_blocked (struct pqi_ctrl_info*) ;
 int pqi_ctrl_busy (struct pqi_ctrl_info*) ;
 int pqi_ctrl_unbusy (struct pqi_ctrl_info*) ;
 struct pqi_io_request* pqi_next_queued_raid_bypass_request (struct pqi_ctrl_info*) ;
 int pqi_retry_raid_bypass (struct pqi_io_request*) ;
 int pqi_schedule_bypass_retry (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_retry_raid_bypass_requests(struct pqi_ctrl_info *ctrl_info)
{
 int rc;
 struct pqi_io_request *io_request;

 pqi_ctrl_busy(ctrl_info);

 while (1) {
  if (pqi_ctrl_blocked(ctrl_info))
   break;
  io_request = pqi_next_queued_raid_bypass_request(ctrl_info);
  if (!io_request)
   break;
  rc = pqi_retry_raid_bypass(io_request);
  if (rc) {
   pqi_add_to_raid_bypass_retry_list(ctrl_info, io_request,
    1);
   pqi_schedule_bypass_retry(ctrl_info);
   break;
  }
 }

 pqi_ctrl_unbusy(ctrl_info);
}
