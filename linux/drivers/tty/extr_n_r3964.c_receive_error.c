
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_info {int flags; } ;


 int R3964_BREAK ;
 int R3964_FRAME ;
 int R3964_OVERRUN ;
 int R3964_PARITY ;
 int R3964_UNKNOWN ;
 int TRACE_PE (char*,...) ;






__attribute__((used)) static void receive_error(struct r3964_info *pInfo, const char flag)
{
 switch (flag) {
 case 130:
  break;
 case 132:
  TRACE_PE("received break");
  pInfo->flags |= R3964_BREAK;
  break;
 case 128:
  TRACE_PE("parity error");
  pInfo->flags |= R3964_PARITY;
  break;
 case 131:
  TRACE_PE("frame error");
  pInfo->flags |= R3964_FRAME;
  break;
 case 129:
  TRACE_PE("frame overrun");
  pInfo->flags |= R3964_OVERRUN;
  break;
 default:
  TRACE_PE("receive_error - unknown flag %d", flag);
  pInfo->flags |= R3964_UNKNOWN;
  break;
 }
}
