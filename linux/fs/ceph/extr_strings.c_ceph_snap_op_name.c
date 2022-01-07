
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_snap_op_name(int o)
{
 switch (o) {
 case 128: return "update";
 case 131: return "create";
 case 130: return "destroy";
 case 129: return "split";
 }
 return "???";
}
