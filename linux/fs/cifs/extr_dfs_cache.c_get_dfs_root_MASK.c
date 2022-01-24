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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static inline char *FUNC3(const char *path)
{
	char *s, *npath;

	s = FUNC2(path + 1, '\\');
	if (!s)
		return FUNC0(-EINVAL);

	s = FUNC2(s + 1, '\\');
	if (!s)
		return FUNC0(-EINVAL);

	npath = FUNC1(path, s - path, GFP_KERNEL);
	if (!npath)
		return FUNC0(-ENOMEM);

	return npath;
}