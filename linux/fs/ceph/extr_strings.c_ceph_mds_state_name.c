
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_mds_state_name(int s)
{
 switch (s) {

 case 138: return "down:dne";
 case 129: return "down:stopped";

 case 141: return "up:boot";
 case 132: return "up:standby";
 case 131: return "up:standby-replay";
 case 134: return "up:oneshot-replay";
 case 139: return "up:creating";
 case 130: return "up:starting";

 case 135: return "up:replay";
 case 133: return "up:resolve";
 case 137: return "up:reconnect";
 case 136: return "up:rejoin";
 case 140: return "up:clientreplay";
 case 142: return "up:active";
 case 128: return "up:stopping";
 }
 return "???";
}
