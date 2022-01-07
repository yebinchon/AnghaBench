
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *cw1200_debug_mode(int mode)
{
 switch (mode) {
 case 128:
  return "unspecified";
 case 132:
  return "monitor";
 case 129:
  return "station";
 case 135:
  return "adhoc";
 case 133:
  return "mesh point";
 case 134:
  return "access point";
 case 131:
  return "p2p client";
 case 130:
  return "p2p go";
 default:
  return "unsupported";
 }
}
