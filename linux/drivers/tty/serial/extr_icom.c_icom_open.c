
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_6__ {TYPE_1__* adapter; } ;
struct TYPE_5__ {int kref; } ;


 TYPE_2__* ICOM_PORT ;
 int icom_kref_release ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int startup (TYPE_2__*) ;
 int trace (TYPE_2__*,char*,int ) ;

__attribute__((used)) static int icom_open(struct uart_port *port)
{
 int retval;

 kref_get(&ICOM_PORT->adapter->kref);
 retval = startup(ICOM_PORT);

 if (retval) {
  kref_put(&ICOM_PORT->adapter->kref, icom_kref_release);
  trace(ICOM_PORT, "STARTUP_ERROR", 0);
  return retval;
 }

 return 0;
}
