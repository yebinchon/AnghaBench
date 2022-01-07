
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_options {int dummy; } ;
struct ceph_mount_options {int sb_flags; void* server_path; int congestion_kb; int max_readdir_bytes; int max_readdir; int caps_wanted_delay_max; int caps_wanted_delay_min; void* snapdir_name; int rasize; int rsize; int wsize; int flags; } ;


 int CEPH_CAPS_WANTED_DELAY_MAX_DEFAULT ;
 int CEPH_CAPS_WANTED_DELAY_MIN_DEFAULT ;
 int CEPH_MAX_READDIR_BYTES_DEFAULT ;
 int CEPH_MAX_READDIR_DEFAULT ;
 int CEPH_MAX_READ_SIZE ;
 int CEPH_MAX_WRITE_SIZE ;
 int CEPH_MOUNT_OPT_DEFAULT ;
 int CEPH_RASIZE_DEFAULT ;
 char const* CEPH_SNAPDIRNAME_DEFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ceph_options*) ;
 int PTR_ERR (struct ceph_options*) ;
 struct ceph_options* ceph_parse_options (char*,char const*,char const*,int ,void*) ;
 int default_congestion_kb () ;
 int destroy_mount_options (struct ceph_mount_options*) ;
 int dout (char*,...) ;
 void* kstrdup (char const*,int ) ;
 struct ceph_mount_options* kzalloc (int,int ) ;
 int parse_fsopt_token ;
 int pr_err (char*,char const*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static int parse_mount_options(struct ceph_mount_options **pfsopt,
          struct ceph_options **popt,
          int flags, char *options,
          const char *dev_name)
{
 struct ceph_mount_options *fsopt;
 const char *dev_name_end;
 int err;

 if (!dev_name || !*dev_name)
  return -EINVAL;

 fsopt = kzalloc(sizeof(*fsopt), GFP_KERNEL);
 if (!fsopt)
  return -ENOMEM;

 dout("parse_mount_options %p, dev_name '%s'\n", fsopt, dev_name);

 fsopt->sb_flags = flags;
 fsopt->flags = CEPH_MOUNT_OPT_DEFAULT;

 fsopt->wsize = CEPH_MAX_WRITE_SIZE;
 fsopt->rsize = CEPH_MAX_READ_SIZE;
 fsopt->rasize = CEPH_RASIZE_DEFAULT;
 fsopt->snapdir_name = kstrdup(CEPH_SNAPDIRNAME_DEFAULT, GFP_KERNEL);
 if (!fsopt->snapdir_name) {
  err = -ENOMEM;
  goto out;
 }

 fsopt->caps_wanted_delay_min = CEPH_CAPS_WANTED_DELAY_MIN_DEFAULT;
 fsopt->caps_wanted_delay_max = CEPH_CAPS_WANTED_DELAY_MAX_DEFAULT;
 fsopt->max_readdir = CEPH_MAX_READDIR_DEFAULT;
 fsopt->max_readdir_bytes = CEPH_MAX_READDIR_BYTES_DEFAULT;
 fsopt->congestion_kb = default_congestion_kb();
 dev_name_end = strchr(dev_name, '/');
 if (dev_name_end) {
  if (strlen(dev_name_end) > 1) {
   fsopt->server_path = kstrdup(dev_name_end, GFP_KERNEL);
   if (!fsopt->server_path) {
    err = -ENOMEM;
    goto out;
   }
  }
 } else {
  dev_name_end = dev_name + strlen(dev_name);
 }
 err = -EINVAL;
 dev_name_end--;
 if (dev_name_end < dev_name || *dev_name_end != ':') {
  pr_err("device name is missing path (no : separator in %s)\n",
    dev_name);
  goto out;
 }
 dout("device name '%.*s'\n", (int)(dev_name_end - dev_name), dev_name);
 if (fsopt->server_path)
  dout("server path '%s'\n", fsopt->server_path);

 *popt = ceph_parse_options(options, dev_name, dev_name_end,
     parse_fsopt_token, (void *)fsopt);
 if (IS_ERR(*popt)) {
  err = PTR_ERR(*popt);
  goto out;
 }


 *pfsopt = fsopt;
 return 0;

out:
 destroy_mount_options(fsopt);
 return err;
}
