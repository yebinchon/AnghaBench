
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_session_op_name(int op)
{
 switch (op) {
 case 130: return "request_open";
 case 135: return "open";
 case 131: return "request_close";
 case 139: return "close";
 case 129: return "request_renewcaps";
 case 132: return "renewcaps";
 case 128: return "stale";
 case 134: return "recall_state";
 case 138: return "flushmsg";
 case 137: return "flushmsg_ack";
 case 136: return "force_ro";
 case 133: return "reject";
 }
 return "???";
}
