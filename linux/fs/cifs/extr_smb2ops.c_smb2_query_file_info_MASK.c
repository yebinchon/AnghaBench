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
struct smb2_file_all_info {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_fid {int /*<<< orphan*/  volatile_fid; int /*<<< orphan*/  persistent_fid; } ;
typedef  int /*<<< orphan*/  FILE_ALL_INFO ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PATH_MAX ; 
 int FUNC0 (unsigned int const,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb2_file_all_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb2_file_all_info*) ; 
 struct smb2_file_all_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct smb2_file_all_info*) ; 

__attribute__((used)) static int
FUNC4(const unsigned int xid, struct cifs_tcon *tcon,
		     struct cifs_fid *fid, FILE_ALL_INFO *data)
{
	int rc;
	struct smb2_file_all_info *smb2_data;

	smb2_data = FUNC2(sizeof(struct smb2_file_all_info) + PATH_MAX * 2,
			    GFP_KERNEL);
	if (smb2_data == NULL)
		return -ENOMEM;

	rc = FUNC0(xid, tcon, fid->persistent_fid, fid->volatile_fid,
			     smb2_data);
	if (!rc)
		FUNC3(data, smb2_data);
	FUNC1(smb2_data);
	return rc;
}