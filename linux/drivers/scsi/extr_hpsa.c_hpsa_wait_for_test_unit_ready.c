
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {TYPE_1__* pdev; } ;
struct CommandList {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int HPSA_MAX_WAIT_INTERVAL_SECS ;
 int HPSA_TUR_RETRY_LIMIT ;
 int dev_warn (int *,char*,int) ;
 int hpsa_send_test_unit_ready (struct ctlr_info*,struct CommandList*,unsigned char*,int) ;
 int msleep (int) ;

__attribute__((used)) static int hpsa_wait_for_test_unit_ready(struct ctlr_info *h,
    struct CommandList *c,
    unsigned char lunaddr[], int reply_queue)
{
 int rc;
 int count = 0;
 int waittime = 1;


 for (count = 0; count < HPSA_TUR_RETRY_LIMIT; count++) {





  msleep(1000 * waittime);

  rc = hpsa_send_test_unit_ready(h, c, lunaddr, reply_queue);
  if (!rc)
   break;


  if (waittime < HPSA_MAX_WAIT_INTERVAL_SECS)
   waittime *= 2;

  dev_warn(&h->pdev->dev,
    "waiting %d secs for device to become ready.\n",
    waittime);
 }

 return rc;
}
