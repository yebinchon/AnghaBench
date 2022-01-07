
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct nls_table {int dummy; } ;
typedef int __le16 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PATH_MAX ;
 int UniStrcat (int *,int const*) ;
 int UniStrnlen (int *,int ) ;
 int cifs_strtoUTF16 (int *,char const*,int,struct nls_table*) ;
 int const cpu_to_le16 (int) ;
 int * kzalloc (int,int ) ;
 struct nls_table* load_nls_default () ;
 int roundup (int,int) ;
 int strlen (char const*) ;
 int unload_nls (struct nls_table*) ;

__attribute__((used)) static int
alloc_path_with_tree_prefix(__le16 **out_path, int *out_size, int *out_len,
       const char *treename, const __le16 *path)
{
 int treename_len, path_len;
 struct nls_table *cp;
 const __le16 sep[] = {cpu_to_le16('\\'), cpu_to_le16(0x0000)};




 treename_len = strlen(treename);
 if (treename_len < 2 || !(treename[0] == '\\' && treename[1] == '\\'))
  return -EINVAL;

 treename += 2;
 treename_len -= 2;

 path_len = UniStrnlen((wchar_t *)path, PATH_MAX);





 *out_len = treename_len + 1 + path_len;






 *out_size = roundup((*out_len+1)*2, 8);
 *out_path = kzalloc(*out_size, GFP_KERNEL);
 if (!*out_path)
  return -ENOMEM;

 cp = load_nls_default();
 cifs_strtoUTF16(*out_path, treename, treename_len, cp);
 UniStrcat(*out_path, sep);
 UniStrcat(*out_path, path);
 unload_nls(cp);

 return 0;
}
