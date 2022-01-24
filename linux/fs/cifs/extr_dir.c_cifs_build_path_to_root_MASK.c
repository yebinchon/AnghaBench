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
struct smb_vol {int /*<<< orphan*/  prepath; } ;
struct cifs_tcon {int /*<<< orphan*/  treeName; } ;
struct cifs_sb_info {int dummy; } ;

/* Variables and functions */
 char FUNC0 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_TREE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,char) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

char *
FUNC7(struct smb_vol *vol, struct cifs_sb_info *cifs_sb,
			struct cifs_tcon *tcon, int add_treename)
{
	int pplen = vol->prepath ? FUNC5(vol->prepath) + 1 : 0;
	int dfsplen;
	char *full_path = NULL;

	/* if no prefix path, simply set path to the root of share to "" */
	if (pplen == 0) {
		full_path = FUNC3(1, GFP_KERNEL);
		return full_path;
	}

	if (add_treename)
		dfsplen = FUNC6(tcon->treeName, MAX_TREE_SIZE + 1);
	else
		dfsplen = 0;

	full_path = FUNC2(dfsplen + pplen + 1, GFP_KERNEL);
	if (full_path == NULL)
		return full_path;

	if (dfsplen)
		FUNC4(full_path, tcon->treeName, dfsplen);
	full_path[dfsplen] = FUNC0(cifs_sb);
	FUNC4(full_path + dfsplen + 1, vol->prepath, pplen);
	FUNC1(full_path, FUNC0(cifs_sb));
	return full_path;
}