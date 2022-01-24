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
struct vc_data {int vc_rows; int vc_cols; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct vc_data* FUNC3 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode)
{
	int size;
	struct vc_data *vc;

	FUNC0();

	vc = FUNC3(inode, NULL);
	if (!vc)
		return -ENXIO;

	size = vc->vc_rows * vc->vc_cols;

	if (FUNC1(inode)) {
		if (FUNC2(inode))
			return -EOPNOTSUPP;
		size = 2*size + HEADER_SIZE;
	} else if (FUNC2(inode))
		size *= 4;
	return size;
}