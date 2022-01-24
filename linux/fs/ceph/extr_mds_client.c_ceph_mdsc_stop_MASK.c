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
struct ceph_mds_client {int /*<<< orphan*/  sessions; scalar_t__ mdsmap; int /*<<< orphan*/  delayed_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ceph_mds_client *mdsc)
{
	FUNC4("stop\n");
	FUNC0(&mdsc->delayed_work); /* cancel timer */
	if (mdsc->mdsmap)
		FUNC2(mdsc->mdsmap);
	FUNC5(mdsc->sessions);
	FUNC1(mdsc);
	FUNC3(mdsc);
}