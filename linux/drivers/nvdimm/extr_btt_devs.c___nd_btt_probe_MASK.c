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
struct nd_namespace_common {int dummy; } ;
struct nd_btt {int /*<<< orphan*/  dev; int /*<<< orphan*/  uuid; int /*<<< orphan*/  lbasize; } ;
struct btt_sb {int /*<<< orphan*/  uuid; int /*<<< orphan*/  external_lbasize; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SZ_16M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nd_btt*,struct nd_namespace_common*,struct btt_sb*) ; 
 scalar_t__ FUNC4 (struct nd_namespace_common*) ; 

__attribute__((used)) static int FUNC5(struct nd_btt *nd_btt,
		struct nd_namespace_common *ndns, struct btt_sb *btt_sb)
{
	int rc;

	if (!btt_sb || !ndns || !nd_btt)
		return -ENODEV;

	if (FUNC4(ndns) < SZ_16M)
		return -ENXIO;

	rc = FUNC3(nd_btt, ndns, btt_sb);
	if (rc < 0)
		return rc;

	nd_btt->lbasize = FUNC2(btt_sb->external_lbasize);
	nd_btt->uuid = FUNC1(btt_sb->uuid, 16, GFP_KERNEL);
	if (!nd_btt->uuid)
		return -ENOMEM;

	FUNC0(&nd_btt->dev);

	return 0;
}