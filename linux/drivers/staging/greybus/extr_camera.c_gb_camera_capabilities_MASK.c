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
typedef  int /*<<< orphan*/  u8 ;
struct gb_camera {int /*<<< orphan*/  bundle; int /*<<< orphan*/  mutex; int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GB_CAMERA_TYPE_CAPABILITIES ; 
 int /*<<< orphan*/  GB_OPERATION_FLAG_SHORT_RESPONSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_camera*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gb_camera *gcam,
				  u8 *capabilities, size_t *size)
{
	int ret;

	ret = FUNC1(gcam->bundle);
	if (ret)
		return ret;

	FUNC4(&gcam->mutex);

	if (!gcam->connection) {
		ret = -EINVAL;
		goto done;
	}

	ret = FUNC0(gcam->connection,
					     GB_CAMERA_TYPE_CAPABILITIES,
					     GB_OPERATION_FLAG_SHORT_RESPONSE,
					     NULL, 0,
					     (void *)capabilities, size);
	if (ret)
		FUNC3(gcam, "failed to retrieve capabilities: %d\n", ret);

done:
	FUNC5(&gcam->mutex);

	FUNC2(gcam->bundle);

	return ret;
}