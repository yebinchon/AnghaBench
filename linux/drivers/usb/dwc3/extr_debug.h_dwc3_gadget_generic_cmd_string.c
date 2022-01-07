
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static inline const char *
dwc3_gadget_generic_cmd_string(u8 cmd)
{
 switch (cmd) {
 case 132:
  return "Set LMP";
 case 131:
  return "Set Periodic Parameters";
 case 128:
  return "Transmit Function Wake Device Notification";
 case 129:
  return "Set Scratchpad Buffer Array Address Lo";
 case 130:
  return "Set Scratchpad Buffer Array Address Hi";
 case 134:
  return "Selected FIFO Flush";
 case 136:
  return "All FIFO Flush";
 case 133:
  return "Set Endpoint NRDY";
 case 135:
  return "Run SoC Bus Loopback Test";
 default:
  return "UNKNOWN";
 }
}
