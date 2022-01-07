
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cifs_dirent {int dummy; } ;


 int EINVAL ;
 int FYI ;






 int cifs_dbg (int ,char*,int) ;
 int cifs_fill_dirent_both (struct cifs_dirent*,void const*) ;
 int cifs_fill_dirent_dir (struct cifs_dirent*,void const*) ;
 int cifs_fill_dirent_full (struct cifs_dirent*,void const*) ;
 int cifs_fill_dirent_search (struct cifs_dirent*,void const*) ;
 int cifs_fill_dirent_std (struct cifs_dirent*,void const*) ;
 int cifs_fill_dirent_unix (struct cifs_dirent*,void const*,int) ;
 int memset (struct cifs_dirent*,int ,int) ;

__attribute__((used)) static int cifs_fill_dirent(struct cifs_dirent *de, const void *info,
  u16 level, bool is_unicode)
{
 memset(de, 0, sizeof(*de));

 switch (level) {
 case 128:
  cifs_fill_dirent_unix(de, info, is_unicode);
  break;
 case 132:
  cifs_fill_dirent_dir(de, info);
  break;
 case 131:
  cifs_fill_dirent_full(de, info);
  break;
 case 130:
  cifs_fill_dirent_search(de, info);
  break;
 case 133:
  cifs_fill_dirent_both(de, info);
  break;
 case 129:
  cifs_fill_dirent_std(de, info);
  break;
 default:
  cifs_dbg(FYI, "Unknown findfirst level %d\n", level);
  return -EINVAL;
 }

 return 0;
}
