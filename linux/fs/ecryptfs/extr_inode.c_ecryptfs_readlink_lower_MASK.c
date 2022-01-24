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
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  done ; 
 int FUNC5 (char**,size_t*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (struct dentry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC9(struct dentry *dentry, size_t *bufsiz)
{
	FUNC0(done);
	struct dentry *lower_dentry = FUNC6(dentry);
	const char *link;
	char *buf;
	int rc;

	link = FUNC8(lower_dentry, &done);
	if (FUNC3(link))
		return FUNC1(link);

	rc = FUNC5(&buf, bufsiz, dentry->d_sb,
						  link, FUNC7(link));
	FUNC4(&done);
	if (rc)
		return FUNC2(rc);

	return buf;
}