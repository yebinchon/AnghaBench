
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_lease_op_name(int o)
{
 switch (o) {
 case 129: return "revoke";
 case 131: return "release";
 case 130: return "renew";
 case 128: return "revoke_ack";
 }
 return "???";
}
