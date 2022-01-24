#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct qstr {int len; int /*<<< orphan*/  hash; int /*<<< orphan*/ * name; } ;
struct nls_table {int (* char2uni ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ;} ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {struct nls_table* local_nls; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (struct dentry const*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(const struct dentry *dentry, struct qstr *q)
{
	struct nls_table *codepage = FUNC0(dentry->d_sb)->local_nls;
	unsigned long hash;
	wchar_t c;
	int i, charlen;

	hash = FUNC3(dentry);
	for (i = 0; i < q->len; i += charlen) {
		charlen = codepage->char2uni(&q->name[i], q->len - i, &c);
		/* error out if we can't convert the character */
		if (FUNC6(charlen < 0))
			return charlen;
		hash = FUNC4(FUNC1(c), hash);
	}
	q->hash = FUNC2(hash);

	return 0;
}