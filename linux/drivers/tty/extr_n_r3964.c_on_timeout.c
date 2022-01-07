
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct r3964_info {int state; int rx_position; } ;


 int NAK ;
 void* R3964_IDLE ;







 int TRACE_PE (char*,...) ;
 int flush (struct r3964_info*) ;
 struct r3964_info* from_timer (int ,struct timer_list*,int ) ;
 struct r3964_info* pInfo ;
 int put_char (struct r3964_info*,int ) ;
 int retry_transmit (struct r3964_info*) ;
 int tmr ;

__attribute__((used)) static void on_timeout(struct timer_list *t)
{
 struct r3964_info *pInfo = from_timer(pInfo, t, tmr);

 switch (pInfo->state) {
 case 133:
  TRACE_PE("TX_REQUEST - timeout");
  retry_transmit(pInfo);
  break;
 case 128:
  put_char(pInfo, NAK);
  flush(pInfo);
  retry_transmit(pInfo);
  break;
 case 129:
  TRACE_PE("WAIT_FOR_TX_ACK - timeout");
  retry_transmit(pInfo);
  break;
 case 131:
  TRACE_PE("WAIT_FOR_RX_BUF - timeout");
  put_char(pInfo, NAK);
  flush(pInfo);
  pInfo->state = R3964_IDLE;
  break;
 case 134:
  TRACE_PE("RECEIVING - timeout after %d chars",
    pInfo->rx_position);
  put_char(pInfo, NAK);
  flush(pInfo);
  pInfo->state = R3964_IDLE;
  break;
 case 130:
  TRACE_PE("WAIT_FOR_RX_REPEAT - timeout");
  pInfo->state = R3964_IDLE;
  break;
 case 132:
  TRACE_PE("WAIT_FOR_BCC - timeout");
  put_char(pInfo, NAK);
  flush(pInfo);
  pInfo->state = R3964_IDLE;
  break;
 }
}
