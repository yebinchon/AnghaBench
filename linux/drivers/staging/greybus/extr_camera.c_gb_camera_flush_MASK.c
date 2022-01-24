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
struct gb_camera_flush_response {int /*<<< orphan*/  request_id; } ;
struct gb_camera {int /*<<< orphan*/  mutex; int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GB_CAMERA_TYPE_FLUSH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gb_camera_flush_response*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct gb_camera *gcam, u32 *request_id)
{
	struct gb_camera_flush_response resp;
	int ret;

	FUNC2(&gcam->mutex);

	if (!gcam->connection) {
		ret = -EINVAL;
		goto done;
	}

	ret = FUNC0(gcam->connection, GB_CAMERA_TYPE_FLUSH, NULL, 0,
				&resp, sizeof(resp));

	if (ret < 0)
		goto done;

	if (request_id)
		*request_id = FUNC1(resp.request_id);

done:
	FUNC3(&gcam->mutex);

	return ret;
}