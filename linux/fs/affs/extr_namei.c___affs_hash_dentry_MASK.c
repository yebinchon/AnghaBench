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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  (* toupper_t ) (int /*<<< orphan*/  const) ;
struct qstr {int /*<<< orphan*/  hash; int /*<<< orphan*/  len; int /*<<< orphan*/ * name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFFSNAMEMAX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (struct dentry const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static inline int
FUNC5(const struct dentry *dentry, struct qstr *qstr, toupper_t toupper, bool notruncate)
{
	const u8 *name = qstr->name;
	unsigned long hash;
	int retval;
	u32 len;

	retval = FUNC0(qstr->name, qstr->len, notruncate);
	if (retval)
		return retval;

	hash = FUNC2(dentry);
	len = FUNC3(qstr->len, AFFSNAMEMAX);
	for (; len > 0; name++, len--)
		hash = FUNC4(toupper(*name), hash);
	qstr->hash = FUNC1(hash);

	return 0;
}