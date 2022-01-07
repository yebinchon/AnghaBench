
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_endpoint {int dst_addr; int ip_type; int dst_port; } ;
struct iscsi_endpoint {struct qedi_endpoint* dd_data; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;


 int ENOTCONN ;


 int TCP_IPV4 ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static int qedi_ep_get_param(struct iscsi_endpoint *ep,
        enum iscsi_param param, char *buf)
{
 struct qedi_endpoint *qedi_ep = ep->dd_data;
 int len;

 if (!qedi_ep)
  return -ENOTCONN;

 switch (param) {
 case 128:
  len = sprintf(buf, "%hu\n", qedi_ep->dst_port);
  break;
 case 129:
  if (qedi_ep->ip_type == TCP_IPV4)
   len = sprintf(buf, "%pI4\n", qedi_ep->dst_addr);
  else
   len = sprintf(buf, "%pI6\n", qedi_ep->dst_addr);
  break;
 default:
  return -ENOTCONN;
 }

 return len;
}
