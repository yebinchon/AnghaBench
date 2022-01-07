
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port; int node; } ;
struct TYPE_3__ {int port; int node; int instance; int service; } ;
struct qrtr_ctrl_pkt {TYPE_2__ client; TYPE_1__ server; int cmd; } ;
struct qmi_handle {int dummy; } ;






 int le32_to_cpu (int ) ;
 int pr_debug (char*) ;
 int qmi_recv_bye (struct qmi_handle*,int) ;
 int qmi_recv_del_client (struct qmi_handle*,int,int) ;
 int qmi_recv_del_server (struct qmi_handle*,int,int) ;
 int qmi_recv_new_server (struct qmi_handle*,int,int,int,int) ;

__attribute__((used)) static void qmi_recv_ctrl_pkt(struct qmi_handle *qmi,
         const void *buf, size_t len)
{
 const struct qrtr_ctrl_pkt *pkt = buf;

 if (len < sizeof(struct qrtr_ctrl_pkt)) {
  pr_debug("ignoring short control packet\n");
  return;
 }

 switch (le32_to_cpu(pkt->cmd)) {
 case 131:
  qmi_recv_bye(qmi, le32_to_cpu(pkt->client.node));
  break;
 case 128:
  qmi_recv_new_server(qmi,
        le32_to_cpu(pkt->server.service),
        le32_to_cpu(pkt->server.instance),
        le32_to_cpu(pkt->server.node),
        le32_to_cpu(pkt->server.port));
  break;
 case 129:
  qmi_recv_del_server(qmi,
        le32_to_cpu(pkt->server.node),
        le32_to_cpu(pkt->server.port));
  break;
 case 130:
  qmi_recv_del_client(qmi,
        le32_to_cpu(pkt->client.node),
        le32_to_cpu(pkt->client.port));
  break;
 }
}
