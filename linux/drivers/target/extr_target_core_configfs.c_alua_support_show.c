
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct se_dev_attrib {TYPE_2__* da_dev; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* transport; } ;
struct TYPE_3__ {int transport_flags; } ;


 int PAGE_SIZE ;
 int TRANSPORT_FLAG_PASSTHROUGH_ALUA ;
 int snprintf (char*,int ,char*,int) ;
 struct se_dev_attrib* to_attrib (struct config_item*) ;

__attribute__((used)) static ssize_t alua_support_show(struct config_item *item, char *page)
{
 struct se_dev_attrib *da = to_attrib(item);
 u8 flags = da->da_dev->transport->transport_flags;

 return snprintf(page, PAGE_SIZE, "%d\n",
   flags & TRANSPORT_FLAG_PASSTHROUGH_ALUA ? 0 : 1);
}
