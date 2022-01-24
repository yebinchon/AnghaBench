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
struct hid_device {int dummy; } ;
struct greybus_descriptor_cport {scalar_t__ protocol_id; int /*<<< orphan*/  id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_hid {struct gb_bundle* bundle; struct hid_device* hid; struct hid_device* connection; } ;
typedef  struct hid_device gb_connection ;
struct gb_bundle {int num_cports; struct greybus_descriptor_cport* cport_desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GREYBUS_PROTOCOL_HID ; 
 scalar_t__ FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct hid_device*) ; 
 struct hid_device* FUNC2 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*) ; 
 int FUNC5 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,struct gb_hid*) ; 
 int FUNC7 (struct gb_hid*) ; 
 int /*<<< orphan*/  gb_hid_request_handler ; 
 int /*<<< orphan*/  FUNC8 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_bundle*,struct gb_hid*) ; 
 int FUNC10 (struct hid_device*) ; 
 struct hid_device* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct hid_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct gb_hid*) ; 
 struct gb_hid* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct gb_bundle *bundle,
			const struct greybus_bundle_id *id)
{
	struct greybus_descriptor_cport *cport_desc;
	struct gb_connection *connection;
	struct hid_device *hid;
	struct gb_hid *ghid;
	int ret;

	if (bundle->num_cports != 1)
		return -ENODEV;

	cport_desc = &bundle->cport_desc[0];
	if (cport_desc->protocol_id != GREYBUS_PROTOCOL_HID)
		return -ENODEV;

	ghid = FUNC15(sizeof(*ghid), GFP_KERNEL);
	if (!ghid)
		return -ENOMEM;

	connection = FUNC2(bundle, FUNC16(cport_desc->id),
					  gb_hid_request_handler);
	if (FUNC0(connection)) {
		ret = FUNC1(connection);
		goto err_free_ghid;
	}

	FUNC6(connection, ghid);
	ghid->connection = connection;

	hid = FUNC11();
	if (FUNC0(hid)) {
		ret = FUNC1(hid);
		goto err_connection_destroy;
	}

	ghid->hid = hid;
	ghid->bundle = bundle;

	FUNC9(bundle, ghid);

	ret = FUNC5(connection);
	if (ret)
		goto err_destroy_hid;

	ret = FUNC7(ghid);
	if (ret)
		goto err_connection_disable;

	ret = FUNC10(hid);
	if (ret) {
		FUNC13(hid, "can't add hid device: %d\n", ret);
		goto err_connection_disable;
	}

	FUNC8(bundle);

	return 0;

err_connection_disable:
	FUNC4(connection);
err_destroy_hid:
	FUNC12(hid);
err_connection_destroy:
	FUNC3(connection);
err_free_ghid:
	FUNC14(ghid);

	return ret;
}