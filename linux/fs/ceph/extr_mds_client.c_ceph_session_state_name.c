
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_session_state_name(int s)
{
 switch (s) {
 case 133: return "new";
 case 131: return "opening";
 case 132: return "open";
 case 134: return "hung";
 case 135: return "closing";
 case 128: return "restarting";
 case 130: return "reconnecting";
 case 129: return "rejected";
 default: return "???";
 }
}
