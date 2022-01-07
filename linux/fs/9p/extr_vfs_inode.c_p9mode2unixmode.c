
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct v9fs_session_info {scalar_t__ nodev; } ;
struct p9_wstat {int mode; int extension; } ;
typedef int ext ;
typedef scalar_t__ dev_t ;


 scalar_t__ MKDEV (int,int) ;
 int P9_DEBUG_ERROR ;
 int P9_DMDEVICE ;
 int P9_DMDIR ;
 int P9_DMNAMEDPIPE ;
 int P9_DMSOCKET ;
 int P9_DMSYMLINK ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFIFO ;
 int S_IFLNK ;
 int S_IFREG ;
 int S_IFSOCK ;
 int p9_debug (int ,char*,char,int ) ;
 int p9mode2perm (struct v9fs_session_info*,struct p9_wstat*) ;
 int sscanf (char*,char*,char*,int*,int*) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ v9fs_proto_dotu (struct v9fs_session_info*) ;

__attribute__((used)) static umode_t p9mode2unixmode(struct v9fs_session_info *v9ses,
          struct p9_wstat *stat, dev_t *rdev)
{
 int res;
 u32 mode = stat->mode;

 *rdev = 0;
 res = p9mode2perm(v9ses, stat);

 if ((mode & P9_DMDIR) == P9_DMDIR)
  res |= S_IFDIR;
 else if ((mode & P9_DMSYMLINK) && (v9fs_proto_dotu(v9ses)))
  res |= S_IFLNK;
 else if ((mode & P9_DMSOCKET) && (v9fs_proto_dotu(v9ses))
   && (v9ses->nodev == 0))
  res |= S_IFSOCK;
 else if ((mode & P9_DMNAMEDPIPE) && (v9fs_proto_dotu(v9ses))
   && (v9ses->nodev == 0))
  res |= S_IFIFO;
 else if ((mode & P9_DMDEVICE) && (v9fs_proto_dotu(v9ses))
   && (v9ses->nodev == 0)) {
  char type = 0, ext[32];
  int major = -1, minor = -1;

  strlcpy(ext, stat->extension, sizeof(ext));
  sscanf(ext, "%c %i %i", &type, &major, &minor);
  switch (type) {
  case 'c':
   res |= S_IFCHR;
   break;
  case 'b':
   res |= S_IFBLK;
   break;
  default:
   p9_debug(P9_DEBUG_ERROR, "Unknown special type %c %s\n",
     type, stat->extension);
  };
  *rdev = MKDEV(major, minor);
 } else
  res |= S_IFREG;

 return res;
}
