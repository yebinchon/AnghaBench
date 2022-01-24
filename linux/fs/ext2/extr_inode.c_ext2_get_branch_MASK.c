#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_9__ {int /*<<< orphan*/  i_meta_lock; int /*<<< orphan*/ * i_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 TYPE_7__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct buffer_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static Indirect *FUNC8(struct inode *inode,
				 int depth,
				 int *offsets,
				 Indirect chain[4],
				 int *err)
{
	struct super_block *sb = inode->i_sb;
	Indirect *p = chain;
	struct buffer_head *bh;

	*err = 0;
	/* i_data is not going away, no lock needed */
	FUNC1 (chain, NULL, FUNC0(inode)->i_data + *offsets);
	if (!p->key)
		goto no_block;
	while (--depth) {
		bh = FUNC6(sb, FUNC3(p->key));
		if (!bh)
			goto failure;
		FUNC4(&FUNC0(inode)->i_meta_lock);
		if (!FUNC7(chain, p))
			goto changed;
		FUNC1(++p, bh, (__le32*)bh->b_data + *++offsets);
		FUNC5(&FUNC0(inode)->i_meta_lock);
		if (!p->key)
			goto no_block;
	}
	return NULL;

changed:
	FUNC5(&FUNC0(inode)->i_meta_lock);
	FUNC2(bh);
	*err = -EAGAIN;
	goto no_block;
failure:
	*err = -EIO;
no_block:
	return p;
}