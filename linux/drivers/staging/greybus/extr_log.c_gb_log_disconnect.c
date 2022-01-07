
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_log {struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int dummy; } ;


 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 struct gb_log* greybus_get_drvdata (struct gb_bundle*) ;
 int kfree (struct gb_log*) ;

__attribute__((used)) static void gb_log_disconnect(struct gb_bundle *bundle)
{
 struct gb_log *log = greybus_get_drvdata(bundle);
 struct gb_connection *connection = log->connection;

 gb_connection_disable(connection);
 gb_connection_destroy(connection);

 kfree(log);
}
