
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_cap_op_name(int op)
{
 switch (op) {
 case 134: return "grant";
 case 130: return "revoke";
 case 129: return "trunc";
 case 139: return "export";
 case 133: return "import";
 case 128: return "update";
 case 140: return "drop";
 case 138: return "flush";
 case 135: return "flush_ack";
 case 137: return "flushsnap";
 case 136: return "flushsnap_ack";
 case 132: return "release";
 case 131: return "renew";
 }
 return "???";
}
