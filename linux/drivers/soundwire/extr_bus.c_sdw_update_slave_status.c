
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdw_slave {TYPE_1__* ops; } ;
typedef enum sdw_slave_status { ____Placeholder_sdw_slave_status } sdw_slave_status ;
struct TYPE_2__ {int (* update_status ) (struct sdw_slave*,int) ;} ;


 int stub1 (struct sdw_slave*,int) ;

__attribute__((used)) static int sdw_update_slave_status(struct sdw_slave *slave,
       enum sdw_slave_status status)
{
 if (slave->ops && slave->ops->update_status)
  return slave->ops->update_status(slave, status);

 return 0;
}
