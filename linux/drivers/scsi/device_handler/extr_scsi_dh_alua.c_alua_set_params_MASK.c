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
struct scsi_device {struct alua_dh_data* handler_data; } ;
struct alua_port_group {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct alua_dh_data {int /*<<< orphan*/  pg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALUA_OPTIMIZE_STPG ; 
 int EINVAL ; 
 int ENXIO ; 
 int SCSI_DH_OK ; 
 struct alua_port_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct scsi_device *sdev, const char *params)
{
	struct alua_dh_data *h = sdev->handler_data;
	struct alua_port_group *pg = NULL;
	unsigned int optimize = 0, argc;
	const char *p = params;
	int result = SCSI_DH_OK;
	unsigned long flags;

	if ((FUNC5(params, "%u", &argc) != 1) || (argc != 1))
		return -EINVAL;

	while (*p++)
		;
	if ((FUNC5(p, "%u", &optimize) != 1) || (optimize > 1))
		return -EINVAL;

	FUNC1();
	pg = FUNC0(h->pg);
	if (!pg) {
		FUNC2();
		return -ENXIO;
	}
	FUNC3(&pg->lock, flags);
	if (optimize)
		pg->flags |= ALUA_OPTIMIZE_STPG;
	else
		pg->flags &= ~ALUA_OPTIMIZE_STPG;
	FUNC4(&pg->lock, flags);
	FUNC2();

	return result;
}