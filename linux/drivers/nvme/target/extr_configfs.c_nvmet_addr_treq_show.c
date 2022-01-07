
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int treq; } ;
struct TYPE_4__ {TYPE_1__ disc_addr; } ;


 int NVME_TREQ_SECURE_CHANNEL_MASK ;



 int sprintf (char*,char*) ;
 TYPE_2__* to_nvmet_port (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_addr_treq_show(struct config_item *item,
  char *page)
{
 switch (to_nvmet_port(item)->disc_addr.treq &
  NVME_TREQ_SECURE_CHANNEL_MASK) {
 case 129:
  return sprintf(page, "not specified\n");
 case 128:
  return sprintf(page, "required\n");
 case 130:
  return sprintf(page, "not required\n");
 default:
  return sprintf(page, "\n");
 }
}
