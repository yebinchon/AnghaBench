
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_port {int status; scalar_t__ wwpn; TYPE_2__* adapter; int erp_counter; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;
struct TYPE_4__ {TYPE_1__* ccw_device; } ;
struct TYPE_3__ {int dev; } ;
 int ZFCP_MAX_ERPS ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_NOESC ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,unsigned long long) ;
 int zfcp_erp_port_block (struct zfcp_port*,int ) ;
 int zfcp_erp_port_unblock (struct zfcp_port*) ;
 int zfcp_erp_set_port_status (struct zfcp_port*,int) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_strategy_check_port(
 struct zfcp_port *port, enum zfcp_erp_act_result result)
{
 switch (result) {
 case 128 :
  atomic_set(&port->erp_counter, 0);
  zfcp_erp_port_unblock(port);
  break;

 case 130 :
  if (atomic_read(&port->status) & ZFCP_STATUS_COMMON_NOESC) {
   zfcp_erp_port_block(port, 0);
   result = 131;
  }
  atomic_inc(&port->erp_counter);
  if (atomic_read(&port->erp_counter) > ZFCP_MAX_ERPS) {
   dev_err(&port->adapter->ccw_device->dev,
    "ERP failed for remote port 0x%016Lx\n",
    (unsigned long long)port->wwpn);
   zfcp_erp_set_port_status(port,
      ZFCP_STATUS_COMMON_ERP_FAILED);
  }
  break;
 case 133:
 case 131:
 case 132:
 case 129:

  break;
 }

 if (atomic_read(&port->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
  zfcp_erp_port_block(port, 0);
  result = 131;
 }
 return result;
}
