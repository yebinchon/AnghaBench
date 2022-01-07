
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct se_device {int dummy; } ;
struct fd_dev {int fbd_flags; int fd_dev_size; int fd_dev_name; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 int FBDF_HAS_PATH ;
 int FBDF_HAS_SIZE ;
 int FDBD_HAS_ASYNC_IO ;
 int FDBD_HAS_BUFFERED_IO_WCE ;
 struct fd_dev* FD_DEV (struct se_device*) ;
 int FD_MAX_DEV_NAME ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;




 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int kstrtoull (char*,int ,int *) ;
 int match_int (int *,int*) ;
 char* match_strdup (int *) ;
 int match_strlcpy (int ,int *,int ) ;
 int match_token (char*,int ,int *) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,...) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static ssize_t fd_set_configfs_dev_params(struct se_device *dev,
  const char *page, ssize_t count)
{
 struct fd_dev *fd_dev = FD_DEV(dev);
 char *orig, *ptr, *arg_p, *opts;
 substring_t args[MAX_OPT_ARGS];
 int ret = 0, arg, token;

 opts = kstrdup(page, GFP_KERNEL);
 if (!opts)
  return -ENOMEM;

 orig = opts;

 while ((ptr = strsep(&opts, ",\n")) != ((void*)0)) {
  if (!*ptr)
   continue;

  token = match_token(ptr, tokens, args);
  switch (token) {
  case 129:
   if (match_strlcpy(fd_dev->fd_dev_name, &args[0],
    FD_MAX_DEV_NAME) == 0) {
    ret = -EINVAL;
    break;
   }
   pr_debug("FILEIO: Referencing Path: %s\n",
     fd_dev->fd_dev_name);
   fd_dev->fbd_flags |= FBDF_HAS_PATH;
   break;
  case 128:
   arg_p = match_strdup(&args[0]);
   if (!arg_p) {
    ret = -ENOMEM;
    break;
   }
   ret = kstrtoull(arg_p, 0, &fd_dev->fd_dev_size);
   kfree(arg_p);
   if (ret < 0) {
    pr_err("kstrtoull() failed for"
      " fd_dev_size=\n");
    goto out;
   }
   pr_debug("FILEIO: Referencing Size: %llu"
     " bytes\n", fd_dev->fd_dev_size);
   fd_dev->fbd_flags |= FBDF_HAS_SIZE;
   break;
  case 130:
   ret = match_int(args, &arg);
   if (ret)
    goto out;
   if (arg != 1) {
    pr_err("bogus fd_buffered_io=%d value\n", arg);
    ret = -EINVAL;
    goto out;
   }

   pr_debug("FILEIO: Using buffered I/O"
    " operations for struct fd_dev\n");

   fd_dev->fbd_flags |= FDBD_HAS_BUFFERED_IO_WCE;
   break;
  case 131:
   ret = match_int(args, &arg);
   if (ret)
    goto out;
   if (arg != 1) {
    pr_err("bogus fd_async_io=%d value\n", arg);
    ret = -EINVAL;
    goto out;
   }

   pr_debug("FILEIO: Using async I/O"
    " operations for struct fd_dev\n");

   fd_dev->fbd_flags |= FDBD_HAS_ASYNC_IO;
   break;
  default:
   break;
  }
 }

out:
 kfree(orig);
 return (!ret) ? count : ret;
}
