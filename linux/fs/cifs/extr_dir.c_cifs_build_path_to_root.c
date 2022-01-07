
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {int prepath; } ;
struct cifs_tcon {int treeName; } ;
struct cifs_sb_info {int dummy; } ;


 char CIFS_DIR_SEP (struct cifs_sb_info*) ;
 int GFP_KERNEL ;
 scalar_t__ MAX_TREE_SIZE ;
 int convert_delimiter (char*,char) ;
 char* kmalloc (int,int ) ;
 char* kzalloc (int,int ) ;
 int memcpy (char*,int ,int) ;
 int strlen (int ) ;
 int strnlen (int ,scalar_t__) ;

char *
cifs_build_path_to_root(struct smb_vol *vol, struct cifs_sb_info *cifs_sb,
   struct cifs_tcon *tcon, int add_treename)
{
 int pplen = vol->prepath ? strlen(vol->prepath) + 1 : 0;
 int dfsplen;
 char *full_path = ((void*)0);


 if (pplen == 0) {
  full_path = kzalloc(1, GFP_KERNEL);
  return full_path;
 }

 if (add_treename)
  dfsplen = strnlen(tcon->treeName, MAX_TREE_SIZE + 1);
 else
  dfsplen = 0;

 full_path = kmalloc(dfsplen + pplen + 1, GFP_KERNEL);
 if (full_path == ((void*)0))
  return full_path;

 if (dfsplen)
  memcpy(full_path, tcon->treeName, dfsplen);
 full_path[dfsplen] = CIFS_DIR_SEP(cifs_sb);
 memcpy(full_path + dfsplen + 1, vol->prepath, pplen);
 convert_delimiter(full_path, CIFS_DIR_SEP(cifs_sb));
 return full_path;
}
