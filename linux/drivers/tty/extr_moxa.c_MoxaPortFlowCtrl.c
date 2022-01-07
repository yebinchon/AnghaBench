
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moxa_port {int tableAddr; } ;


 int CTS_FlowCtl ;
 int FC_SetFlowCtl ;
 int IXM_IXANY ;
 int RTS_FlowCtl ;
 int Rx_FlowCtl ;
 int Tx_FlowCtl ;
 int moxafunc (int ,int ,int) ;

__attribute__((used)) static void MoxaPortFlowCtrl(struct moxa_port *port, int rts, int cts,
  int txflow, int rxflow, int txany)
{
 int mode = 0;

 if (rts)
  mode |= RTS_FlowCtl;
 if (cts)
  mode |= CTS_FlowCtl;
 if (txflow)
  mode |= Tx_FlowCtl;
 if (rxflow)
  mode |= Rx_FlowCtl;
 if (txany)
  mode |= IXM_IXANY;
 moxafunc(port->tableAddr, FC_SetFlowCtl, mode);
}
