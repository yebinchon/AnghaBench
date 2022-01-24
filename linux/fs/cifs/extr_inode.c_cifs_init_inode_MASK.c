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
struct inode {int dummy; } ;
struct cifs_fattr {int /*<<< orphan*/  cf_createtime; int /*<<< orphan*/  cf_uniqueid; } ;
struct TYPE_2__ {int /*<<< orphan*/  createtime; int /*<<< orphan*/  uniqueid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 

__attribute__((used)) static int
FUNC1(struct inode *inode, void *opaque)
{
	struct cifs_fattr *fattr = (struct cifs_fattr *) opaque;

	FUNC0(inode)->uniqueid = fattr->cf_uniqueid;
	FUNC0(inode)->createtime = fattr->cf_createtime;
	return 0;
}