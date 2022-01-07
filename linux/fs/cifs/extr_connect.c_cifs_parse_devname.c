
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {int prepath; int UNC; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VFS ;
 int cifs_dbg (int ,char*) ;
 int convert_delimiter (int ,char) ;
 int kstrdup (char*,int ) ;
 int kstrndup (char const*,int,int ) ;
 size_t strcspn (char*,char const*) ;
 char* strpbrk (char const*,char const*) ;
 size_t strspn (char const*,char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
cifs_parse_devname(const char *devname, struct smb_vol *vol)
{
 char *pos;
 const char *delims = "/\\";
 size_t len;

 if (unlikely(!devname || !*devname)) {
  cifs_dbg(VFS, "Device name not specified.\n");
  return -EINVAL;
 }


 len = strspn(devname, delims);
 if (len != 2)
  return -EINVAL;


 pos = strpbrk(devname + 2, delims);
 if (!pos)
  return -EINVAL;


 ++pos;


 len = strcspn(pos, delims);


 pos += len;
 vol->UNC = kstrndup(devname, pos - devname, GFP_KERNEL);
 if (!vol->UNC)
  return -ENOMEM;

 convert_delimiter(vol->UNC, '\\');


 if (*pos == '/' || *pos == '\\')
  pos++;


 if (!*pos)
  return 0;

 vol->prepath = kstrdup(pos, GFP_KERNEL);
 if (!vol->prepath)
  return -ENOMEM;

 return 0;
}
