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
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ceph_mds_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mds_client*) ; 

void FUNC4(struct ceph_fs_client *fsc)
{
	struct ceph_mds_client *mdsc = fsc->mdsc;
	FUNC2("mdsc_destroy %p\n", mdsc);

	if (!mdsc)
		return;

	/* flush out any connection work with references to us */
	FUNC1();

	FUNC0(mdsc);

	fsc->mdsc = NULL;
	FUNC3(mdsc);
	FUNC2("mdsc_destroy %p done\n", mdsc);
}