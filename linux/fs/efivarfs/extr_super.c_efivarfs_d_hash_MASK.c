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
struct qstr {unsigned char* name; unsigned int len; int /*<<< orphan*/  hash; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_VARIABLE_GUID_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (struct dentry const*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct dentry *dentry, struct qstr *qstr)
{
	unsigned long hash = FUNC2(dentry);
	const unsigned char *s = qstr->name;
	unsigned int len = qstr->len;

	if (!FUNC0(s, len))
		return -EINVAL;

	while (len-- > EFI_VARIABLE_GUID_LEN)
		hash = FUNC3(*s++, hash);

	/* GUID is case-insensitive. */
	while (len--)
		hash = FUNC3(FUNC4(*s++), hash);

	qstr->hash = FUNC1(hash);
	return 0;
}