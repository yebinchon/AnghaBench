#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct nls_table {int dummy; } ;
struct get_dfs_referral_rsp {scalar_t__ NumberOfReferrals; scalar_t__ PathConsumed; int /*<<< orphan*/  DFSFlags; int /*<<< orphan*/  referrals; } ;
struct dfs_referral_level_3 {scalar_t__ VersionNumber; scalar_t__ ServerType; scalar_t__ ReferralEntryFlags; scalar_t__ DfsPathOffset; scalar_t__ NetworkAddressOffset; int /*<<< orphan*/  TimeToLive; } ;
struct dfs_info3_param {int path_consumed; int server_type; int ref_flag; void* ttl; void* node_name; void* path_name; void* flags; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct nls_table const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 void* FUNC2 (char*,int,int,struct nls_table const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,struct nls_table const*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct dfs_info3_param*,unsigned int) ; 
 struct dfs_info3_param* FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char const*) ; 

int
FUNC12(struct get_dfs_referral_rsp *rsp, u32 rsp_size,
		    unsigned int *num_of_nodes,
		    struct dfs_info3_param **target_nodes,
		    const struct nls_table *nls_codepage, int remap,
		    const char *searchName, bool is_unicode)
{
	int i, rc = 0;
	char *data_end;
	struct dfs_referral_level_3 *ref;

	*num_of_nodes = FUNC9(rsp->NumberOfReferrals);

	if (*num_of_nodes < 1) {
		FUNC1(VFS, "num_referrals: must be at least > 0, but we get num_referrals = %d\n",
			 *num_of_nodes);
		rc = -EINVAL;
		goto parse_DFS_referrals_exit;
	}

	ref = (struct dfs_referral_level_3 *) &(rsp->referrals);
	if (ref->VersionNumber != FUNC4(3)) {
		FUNC1(VFS, "Referrals of V%d version are not supported, should be V3\n",
			 FUNC9(ref->VersionNumber));
		rc = -EINVAL;
		goto parse_DFS_referrals_exit;
	}

	/* get the upper boundary of the resp buffer */
	data_end = (char *)rsp + rsp_size;

	FUNC1(FYI, "num_referrals: %d dfs flags: 0x%x ...\n",
		 *num_of_nodes, FUNC10(rsp->DFSFlags));

	*target_nodes = FUNC6(*num_of_nodes, sizeof(struct dfs_info3_param),
				GFP_KERNEL);
	if (*target_nodes == NULL) {
		rc = -ENOMEM;
		goto parse_DFS_referrals_exit;
	}

	/* collect necessary data from referrals */
	for (i = 0; i < *num_of_nodes; i++) {
		char *temp;
		int max_len;
		struct dfs_info3_param *node = (*target_nodes)+i;

		node->flags = FUNC10(rsp->DFSFlags);
		if (is_unicode) {
			__le16 *tmp = FUNC8(FUNC11(searchName)*2 + 2,
						GFP_KERNEL);
			if (tmp == NULL) {
				rc = -ENOMEM;
				goto parse_DFS_referrals_exit;
			}
			FUNC0((__le16 *) tmp, searchName,
					   PATH_MAX, nls_codepage, remap);
			node->path_consumed = FUNC3(tmp,
					FUNC9(rsp->PathConsumed),
					nls_codepage);
			FUNC7(tmp);
		} else
			node->path_consumed = FUNC9(rsp->PathConsumed);

		node->server_type = FUNC9(ref->ServerType);
		node->ref_flag = FUNC9(ref->ReferralEntryFlags);

		/* copy DfsPath */
		temp = (char *)ref + FUNC9(ref->DfsPathOffset);
		max_len = data_end - temp;
		node->path_name = FUNC2(temp, max_len,
						is_unicode, nls_codepage);
		if (!node->path_name) {
			rc = -ENOMEM;
			goto parse_DFS_referrals_exit;
		}

		/* copy link target UNC */
		temp = (char *)ref + FUNC9(ref->NetworkAddressOffset);
		max_len = data_end - temp;
		node->node_name = FUNC2(temp, max_len,
						is_unicode, nls_codepage);
		if (!node->node_name) {
			rc = -ENOMEM;
			goto parse_DFS_referrals_exit;
		}

		node->ttl = FUNC10(ref->TimeToLive);

		ref++;
	}

parse_DFS_referrals_exit:
	if (rc) {
		FUNC5(*target_nodes, *num_of_nodes);
		*target_nodes = NULL;
		*num_of_nodes = 0;
	}
	return rc;
}