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
typedef  int /*<<< orphan*/  wchar_t ;
struct nls_table {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int,struct nls_table*) ; 
 int /*<<< orphan*/  const FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct nls_table* FUNC5 () ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct nls_table*) ; 

__attribute__((used)) static int
FUNC9(__le16 **out_path, int *out_size, int *out_len,
			    const char *treename, const __le16 *path)
{
	int treename_len, path_len;
	struct nls_table *cp;
	const __le16 sep[] = {FUNC3('\\'), FUNC3(0x0000)};

	/*
	 * skip leading "\\"
	 */
	treename_len = FUNC7(treename);
	if (treename_len < 2 || !(treename[0] == '\\' && treename[1] == '\\'))
		return -EINVAL;

	treename += 2;
	treename_len -= 2;

	path_len = FUNC1((wchar_t *)path, PATH_MAX);

	/*
	 * make room for one path separator between the treename and
	 * path
	 */
	*out_len = treename_len + 1 + path_len;

	/*
	 * final path needs to be null-terminated UTF16 with a
	 * size aligned to 8
	 */

	*out_size = FUNC6((*out_len+1)*2, 8);
	*out_path = FUNC4(*out_size, GFP_KERNEL);
	if (!*out_path)
		return -ENOMEM;

	cp = FUNC5();
	FUNC2(*out_path, treename, treename_len, cp);
	FUNC0(*out_path, sep);
	FUNC0(*out_path, path);
	FUNC8(cp);

	return 0;
}