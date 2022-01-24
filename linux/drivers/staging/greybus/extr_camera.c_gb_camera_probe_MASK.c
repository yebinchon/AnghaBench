#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct greybus_descriptor_cport {int protocol_id; int /*<<< orphan*/  id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_connection {TYPE_1__* intf; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/  interface_id; int /*<<< orphan*/ * ops; struct gb_camera* priv; } ;
struct gb_camera {struct gb_bundle* bundle; TYPE_2__ module; struct gb_connection* connection; scalar_t__ data_cport_id; int /*<<< orphan*/  state; int /*<<< orphan*/  mutex; } ;
struct gb_bundle {int num_cports; struct greybus_descriptor_cport* cport_desc; } ;
struct TYPE_3__ {int /*<<< orphan*/  interface_id; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GB_CAMERA_STATE_UNCONFIGURED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  GREYBUS_PROTOCOL_CAMERA_DATA 129 
#define  GREYBUS_PROTOCOL_CAMERA_MGMT 128 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  gb_cam_ops ; 
 int /*<<< orphan*/  FUNC2 (struct gb_camera*) ; 
 int FUNC3 (struct gb_camera*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  gb_camera_release_module ; 
 int /*<<< orphan*/  gb_camera_request_handler ; 
 struct gb_connection* FUNC5 (struct gb_bundle*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_connection*,struct gb_camera*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_bundle*,struct gb_camera*) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_camera*) ; 
 struct gb_camera* FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct gb_bundle *bundle,
			   const struct greybus_bundle_id *id)
{
	struct gb_connection *conn;
	struct gb_camera *gcam;
	u16 mgmt_cport_id = 0;
	u16 data_cport_id = 0;
	unsigned int i;
	int ret;

	/*
	 * The camera bundle must contain exactly two CPorts, one for the
	 * camera management protocol and one for the camera data protocol.
	 */
	if (bundle->num_cports != 2)
		return -ENODEV;

	for (i = 0; i < bundle->num_cports; ++i) {
		struct greybus_descriptor_cport *desc = &bundle->cport_desc[i];

		switch (desc->protocol_id) {
		case GREYBUS_PROTOCOL_CAMERA_MGMT:
			mgmt_cport_id = FUNC12(desc->id);
			break;
		case GREYBUS_PROTOCOL_CAMERA_DATA:
			data_cport_id = FUNC12(desc->id);
			break;
		default:
			return -ENODEV;
		}
	}

	if (!mgmt_cport_id || !data_cport_id)
		return -ENODEV;

	gcam = FUNC11(sizeof(*gcam), GFP_KERNEL);
	if (!gcam)
		return -ENOMEM;

	FUNC13(&gcam->mutex);

	gcam->bundle = bundle;
	gcam->state = GB_CAMERA_STATE_UNCONFIGURED;
	gcam->data_cport_id = data_cport_id;

	conn = FUNC5(bundle, mgmt_cport_id,
				    gb_camera_request_handler);
	if (FUNC0(conn)) {
		ret = FUNC1(conn);
		goto error;
	}

	gcam->connection = conn;
	FUNC7(conn, gcam);

	ret = FUNC6(conn);
	if (ret)
		goto error;

	ret = FUNC3(gcam);
	if (ret < 0)
		goto error;

	gcam->module.priv = gcam;
	gcam->module.ops = &gb_cam_ops;
	gcam->module.interface_id = gcam->connection->intf->interface_id;
	gcam->module.release = gb_camera_release_module;
	ret = FUNC4(&gcam->module);
	if (ret < 0)
		goto error;

	FUNC9(bundle, gcam);

	FUNC8(gcam->bundle);

	return 0;

error:
	FUNC2(gcam);
	FUNC10(gcam);
	return ret;
}