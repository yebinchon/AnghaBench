
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_light {TYPE_1__* glights; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {struct gb_connection* connection; } ;



__attribute__((used)) static struct gb_connection *get_conn_from_light(struct gb_light *light)
{
 return light->glights->connection;
}
