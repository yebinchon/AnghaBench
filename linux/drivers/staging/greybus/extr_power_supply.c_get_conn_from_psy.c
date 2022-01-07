
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_power_supply {TYPE_1__* supplies; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {struct gb_connection* connection; } ;



__attribute__((used)) static struct gb_connection *get_conn_from_psy(struct gb_power_supply *gbpsy)
{
 return gbpsy->supplies->connection;
}
