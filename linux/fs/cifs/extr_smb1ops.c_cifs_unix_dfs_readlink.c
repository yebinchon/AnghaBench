
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
struct dfs_info3_param {int node_name; int member_0; } ;
struct cifs_tcon {int ses; } ;


 int ENOMEM ;
 int EREMOTE ;
 int GFP_KERNEL ;
 int free_dfs_info_param (struct dfs_info3_param*) ;
 int get_dfs_path (unsigned int const,int ,unsigned char const*,struct nls_table const*,struct dfs_info3_param*,int ) ;
 char* kstrndup (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int
cifs_unix_dfs_readlink(const unsigned int xid, struct cifs_tcon *tcon,
         const unsigned char *searchName, char **symlinkinfo,
         const struct nls_table *nls_codepage)
{
 return -EREMOTE;

}
