
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_general_admin_response {int dummy; } ;
struct pqi_admin_queues {int oq_ci_copy; int oq_ci; scalar_t__ oq_element_array; int oq_pi; } ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; struct pqi_admin_queues admin_queues; } ;
typedef int pqi_index_t ;
struct TYPE_2__ {int dev; } ;


 int ENXIO ;
 int ETIMEDOUT ;
 int PQI_ADMIN_OQ_ELEMENT_LENGTH ;
 int PQI_ADMIN_OQ_NUM_ELEMENTS ;
 unsigned long PQI_ADMIN_REQUEST_TIMEOUT_SECS ;
 unsigned long PQI_HZ ;
 int dev_err (int *,char*) ;
 unsigned long jiffies ;
 int memcpy (struct pqi_general_admin_response*,scalar_t__,int) ;
 int readl (int ) ;
 int sis_is_firmware_running (struct pqi_ctrl_info*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;
 int writel (int,int ) ;

__attribute__((used)) static int pqi_poll_for_admin_response(struct pqi_ctrl_info *ctrl_info,
 struct pqi_general_admin_response *response)
{
 struct pqi_admin_queues *admin_queues;
 pqi_index_t oq_pi;
 pqi_index_t oq_ci;
 unsigned long timeout;

 admin_queues = &ctrl_info->admin_queues;
 oq_ci = admin_queues->oq_ci_copy;

 timeout = (PQI_ADMIN_REQUEST_TIMEOUT_SECS * PQI_HZ) + jiffies;

 while (1) {
  oq_pi = readl(admin_queues->oq_pi);
  if (oq_pi != oq_ci)
   break;
  if (time_after(jiffies, timeout)) {
   dev_err(&ctrl_info->pci_dev->dev,
    "timed out waiting for admin response\n");
   return -ETIMEDOUT;
  }
  if (!sis_is_firmware_running(ctrl_info))
   return -ENXIO;
  usleep_range(1000, 2000);
 }

 memcpy(response, admin_queues->oq_element_array +
  (oq_ci * PQI_ADMIN_OQ_ELEMENT_LENGTH), sizeof(*response));

 oq_ci = (oq_ci + 1) % PQI_ADMIN_OQ_NUM_ELEMENTS;
 admin_queues->oq_ci_copy = oq_ci;
 writel(oq_ci, admin_queues->oq_ci);

 return 0;
}
