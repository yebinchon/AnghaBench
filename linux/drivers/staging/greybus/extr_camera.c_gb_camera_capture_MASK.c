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
struct gb_camera_capture_request {unsigned int streams; int /*<<< orphan*/  settings; int /*<<< orphan*/  num_frames; scalar_t__ padding; int /*<<< orphan*/  request_id; } ;
struct gb_camera {int /*<<< orphan*/  mutex; int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 size_t GB_CAMERA_MAX_SETTINGS_SIZE ; 
 int /*<<< orphan*/  GB_CAMERA_TYPE_CAPTURE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_camera_capture_request*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_camera_capture_request*) ; 
 struct gb_camera_capture_request* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct gb_camera *gcam, u32 request_id,
			     unsigned int streams, unsigned int num_frames,
			     size_t settings_size, const void *settings)
{
	struct gb_camera_capture_request *req;
	size_t req_size;
	int ret;

	if (settings_size > GB_CAMERA_MAX_SETTINGS_SIZE)
		return -EINVAL;

	req_size = sizeof(*req) + settings_size;
	req = FUNC4(req_size, GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	req->request_id = FUNC1(request_id);
	req->streams = streams;
	req->padding = 0;
	req->num_frames = FUNC0(num_frames);
	FUNC5(req->settings, settings, settings_size);

	FUNC6(&gcam->mutex);

	if (!gcam->connection) {
		ret = -EINVAL;
		goto done;
	}

	ret = FUNC2(gcam->connection, GB_CAMERA_TYPE_CAPTURE,
				req, req_size, NULL, 0);
done:
	FUNC7(&gcam->mutex);

	FUNC3(req);

	return ret;
}