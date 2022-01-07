
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tcpci {int regmap; } ;
struct tcpc_dev {int dummy; } ;
struct pd_message {int payload; int header; } ;
typedef enum tcpm_transmit_type { ____Placeholder_tcpm_transmit_type } tcpm_transmit_type ;


 int PD_RETRY_COUNT ;
 int TCPC_TRANSMIT ;
 int TCPC_TRANSMIT_RETRY_SHIFT ;
 int TCPC_TRANSMIT_TYPE_SHIFT ;
 int TCPC_TX_BYTE_CNT ;
 int TCPC_TX_DATA ;
 int TCPC_TX_HDR ;
 int le16_to_cpu (int ) ;
 int pd_header_cnt (int ) ;
 int regmap_raw_write (int ,int ,int *,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;
 struct tcpci* tcpc_to_tcpci (struct tcpc_dev*) ;
 int tcpci_write16 (struct tcpci*,int ,int ) ;

__attribute__((used)) static int tcpci_pd_transmit(struct tcpc_dev *tcpc,
        enum tcpm_transmit_type type,
        const struct pd_message *msg)
{
 struct tcpci *tcpci = tcpc_to_tcpci(tcpc);
 u16 header = msg ? le16_to_cpu(msg->header) : 0;
 unsigned int reg, cnt;
 int ret;

 cnt = msg ? pd_header_cnt(header) * 4 : 0;
 ret = regmap_write(tcpci->regmap, TCPC_TX_BYTE_CNT, cnt + 2);
 if (ret < 0)
  return ret;

 ret = tcpci_write16(tcpci, TCPC_TX_HDR, header);
 if (ret < 0)
  return ret;

 if (cnt > 0) {
  ret = regmap_raw_write(tcpci->regmap, TCPC_TX_DATA,
           &msg->payload, cnt);
  if (ret < 0)
   return ret;
 }

 reg = (PD_RETRY_COUNT << TCPC_TRANSMIT_RETRY_SHIFT) |
  (type << TCPC_TRANSMIT_TYPE_SHIFT);
 ret = regmap_write(tcpci->regmap, TCPC_TRANSMIT, reg);
 if (ret < 0)
  return ret;

 return 0;
}
