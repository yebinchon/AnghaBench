
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int _stop_conn (struct connection*,int) ;

__attribute__((used)) static void stop_conn(struct connection *con)
{
 _stop_conn(con, 1);
}
