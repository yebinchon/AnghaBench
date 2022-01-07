
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int emulate_pr; } ;
struct se_device {TYPE_2__* transport; TYPE_1__ dev_attrib; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int transport_flags; } ;


 int TRANSPORT_FLAG_PASSTHROUGH_PGR ;
 struct se_device* pr_to_dev (struct config_item*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t target_pr_res_aptpl_metadata_show(struct config_item *item,
  char *page)
{
 struct se_device *dev = pr_to_dev(item);

 if (!dev->dev_attrib.emulate_pr ||
     (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH_PGR))
  return 0;

 return sprintf(page, "Ready to process PR APTPL metadata..\n");
}
