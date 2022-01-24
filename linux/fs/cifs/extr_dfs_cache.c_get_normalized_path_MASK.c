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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static inline int FUNC3(const char *path, char **npath)
{
	if (*path == '\\') {
		*npath = (char *)path;
	} else {
		*npath = FUNC1(path, FUNC2(path), GFP_KERNEL);
		if (!*npath)
			return -ENOMEM;
		FUNC0(*npath, '\\');
	}
	return 0;
}