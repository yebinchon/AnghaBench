
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *ceph_mds_op_name(int op)
{
 switch (op) {
 case 151: return "lookup";
 case 150: return "lookuphash";
 case 147: return "lookupparent";
 case 149: return "lookupino";
 case 148: return "lookupname";
 case 154: return "getattr";
 case 130: return "setxattr";
 case 134: return "setattr";
 case 135: return "rmxattr";
 case 131: return "setlayou";
 case 133: return "setdirlayout";
 case 140: return "readdir";
 case 143: return "mknod";
 case 152: return "link";
 case 128: return "unlink";
 case 139: return "rename";
 case 144: return "mkdir";
 case 137: return "rmdir";
 case 129: return "symlink";
 case 155: return "create";
 case 141: return "open";
 case 146: return "lookupsnap";
 case 145: return "lssnap";
 case 142: return "mksnap";
 case 136: return "rmsnap";
 case 138: return "renamesnap";
 case 132: return "setfilelock";
 case 153: return "getfilelock";
 }
 return "???";
}
