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
struct ceph_dir_file_info {scalar_t__ frag; int /*<<< orphan*/  last_readdir; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct ceph_dir_file_info *dfi, loff_t pos)
{
	if (!dfi->last_readdir)
		return true;
	if (FUNC3(pos))
		return !FUNC0(dfi->frag, FUNC2(pos));
	else
		return dfi->frag != FUNC1(pos);
}