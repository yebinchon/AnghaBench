
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nls_table {int dummy; } ;
struct get_dfs_referral_rsp {scalar_t__ NumberOfReferrals; scalar_t__ PathConsumed; int DFSFlags; int referrals; } ;
struct dfs_referral_level_3 {scalar_t__ VersionNumber; scalar_t__ ServerType; scalar_t__ ReferralEntryFlags; scalar_t__ DfsPathOffset; scalar_t__ NetworkAddressOffset; int TimeToLive; } ;
struct dfs_info3_param {int path_consumed; int server_type; int ref_flag; void* ttl; void* node_name; void* path_name; void* flags; } ;
typedef int __le16 ;


 int EINVAL ;
 int ENOMEM ;
 int FYI ;
 int GFP_KERNEL ;
 int PATH_MAX ;
 int VFS ;
 int cifsConvertToUTF16 (int *,char const*,int ,struct nls_table const*,int) ;
 int cifs_dbg (int ,char*,unsigned int,...) ;
 void* cifs_strndup_from_utf16 (char*,int,int,struct nls_table const*) ;
 int cifs_utf16_bytes (int *,int,struct nls_table const*) ;
 scalar_t__ cpu_to_le16 (int) ;
 int free_dfs_info_array (struct dfs_info3_param*,unsigned int) ;
 struct dfs_info3_param* kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int le16_to_cpu (scalar_t__) ;
 void* le32_to_cpu (int ) ;
 int strlen (char const*) ;

int
parse_dfs_referrals(struct get_dfs_referral_rsp *rsp, u32 rsp_size,
      unsigned int *num_of_nodes,
      struct dfs_info3_param **target_nodes,
      const struct nls_table *nls_codepage, int remap,
      const char *searchName, bool is_unicode)
{
 int i, rc = 0;
 char *data_end;
 struct dfs_referral_level_3 *ref;

 *num_of_nodes = le16_to_cpu(rsp->NumberOfReferrals);

 if (*num_of_nodes < 1) {
  cifs_dbg(VFS, "num_referrals: must be at least > 0, but we get num_referrals = %d\n",
    *num_of_nodes);
  rc = -EINVAL;
  goto parse_DFS_referrals_exit;
 }

 ref = (struct dfs_referral_level_3 *) &(rsp->referrals);
 if (ref->VersionNumber != cpu_to_le16(3)) {
  cifs_dbg(VFS, "Referrals of V%d version are not supported, should be V3\n",
    le16_to_cpu(ref->VersionNumber));
  rc = -EINVAL;
  goto parse_DFS_referrals_exit;
 }


 data_end = (char *)rsp + rsp_size;

 cifs_dbg(FYI, "num_referrals: %d dfs flags: 0x%x ...\n",
   *num_of_nodes, le32_to_cpu(rsp->DFSFlags));

 *target_nodes = kcalloc(*num_of_nodes, sizeof(struct dfs_info3_param),
    GFP_KERNEL);
 if (*target_nodes == ((void*)0)) {
  rc = -ENOMEM;
  goto parse_DFS_referrals_exit;
 }


 for (i = 0; i < *num_of_nodes; i++) {
  char *temp;
  int max_len;
  struct dfs_info3_param *node = (*target_nodes)+i;

  node->flags = le32_to_cpu(rsp->DFSFlags);
  if (is_unicode) {
   __le16 *tmp = kmalloc(strlen(searchName)*2 + 2,
      GFP_KERNEL);
   if (tmp == ((void*)0)) {
    rc = -ENOMEM;
    goto parse_DFS_referrals_exit;
   }
   cifsConvertToUTF16((__le16 *) tmp, searchName,
        PATH_MAX, nls_codepage, remap);
   node->path_consumed = cifs_utf16_bytes(tmp,
     le16_to_cpu(rsp->PathConsumed),
     nls_codepage);
   kfree(tmp);
  } else
   node->path_consumed = le16_to_cpu(rsp->PathConsumed);

  node->server_type = le16_to_cpu(ref->ServerType);
  node->ref_flag = le16_to_cpu(ref->ReferralEntryFlags);


  temp = (char *)ref + le16_to_cpu(ref->DfsPathOffset);
  max_len = data_end - temp;
  node->path_name = cifs_strndup_from_utf16(temp, max_len,
      is_unicode, nls_codepage);
  if (!node->path_name) {
   rc = -ENOMEM;
   goto parse_DFS_referrals_exit;
  }


  temp = (char *)ref + le16_to_cpu(ref->NetworkAddressOffset);
  max_len = data_end - temp;
  node->node_name = cifs_strndup_from_utf16(temp, max_len,
      is_unicode, nls_codepage);
  if (!node->node_name) {
   rc = -ENOMEM;
   goto parse_DFS_referrals_exit;
  }

  node->ttl = le32_to_cpu(ref->TimeToLive);

  ref++;
 }

parse_DFS_referrals_exit:
 if (rc) {
  free_dfs_info_array(*target_nodes, *num_of_nodes);
  *target_nodes = ((void*)0);
  *num_of_nodes = 0;
 }
 return rc;
}
