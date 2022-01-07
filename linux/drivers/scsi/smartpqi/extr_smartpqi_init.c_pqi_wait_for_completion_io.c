
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;
struct completion {int dummy; } ;


 int ENXIO ;
 int PQI_HZ ;
 int PQI_WAIT_FOR_COMPLETION_IO_TIMEOUT_SECS ;
 int pqi_check_ctrl_health (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 scalar_t__ wait_for_completion_io_timeout (struct completion*,int) ;

__attribute__((used)) static int pqi_wait_for_completion_io(struct pqi_ctrl_info *ctrl_info,
 struct completion *wait)
{
 int rc;

 while (1) {
  if (wait_for_completion_io_timeout(wait,
   PQI_WAIT_FOR_COMPLETION_IO_TIMEOUT_SECS * PQI_HZ)) {
   rc = 0;
   break;
  }

  pqi_check_ctrl_health(ctrl_info);
  if (pqi_ctrl_offline(ctrl_info)) {
   rc = -ENXIO;
   break;
  }
 }

 return rc;
}
