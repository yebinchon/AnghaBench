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
typedef  int /*<<< orphan*/  u32 ;
struct qbman_eq_desc {int dummy; } ;
struct dpaa2_io {int /*<<< orphan*/  swp; } ;
struct dpaa2_fd {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct qbman_eq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct qbman_eq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qbman_eq_desc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct qbman_eq_desc*,struct dpaa2_fd const*) ; 
 struct dpaa2_io* FUNC4 (struct dpaa2_io*) ; 

int FUNC5(struct dpaa2_io *d,
				u32 fqid,
				const struct dpaa2_fd *fd)
{
	struct qbman_eq_desc ed;

	d = FUNC4(d);
	if (!d)
		return -ENODEV;

	FUNC0(&ed);
	FUNC2(&ed, 0);
	FUNC1(&ed, fqid);

	return FUNC3(d->swp, &ed, fd);
}