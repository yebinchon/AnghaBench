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
typedef  int u16 ;
struct cifs_dirent {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FYI ; 
#define  SMB_FIND_FILE_BOTH_DIRECTORY_INFO 133 
#define  SMB_FIND_FILE_DIRECTORY_INFO 132 
#define  SMB_FIND_FILE_FULL_DIRECTORY_INFO 131 
#define  SMB_FIND_FILE_ID_FULL_DIR_INFO 130 
#define  SMB_FIND_FILE_INFO_STANDARD 129 
#define  SMB_FIND_FILE_UNIX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cifs_dirent*,void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cifs_dirent*,void const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cifs_dirent*,void const*) ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_dirent*,void const*) ; 
 int /*<<< orphan*/  FUNC5 (struct cifs_dirent*,void const*) ; 
 int /*<<< orphan*/  FUNC6 (struct cifs_dirent*,void const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cifs_dirent*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct cifs_dirent *de, const void *info,
		u16 level, bool is_unicode)
{
	FUNC7(de, 0, sizeof(*de));

	switch (level) {
	case SMB_FIND_FILE_UNIX:
		FUNC6(de, info, is_unicode);
		break;
	case SMB_FIND_FILE_DIRECTORY_INFO:
		FUNC2(de, info);
		break;
	case SMB_FIND_FILE_FULL_DIRECTORY_INFO:
		FUNC3(de, info);
		break;
	case SMB_FIND_FILE_ID_FULL_DIR_INFO:
		FUNC4(de, info);
		break;
	case SMB_FIND_FILE_BOTH_DIRECTORY_INFO:
		FUNC1(de, info);
		break;
	case SMB_FIND_FILE_INFO_STANDARD:
		FUNC5(de, info);
		break;
	default:
		FUNC0(FYI, "Unknown findfirst level %d\n", level);
		return -EINVAL;
	}

	return 0;
}