#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct greybus_descriptor_cport {int protocol_id; int /*<<< orphan*/  id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_fw_core {struct gb_connection* download_connection; struct gb_connection* spi_connection; struct gb_connection* cap_connection; struct gb_connection* mgmt_connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int num_cports; TYPE_1__* intf; int /*<<< orphan*/  dev; struct greybus_descriptor_cport* cport_desc; } ;
struct TYPE_2__ {int quirks; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int GB_INTERFACE_QUIRK_NO_PM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  GREYBUS_PROTOCOL_AUTHENTICATION 131 
#define  GREYBUS_PROTOCOL_FW_DOWNLOAD 130 
#define  GREYBUS_PROTOCOL_FW_MANAGEMENT 129 
#define  GREYBUS_PROTOCOL_SPI 128 
 int /*<<< orphan*/  FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int FUNC4 (struct gb_connection*) ; 
 struct gb_connection* FUNC5 (struct gb_bundle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_connection*) ; 
 int FUNC8 (struct gb_connection*) ; 
 int /*<<< orphan*/ * gb_fw_download_request_handler ; 
 int FUNC9 (struct gb_connection*) ; 
 int /*<<< orphan*/ * gb_fw_mgmt_request_handler ; 
 int /*<<< orphan*/  FUNC10 (struct gb_connection*) ; 
 int FUNC11 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC12 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC13 (struct gb_bundle*,struct gb_fw_core*) ; 
 int /*<<< orphan*/  FUNC14 (struct gb_fw_core*) ; 
 struct gb_fw_core* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct gb_bundle *bundle,
			    const struct greybus_bundle_id *id)
{
	struct greybus_descriptor_cport *cport_desc;
	struct gb_connection *connection;
	struct gb_fw_core *fw_core;
	int ret, i;
	u16 cport_id;
	u8 protocol_id;

	fw_core = FUNC15(sizeof(*fw_core), GFP_KERNEL);
	if (!fw_core)
		return -ENOMEM;

	/* Parse CPorts and create connections */
	for (i = 0; i < bundle->num_cports; i++) {
		cport_desc = &bundle->cport_desc[i];
		cport_id = FUNC16(cport_desc->id);
		protocol_id = cport_desc->protocol_id;

		switch (protocol_id) {
		case GREYBUS_PROTOCOL_FW_MANAGEMENT:
			/* Disallow multiple Firmware Management CPorts */
			if (fw_core->mgmt_connection) {
				FUNC2(&bundle->dev,
					"multiple management CPorts found\n");
				ret = -EINVAL;
				goto err_destroy_connections;
			}

			connection = FUNC5(bundle, cport_id,
						gb_fw_mgmt_request_handler);
			if (FUNC0(connection)) {
				ret = FUNC1(connection);
				FUNC2(&bundle->dev,
					"failed to create management connection (%d)\n",
					ret);
				goto err_destroy_connections;
			}

			fw_core->mgmt_connection = connection;
			break;
		case GREYBUS_PROTOCOL_FW_DOWNLOAD:
			/* Disallow multiple Firmware Download CPorts */
			if (fw_core->download_connection) {
				FUNC2(&bundle->dev,
					"multiple download CPorts found\n");
				ret = -EINVAL;
				goto err_destroy_connections;
			}

			connection = FUNC5(bundle, cport_id,
						gb_fw_download_request_handler);
			if (FUNC0(connection)) {
				FUNC2(&bundle->dev, "failed to create download connection (%ld)\n",
					FUNC1(connection));
			} else {
				fw_core->download_connection = connection;
			}

			break;
		case GREYBUS_PROTOCOL_SPI:
			/* Disallow multiple SPI CPorts */
			if (fw_core->spi_connection) {
				FUNC2(&bundle->dev,
					"multiple SPI CPorts found\n");
				ret = -EINVAL;
				goto err_destroy_connections;
			}

			connection = FUNC5(bundle, cport_id,
							  NULL);
			if (FUNC0(connection)) {
				FUNC2(&bundle->dev, "failed to create SPI connection (%ld)\n",
					FUNC1(connection));
			} else {
				fw_core->spi_connection = connection;
			}

			break;
		case GREYBUS_PROTOCOL_AUTHENTICATION:
			/* Disallow multiple CAP CPorts */
			if (fw_core->cap_connection) {
				FUNC2(&bundle->dev, "multiple Authentication CPorts found\n");
				ret = -EINVAL;
				goto err_destroy_connections;
			}

			connection = FUNC5(bundle, cport_id,
							  NULL);
			if (FUNC0(connection)) {
				FUNC2(&bundle->dev, "failed to create Authentication connection (%ld)\n",
					FUNC1(connection));
			} else {
				fw_core->cap_connection = connection;
			}

			break;
		default:
			FUNC2(&bundle->dev, "invalid protocol id (0x%02x)\n",
				protocol_id);
			ret = -EINVAL;
			goto err_destroy_connections;
		}
	}

	/* Firmware Management connection is mandatory */
	if (!fw_core->mgmt_connection) {
		FUNC2(&bundle->dev, "missing management connection\n");
		ret = -ENODEV;
		goto err_destroy_connections;
	}

	ret = FUNC8(fw_core->download_connection);
	if (ret) {
		/* We may still be able to work with the Interface */
		FUNC2(&bundle->dev, "failed to initialize firmware download connection, disable it (%d)\n",
			ret);
		FUNC6(fw_core->download_connection);
		fw_core->download_connection = NULL;
	}

	ret = FUNC11(fw_core->spi_connection);
	if (ret) {
		/* We may still be able to work with the Interface */
		FUNC2(&bundle->dev, "failed to initialize SPI connection, disable it (%d)\n",
			ret);
		FUNC6(fw_core->spi_connection);
		fw_core->spi_connection = NULL;
	}

	ret = FUNC4(fw_core->cap_connection);
	if (ret) {
		/* We may still be able to work with the Interface */
		FUNC2(&bundle->dev, "failed to initialize CAP connection, disable it (%d)\n",
			ret);
		FUNC6(fw_core->cap_connection);
		fw_core->cap_connection = NULL;
	}

	ret = FUNC9(fw_core->mgmt_connection);
	if (ret) {
		/* We may still be able to work with the Interface */
		FUNC2(&bundle->dev, "failed to initialize firmware management connection, disable it (%d)\n",
			ret);
		goto err_exit_connections;
	}

	FUNC13(bundle, fw_core);

	/* FIXME: Remove this after S2 Loader gets runtime PM support */
	if (!(bundle->intf->quirks & GB_INTERFACE_QUIRK_NO_PM))
		FUNC12(bundle);

	return 0;

err_exit_connections:
	FUNC3(fw_core->cap_connection);
	FUNC10(fw_core->spi_connection);
	FUNC7(fw_core->download_connection);
err_destroy_connections:
	FUNC6(fw_core->mgmt_connection);
	FUNC6(fw_core->cap_connection);
	FUNC6(fw_core->spi_connection);
	FUNC6(fw_core->download_connection);
	FUNC14(fw_core);

	return ret;
}