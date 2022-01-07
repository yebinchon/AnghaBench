
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int err_threshold; } ;
struct sdw_bus {TYPE_2__* ops; TYPE_1__ prop; } ;
typedef enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;
struct TYPE_4__ {int (* reset_page_addr ) (struct sdw_bus*,int ) ;} ;


 int ENODATA ;
 int find_response_code (int) ;
 int stub1 (struct sdw_bus*,int ) ;

__attribute__((used)) static int sdw_reset_page(struct sdw_bus *bus, u16 dev_num)
{
 int retry = bus->prop.err_threshold;
 enum sdw_command_response resp;
 int ret = 0, i;

 for (i = 0; i <= retry; i++) {
  resp = bus->ops->reset_page_addr(bus, dev_num);
  ret = find_response_code(resp);

  if (ret == 0 || ret == -ENODATA)
   return ret;
 }

 return ret;
}
