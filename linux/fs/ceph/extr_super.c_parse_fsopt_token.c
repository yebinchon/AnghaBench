
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int from; int to; } ;
typedef TYPE_1__ substring_t ;
struct ceph_mount_options {int caps_wanted_delay_min; int caps_wanted_delay_max; int caps_max; int max_readdir; int max_readdir_bytes; int congestion_kb; int sb_flags; int flags; int * fscache_uniq; void* rasize; void* rsize; void* wsize; int * mds_namespace; int * snapdir_name; } ;


 void* ALIGN (int,scalar_t__) ;
 int BUG_ON (int) ;
 int CEPH_MAX_READ_SIZE ;
 int CEPH_MAX_WRITE_SIZE ;
 int CEPH_MOUNT_OPT_CLEANRECOVER ;
 int CEPH_MOUNT_OPT_DCACHE ;
 int CEPH_MOUNT_OPT_DIRSTAT ;
 int CEPH_MOUNT_OPT_FSCACHE ;
 int CEPH_MOUNT_OPT_INO32 ;
 int CEPH_MOUNT_OPT_MOUNTWAIT ;
 int CEPH_MOUNT_OPT_NOASYNCREADDIR ;
 int CEPH_MOUNT_OPT_NOCOPYFROM ;
 int CEPH_MOUNT_OPT_NOPOOLPERM ;
 int CEPH_MOUNT_OPT_NOQUOTADF ;
 int CEPH_MOUNT_OPT_RBYTES ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;
 int Opt_last_int ;
 int Opt_last_string ;
 scalar_t__ PAGE_SIZE ;
 int SB_POSIXACL ;
 int dout (char*,int,...) ;
 int fsopt_tokens ;
 int kfree (int *) ;
 void* kstrndup (int ,int ,int ) ;
 int match_int (TYPE_1__*,int*) ;
 int match_token (char*,int ,TYPE_1__*) ;
 int pr_err (char*,...) ;
 int strncmp (int ,char*,int ) ;

__attribute__((used)) static int parse_fsopt_token(char *c, void *private)
{
 struct ceph_mount_options *fsopt = private;
 substring_t argstr[MAX_OPT_ARGS];
 int token, intval, ret;

 token = match_token((char *)c, fsopt_tokens, argstr);
 if (token < 0)
  return -EINVAL;

 if (token < Opt_last_int) {
  ret = match_int(&argstr[0], &intval);
  if (ret < 0) {
   pr_err("bad option arg (not int) at '%s'\n", c);
   return ret;
  }
  dout("got int token %d val %d\n", token, intval);
 } else if (token > Opt_last_int && token < Opt_last_string) {
  dout("got string token %d val %s\n", token,
       argstr[0].from);
 } else {
  dout("got token %d\n", token);
 }

 switch (token) {
 case 129:
  kfree(fsopt->snapdir_name);
  fsopt->snapdir_name = kstrndup(argstr[0].from,
            argstr[0].to-argstr[0].from,
            GFP_KERNEL);
  if (!fsopt->snapdir_name)
   return -ENOMEM;
  break;
 case 150:
  kfree(fsopt->mds_namespace);
  fsopt->mds_namespace = kstrndup(argstr[0].from,
      argstr[0].to-argstr[0].from,
      GFP_KERNEL);
  if (!fsopt->mds_namespace)
   return -ENOMEM;
  break;
 case 132:
  if (!strncmp(argstr[0].from, "no",
        argstr[0].to - argstr[0].from)) {
   fsopt->flags &= ~CEPH_MOUNT_OPT_CLEANRECOVER;
  } else if (!strncmp(argstr[0].from, "clean",
        argstr[0].to - argstr[0].from)) {
   fsopt->flags |= CEPH_MOUNT_OPT_CLEANRECOVER;
  } else {
   return -EINVAL;
  }
  break;
 case 152:
  pr_err("fscache support is disabled\n");
  return -EINVAL;

 case 128:
  if (intval < (int)PAGE_SIZE || intval > CEPH_MAX_WRITE_SIZE)
   return -EINVAL;
  fsopt->wsize = ALIGN(intval, PAGE_SIZE);
  break;
 case 130:
  if (intval < (int)PAGE_SIZE || intval > CEPH_MAX_READ_SIZE)
   return -EINVAL;
  fsopt->rsize = ALIGN(intval, PAGE_SIZE);
  break;
 case 136:
  if (intval < 0)
   return -EINVAL;
  fsopt->rasize = ALIGN(intval, PAGE_SIZE);
  break;
 case 158:
  if (intval < 1)
   return -EINVAL;
  fsopt->caps_wanted_delay_min = intval;
  break;
 case 159:
  if (intval < 1)
   return -EINVAL;
  fsopt->caps_wanted_delay_max = intval;
  break;
 case 160:
  if (intval < 0)
   return -EINVAL;
  fsopt->caps_max = intval;
  break;
 case 133:
  if (intval < 1)
   return -EINVAL;
  fsopt->max_readdir = intval;
  break;
 case 134:
  if (intval < (int)PAGE_SIZE && intval != 0)
   return -EINVAL;
  fsopt->max_readdir_bytes = intval;
  break;
 case 157:
  if (intval < 1024)
   return -EINVAL;
  fsopt->congestion_kb = intval;
  break;
 case 154:
  fsopt->flags |= CEPH_MOUNT_OPT_DIRSTAT;
  break;
 case 145:
  fsopt->flags &= ~CEPH_MOUNT_OPT_DIRSTAT;
  break;
 case 135:
  fsopt->flags |= CEPH_MOUNT_OPT_RBYTES;
  break;
 case 140:
  fsopt->flags &= ~CEPH_MOUNT_OPT_RBYTES;
  break;
 case 161:
  fsopt->flags &= ~CEPH_MOUNT_OPT_NOASYNCREADDIR;
  break;
 case 148:
  fsopt->flags |= CEPH_MOUNT_OPT_NOASYNCREADDIR;
  break;
 case 155:
  fsopt->flags |= CEPH_MOUNT_OPT_DCACHE;
  break;
 case 146:
  fsopt->flags &= ~CEPH_MOUNT_OPT_DCACHE;
  break;
 case 151:
  fsopt->flags |= CEPH_MOUNT_OPT_INO32;
  break;
 case 143:
  fsopt->flags &= ~CEPH_MOUNT_OPT_INO32;
  break;
 case 153:






  pr_err("fscache support is disabled\n");
  return -EINVAL;

 case 144:
  fsopt->flags &= ~CEPH_MOUNT_OPT_FSCACHE;
  kfree(fsopt->fscache_uniq);
  fsopt->fscache_uniq = ((void*)0);
  break;
 case 138:
  fsopt->flags &= ~CEPH_MOUNT_OPT_NOPOOLPERM;
  break;
 case 142:
  fsopt->flags |= CEPH_MOUNT_OPT_NOPOOLPERM;
  break;
 case 131:
  fsopt->flags &= ~CEPH_MOUNT_OPT_MOUNTWAIT;
  break;
 case 139:
  fsopt->flags |= CEPH_MOUNT_OPT_MOUNTWAIT;
  break;
 case 137:
  fsopt->flags &= ~CEPH_MOUNT_OPT_NOQUOTADF;
  break;
 case 141:
  fsopt->flags |= CEPH_MOUNT_OPT_NOQUOTADF;
  break;
 case 156:
  fsopt->flags &= ~CEPH_MOUNT_OPT_NOCOPYFROM;
  break;
 case 147:
  fsopt->flags |= CEPH_MOUNT_OPT_NOCOPYFROM;
  break;





 case 149:
  fsopt->sb_flags &= ~SB_POSIXACL;
  break;
 default:
  BUG_ON(token);
 }
 return 0;
}
