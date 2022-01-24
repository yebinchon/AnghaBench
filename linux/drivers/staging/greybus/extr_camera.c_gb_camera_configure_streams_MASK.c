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
struct gb_camera_stream_config_response {int /*<<< orphan*/  max_size; int /*<<< orphan*/ * data_type; int /*<<< orphan*/  virtual_channel; void* format; void* height; void* width; scalar_t__ padding; } ;
struct gb_camera_stream_config_request {int /*<<< orphan*/  max_size; int /*<<< orphan*/ * data_type; int /*<<< orphan*/  virtual_channel; void* format; void* height; void* width; scalar_t__ padding; } ;
struct gb_camera_stream_config {int /*<<< orphan*/  max_size; int /*<<< orphan*/ * dt; int /*<<< orphan*/  vc; void* format; void* height; void* width; } ;
struct gb_camera_csi_params {int dummy; } ;
struct gb_camera_configure_streams_response {unsigned int num_streams; unsigned int flags; struct gb_camera_stream_config_response* config; scalar_t__ padding; } ;
struct gb_camera_configure_streams_request {unsigned int num_streams; unsigned int flags; struct gb_camera_stream_config_response* config; scalar_t__ padding; } ;
struct gb_camera {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  bundle; int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GB_CAMERA_CONFIGURE_STREAMS_ADJUSTED ; 
 int GB_CAMERA_CONFIGURE_STREAMS_TEST_ONLY ; 
 unsigned int GB_CAMERA_MAX_STREAMS ; 
 scalar_t__ GB_CAMERA_STATE_CONFIGURED ; 
 scalar_t__ GB_CAMERA_STATE_UNCONFIGURED ; 
 int /*<<< orphan*/  GB_CAMERA_TYPE_CONFIGURE_STREAMS ; 
 int /*<<< orphan*/  GB_OPERATION_FLAG_SHORT_RESPONSE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*) ; 
 int FUNC1 (struct gb_camera*,struct gb_camera_configure_streams_response*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_camera_configure_streams_response*,size_t,struct gb_camera_configure_streams_response*,size_t*) ; 
 int FUNC3 (struct gb_camera*,struct gb_camera_configure_streams_response*,struct gb_camera_csi_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_camera*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gb_camera_configure_streams_response*,int,struct gb_camera_configure_streams_response*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_camera_configure_streams_response*) ; 
 struct gb_camera_configure_streams_response* FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct gb_camera_configure_streams_response*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct gb_camera *gcam,
				       unsigned int *num_streams,
				       unsigned int *flags,
				       struct gb_camera_stream_config *streams,
				       struct gb_camera_csi_params *csi_params)
{
	struct gb_camera_configure_streams_request *req;
	struct gb_camera_configure_streams_response *resp;
	unsigned int nstreams = *num_streams;
	unsigned int i;
	size_t req_size;
	size_t resp_size;
	int ret;

	if (nstreams > GB_CAMERA_MAX_STREAMS)
		return -EINVAL;

	req_size = sizeof(*req) + nstreams * sizeof(req->config[0]);
	resp_size = sizeof(*resp) + nstreams * sizeof(resp->config[0]);

	req = FUNC11(req_size, GFP_KERNEL);
	resp = FUNC11(resp_size, GFP_KERNEL);
	if (!req || !resp) {
		FUNC10(req);
		FUNC10(resp);
		return -ENOMEM;
	}

	req->num_streams = nstreams;
	req->flags = *flags;
	req->padding = 0;

	for (i = 0; i < nstreams; ++i) {
		struct gb_camera_stream_config_request *cfg = &req->config[i];

		cfg->width = FUNC0(streams[i].width);
		cfg->height = FUNC0(streams[i].height);
		cfg->format = FUNC0(streams[i].format);
		cfg->padding = 0;
	}

	FUNC15(&gcam->mutex);

	ret = FUNC7(gcam->bundle);
	if (ret)
		goto done_skip_pm_put;

	if (!gcam->connection) {
		ret = -EINVAL;
		goto done;
	}

	ret = FUNC2(gcam->connection,
					     GB_CAMERA_TYPE_CONFIGURE_STREAMS,
					     GB_OPERATION_FLAG_SHORT_RESPONSE,
					     req, req_size,
					     resp, &resp_size);
	if (ret < 0)
		goto done;

	ret = FUNC1(gcam, resp,
							    nstreams);
	if (ret < 0)
		goto done;

	*flags = resp->flags;
	*num_streams = resp->num_streams;

	for (i = 0; i < resp->num_streams; ++i) {
		struct gb_camera_stream_config_response *cfg = &resp->config[i];

		streams[i].width = FUNC12(cfg->width);
		streams[i].height = FUNC12(cfg->height);
		streams[i].format = FUNC12(cfg->format);
		streams[i].vc = cfg->virtual_channel;
		streams[i].dt[0] = cfg->data_type[0];
		streams[i].dt[1] = cfg->data_type[1];
		streams[i].max_size = FUNC13(cfg->max_size);
	}

	if ((resp->flags & GB_CAMERA_CONFIGURE_STREAMS_ADJUSTED) ||
	    (req->flags & GB_CAMERA_CONFIGURE_STREAMS_TEST_ONLY))
		goto done;

	if (gcam->state == GB_CAMERA_STATE_CONFIGURED) {
		FUNC4(gcam);
		gcam->state = GB_CAMERA_STATE_UNCONFIGURED;

		/*
		 * When unconfiguring streams release the PM runtime reference
		 * that was acquired when streams were configured. The bundle
		 * won't be suspended until the PM runtime reference acquired at
		 * the beginning of this function gets released right before
		 * returning.
		 */
		FUNC9(gcam->bundle);
	}

	if (resp->num_streams == 0)
		goto done;

	/*
	 * Make sure the bundle won't be suspended until streams get
	 * unconfigured after the stream is configured successfully
	 */
	FUNC6(gcam->bundle);

	/* Setup CSI-2 connection from APB-A to AP */
	ret = FUNC3(gcam, resp, csi_params);
	if (ret < 0) {
		FUNC14(req, 0, sizeof(*req));
		FUNC5(gcam->connection,
				  GB_CAMERA_TYPE_CONFIGURE_STREAMS,
				  req, sizeof(*req),
				  resp, sizeof(*resp));
		*flags = 0;
		*num_streams = 0;
		FUNC9(gcam->bundle);
		goto done;
	}

	gcam->state = GB_CAMERA_STATE_CONFIGURED;

done:
	FUNC8(gcam->bundle);

done_skip_pm_put:
	FUNC16(&gcam->mutex);
	FUNC10(req);
	FUNC10(resp);
	return ret;
}