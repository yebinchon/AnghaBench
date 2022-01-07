
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *ISP1362_INT_NAME(int n)
{
 switch (n) {
 case 129: return "SOF";
 case 133: return "ISTL0";
 case 132: return "ISTL1";
 case 135: return "EOT";
 case 131: return "OPR";
 case 128: return "SUSP";
 case 136: return "CLKRDY";
 case 134: return "INTL";
 case 137: return "ATL";
 case 130: return "OTG";
 default: return "unknown";
 }
}
