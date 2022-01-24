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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct qbman_release_desc {int dummy; } ;
struct dpaa2_io {int /*<<< orphan*/  swp; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct qbman_release_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct qbman_release_desc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct qbman_release_desc*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct dpaa2_io* FUNC3 (struct dpaa2_io*) ; 

int FUNC4(struct dpaa2_io *d,
			     u16 bpid,
			     const u64 *buffers,
			     unsigned int num_buffers)
{
	struct qbman_release_desc rd;

	d = FUNC3(d);
	if (!d)
		return -ENODEV;

	FUNC0(&rd);
	FUNC1(&rd, bpid);

	return FUNC2(d->swp, &rd, buffers, num_buffers);
}