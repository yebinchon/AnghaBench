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
struct inode {TYPE_1__* i_sb; } ;
struct fid {int /*<<< orphan*/  raw; } ;
struct export_operations {int (* encode_fh ) (struct inode*,int /*<<< orphan*/ ,int*,struct inode*) ;} ;
struct TYPE_2__ {struct export_operations* s_export_op; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct fid*,int*,struct inode*) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,int*,struct inode*) ; 

int FUNC2(struct inode *inode, struct fid *fid,
			     int *max_len, struct inode *parent)
{
	const struct export_operations *nop = inode->i_sb->s_export_op;

	if (nop && nop->encode_fh)
		return nop->encode_fh(inode, fid->raw, max_len, parent);

	return FUNC0(inode, fid, max_len, parent);
}