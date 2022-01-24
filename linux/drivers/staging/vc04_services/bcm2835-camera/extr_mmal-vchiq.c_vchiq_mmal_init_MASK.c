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
struct vchiq_mmal_instance {int /*<<< orphan*/  bulk_scratch; int /*<<< orphan*/  bulk_wq; int /*<<< orphan*/  handle; int /*<<< orphan*/  context_map; int /*<<< orphan*/  context_map_lock; int /*<<< orphan*/  vchiq_mutex; } ;
struct service_creation {struct vchiq_mmal_instance* callback_param; int /*<<< orphan*/  callback; int /*<<< orphan*/  service_id; int /*<<< orphan*/  version; } ;
struct mmal_port {int dummy; } ;
struct mmal_msg_header {int dummy; } ;
struct mmal_msg {int dummy; } ;
typedef  int /*<<< orphan*/  VCHI_INSTANCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MMAL_MSG_MAX_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC_MMAL_MIN_VER ; 
 int /*<<< orphan*/  VC_MMAL_SERVER_NAME ; 
 int /*<<< orphan*/  VC_MMAL_VER ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vchiq_mmal_instance*) ; 
 struct vchiq_mmal_instance* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  service_callback ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct service_creation*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(struct vchiq_mmal_instance **out_instance)
{
	int status;
	struct vchiq_mmal_instance *instance;
	static VCHI_INSTANCE_T vchi_instance;
	struct service_creation params = {
		.version		= FUNC1(VC_MMAL_VER, VC_MMAL_MIN_VER),
		.service_id		= VC_MMAL_SERVER_NAME,
		.callback		= service_callback,
		.callback_param		= NULL,
	};

	/* compile time checks to ensure structure size as they are
	 * directly (de)serialised from memory.
	 */

	/* ensure the header structure has packed to the correct size */
	FUNC0(sizeof(struct mmal_msg_header) != 24);

	/* ensure message structure does not exceed maximum length */
	FUNC0(sizeof(struct mmal_msg) > MMAL_MSG_MAX_SIZE);

	/* mmal port struct is correct size */
	FUNC0(sizeof(struct mmal_port) != 64);

	/* create a vchi instance */
	status = FUNC10(&vchi_instance);
	if (status) {
		FUNC8("Failed to initialise VCHI instance (status=%d)\n",
		       status);
		return -EIO;
	}

	status = FUNC9(vchi_instance);
	if (status) {
		FUNC8("Failed to connect VCHI instance (status=%d)\n", status);
		return -EIO;
	}

	instance = FUNC6(sizeof(*instance), GFP_KERNEL);

	if (!instance)
		return -ENOMEM;

	FUNC7(&instance->vchiq_mutex);

	instance->bulk_scratch = FUNC15(PAGE_SIZE);

	FUNC7(&instance->context_map_lock);
	FUNC4(&instance->context_map, 1);

	params.callback_param = instance;

	instance->bulk_wq = FUNC2("mmal-vchiq",
						    WQ_MEM_RECLAIM);
	if (!instance->bulk_wq)
		goto err_free;

	status = FUNC12(vchi_instance, &params, &instance->handle);
	if (status) {
		FUNC8("Failed to open VCHI service connection (status=%d)\n",
		       status);
		goto err_close_services;
	}

	FUNC13(instance->handle);

	*out_instance = instance;

	return 0;

err_close_services:
	FUNC11(instance->handle);
	FUNC3(instance->bulk_wq);
err_free:
	FUNC14(instance->bulk_scratch);
	FUNC5(instance);
	return -ENODEV;
}