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
typedef  int /*<<< orphan*/  u16 ;
struct rio_mport {int /*<<< orphan*/ * riores; } ;
struct resource {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t RIO_DOORBELL_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 struct resource* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rio_mport*,void*,struct resource*,void (*) (struct rio_mport*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 

int FUNC5(struct rio_mport *mport,
			  void *dev_id,
			  u16 start,
			  u16 end,
			  void (*dinb) (struct rio_mport * mport, void *dev_id, u16 src,
					u16 dst, u16 info))
{
	int rc;
	struct resource *res = FUNC1(sizeof(*res), GFP_KERNEL);

	if (res) {
		FUNC3(res, start, end);

		/* Make sure these doorbells aren't in use */
		rc = FUNC2(&mport->riores[RIO_DOORBELL_RESOURCE],
				      res);
		if (rc < 0) {
			FUNC0(res);
			goto out;
		}

		/* Hook the doorbell callback */
		rc = FUNC4(mport, dev_id, res, dinb);
	} else
		rc = -ENOMEM;

      out:
	return rc;
}