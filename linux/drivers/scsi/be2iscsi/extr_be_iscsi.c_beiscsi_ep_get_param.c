
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_endpoint {struct beiscsi_endpoint* dd_data; } ;
struct beiscsi_endpoint {int dst6_addr; int dst_addr; int ip_type; int * dst_tcpport; int phba; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;


 int BEISCSI_IP_TYPE_V4 ;
 int BEISCSI_LOG_CONFIG ;
 int EPERM ;


 int KERN_INFO ;
 int beiscsi_log (int ,int ,int ,char*,int) ;
 int sprintf (char*,char*,int *) ;

int beiscsi_ep_get_param(struct iscsi_endpoint *ep,
      enum iscsi_param param, char *buf)
{
 struct beiscsi_endpoint *beiscsi_ep = ep->dd_data;
 int len;

 beiscsi_log(beiscsi_ep->phba, KERN_INFO,
      BEISCSI_LOG_CONFIG,
      "BS_%d : In beiscsi_ep_get_param,"
      " param= %d\n", param);

 switch (param) {
 case 128:
  len = sprintf(buf, "%hu\n", beiscsi_ep->dst_tcpport);
  break;
 case 129:
  if (beiscsi_ep->ip_type == BEISCSI_IP_TYPE_V4)
   len = sprintf(buf, "%pI4\n", &beiscsi_ep->dst_addr);
  else
   len = sprintf(buf, "%pI6\n", &beiscsi_ep->dst6_addr);
  break;
 default:
  len = -EPERM;
 }
 return len;
}
