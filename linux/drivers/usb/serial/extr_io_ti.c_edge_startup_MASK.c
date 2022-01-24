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
struct usb_serial {TYPE_2__* dev; } ;
struct edgeport_serial {scalar_t__ fw_version; int use_heartbeat; struct usb_serial* serial; int /*<<< orphan*/  heartbeat_work; int /*<<< orphan*/  es_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FW_HEARTBEAT_VERSION_CUTOFF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ION_DEVICE_ID_TI_EDGEPORT_416 ; 
 scalar_t__ ION_DEVICE_ID_TI_EDGEPORT_416B ; 
 int FUNC1 (struct edgeport_serial*) ; 
 int /*<<< orphan*/  FUNC2 (struct edgeport_serial*) ; 
 int /*<<< orphan*/  edge_heartbeat_work ; 
 int /*<<< orphan*/  FUNC3 (struct edgeport_serial*) ; 
 struct edgeport_serial* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_serial*,struct edgeport_serial*) ; 

__attribute__((used)) static int FUNC8(struct usb_serial *serial)
{
	struct edgeport_serial *edge_serial;
	int status;
	u16 product_id;

	/* create our private serial structure */
	edge_serial = FUNC4(sizeof(struct edgeport_serial), GFP_KERNEL);
	if (!edge_serial)
		return -ENOMEM;

	FUNC6(&edge_serial->es_lock);
	edge_serial->serial = serial;
	FUNC0(&edge_serial->heartbeat_work, edge_heartbeat_work);
	FUNC7(serial, edge_serial);

	status = FUNC1(edge_serial);
	if (status < 0) {
		FUNC3(edge_serial);
		return status;
	}

	if (status > 0)
		return 1;	/* bind but do not register any ports */

	product_id = FUNC5(
			edge_serial->serial->dev->descriptor.idProduct);

	/* Currently only the EP/416 models require heartbeat support */
	if (edge_serial->fw_version > FW_HEARTBEAT_VERSION_CUTOFF) {
		if (product_id == ION_DEVICE_ID_TI_EDGEPORT_416 ||
			product_id == ION_DEVICE_ID_TI_EDGEPORT_416B) {
			edge_serial->use_heartbeat = true;
		}
	}

	FUNC2(edge_serial);

	return 0;
}