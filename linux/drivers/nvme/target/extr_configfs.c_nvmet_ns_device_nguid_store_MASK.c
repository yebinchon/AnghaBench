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
typedef  int u8 ;
struct nvmet_subsys {int /*<<< orphan*/  lock; } ;
struct nvmet_ns {int /*<<< orphan*/  nguid; scalar_t__ enabled; struct nvmet_subsys* subsys; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  nguid ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nvmet_ns* FUNC5 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_ns *ns = FUNC5(item);
	struct nvmet_subsys *subsys = ns->subsys;
	u8 nguid[16];
	const char *p = page;
	int i;
	int ret = 0;

	FUNC3(&subsys->lock);
	if (ns->enabled) {
		ret = -EBUSY;
		goto out_unlock;
	}

	for (i = 0; i < 16; i++) {
		if (p + 2 > page + count) {
			ret = -EINVAL;
			goto out_unlock;
		}
		if (!FUNC1(p[0]) || !FUNC1(p[1])) {
			ret = -EINVAL;
			goto out_unlock;
		}

		nguid[i] = (FUNC0(p[0]) << 4) | FUNC0(p[1]);
		p += 2;

		if (*p == '-' || *p == ':')
			p++;
	}

	FUNC2(&ns->nguid, nguid, sizeof(nguid));
out_unlock:
	FUNC4(&subsys->lock);
	return ret ? ret : count;
}