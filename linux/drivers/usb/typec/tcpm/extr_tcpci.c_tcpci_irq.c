
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tcpci {int port; int regmap; } ;
struct pd_message {int payload; int header; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TCPC_ALERT ;
 int TCPC_ALERT_CC_STATUS ;
 int TCPC_ALERT_POWER_STATUS ;
 int TCPC_ALERT_RX_HARD_RST ;
 int TCPC_ALERT_RX_STATUS ;
 int TCPC_ALERT_TX_DISCARDED ;
 int TCPC_ALERT_TX_FAILED ;
 int TCPC_ALERT_TX_SUCCESS ;
 int TCPC_POWER_STATUS_MASK ;
 int TCPC_RX_BYTE_CNT ;
 int TCPC_RX_DATA ;
 int TCPC_RX_HDR ;
 int TCPC_TX_DISCARDED ;
 int TCPC_TX_FAILED ;
 int TCPC_TX_SUCCESS ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_le16 (int) ;
 int regmap_raw_read (int ,int ,int *,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int tcpci_read16 (struct tcpci*,int ,int*) ;
 int tcpci_write16 (struct tcpci*,int ,int) ;
 int tcpm_cc_change (int ) ;
 int tcpm_pd_hard_reset (int ) ;
 int tcpm_pd_receive (int ,struct pd_message*) ;
 int tcpm_pd_transmit_complete (int ,int ) ;
 int tcpm_tcpc_reset (int ) ;
 int tcpm_vbus_change (int ) ;

irqreturn_t tcpci_irq(struct tcpci *tcpci)
{
 u16 status;

 tcpci_read16(tcpci, TCPC_ALERT, &status);





 if (status & ~TCPC_ALERT_RX_STATUS)
  tcpci_write16(tcpci, TCPC_ALERT,
         status & ~TCPC_ALERT_RX_STATUS);

 if (status & TCPC_ALERT_CC_STATUS)
  tcpm_cc_change(tcpci->port);

 if (status & TCPC_ALERT_POWER_STATUS) {
  unsigned int reg;

  regmap_read(tcpci->regmap, TCPC_POWER_STATUS_MASK, &reg);





  if (reg == 0xff)
   tcpm_tcpc_reset(tcpci->port);
  else
   tcpm_vbus_change(tcpci->port);
 }

 if (status & TCPC_ALERT_RX_STATUS) {
  struct pd_message msg;
  unsigned int cnt;
  u16 header;

  regmap_read(tcpci->regmap, TCPC_RX_BYTE_CNT, &cnt);

  tcpci_read16(tcpci, TCPC_RX_HDR, &header);
  msg.header = cpu_to_le16(header);

  if (WARN_ON(cnt > sizeof(msg.payload)))
   cnt = sizeof(msg.payload);

  if (cnt > 0)
   regmap_raw_read(tcpci->regmap, TCPC_RX_DATA,
     &msg.payload, cnt);


  tcpci_write16(tcpci, TCPC_ALERT, TCPC_ALERT_RX_STATUS);

  tcpm_pd_receive(tcpci->port, &msg);
 }

 if (status & TCPC_ALERT_RX_HARD_RST)
  tcpm_pd_hard_reset(tcpci->port);

 if (status & TCPC_ALERT_TX_SUCCESS)
  tcpm_pd_transmit_complete(tcpci->port, TCPC_TX_SUCCESS);
 else if (status & TCPC_ALERT_TX_DISCARDED)
  tcpm_pd_transmit_complete(tcpci->port, TCPC_TX_DISCARDED);
 else if (status & TCPC_ALERT_TX_FAILED)
  tcpm_pd_transmit_complete(tcpci->port, TCPC_TX_FAILED);

 return IRQ_HANDLED;
}
