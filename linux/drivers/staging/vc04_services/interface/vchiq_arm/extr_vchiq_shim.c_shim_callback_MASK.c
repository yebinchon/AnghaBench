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
struct vchiq_header {int dummy; } ;
struct shim_service {int /*<<< orphan*/  handle; int /*<<< orphan*/  callback_param; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
typedef  int VCHIQ_REASON_T ;

/* Variables and functions */
#define  VCHIQ_BULK_RECEIVE_ABORTED 134 
#define  VCHIQ_BULK_RECEIVE_DONE 133 
#define  VCHIQ_BULK_TRANSMIT_ABORTED 132 
#define  VCHIQ_BULK_TRANSMIT_DONE 131 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  VCHIQ_MESSAGE_AVAILABLE 130 
#define  VCHIQ_SERVICE_CLOSED 129 
#define  VCHIQ_SERVICE_OPENED 128 
 int /*<<< orphan*/  VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  VCHI_CALLBACK_BULK_RECEIVED ; 
 int /*<<< orphan*/  VCHI_CALLBACK_BULK_RECEIVE_ABORTED ; 
 int /*<<< orphan*/  VCHI_CALLBACK_BULK_SENT ; 
 int /*<<< orphan*/  VCHI_CALLBACK_BULK_TRANSMIT_ABORTED ; 
 int /*<<< orphan*/  VCHI_CALLBACK_MSG_AVAILABLE ; 
 int /*<<< orphan*/  VCHI_CALLBACK_SERVICE_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct vchiq_header*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct vchiq_header*) ; 

__attribute__((used)) static VCHIQ_STATUS_T FUNC10(VCHIQ_REASON_T reason,
				    struct vchiq_header *header,
				    VCHIQ_SERVICE_HANDLE_T handle,
				    void *bulk_user)
{
	struct shim_service *service =
		(struct shim_service *)FUNC0(handle);

	if (!service->callback)
		goto release;

	switch (reason) {
	case VCHIQ_MESSAGE_AVAILABLE:
		FUNC9(&service->queue, header);

		service->callback(service->callback_param,
				  VCHI_CALLBACK_MSG_AVAILABLE, NULL);

		goto done;

	case VCHIQ_BULK_TRANSMIT_DONE:
		service->callback(service->callback_param,
				  VCHI_CALLBACK_BULK_SENT, bulk_user);
		break;

	case VCHIQ_BULK_RECEIVE_DONE:
		service->callback(service->callback_param,
				  VCHI_CALLBACK_BULK_RECEIVED, bulk_user);
		break;

	case VCHIQ_SERVICE_CLOSED:
		service->callback(service->callback_param,
				  VCHI_CALLBACK_SERVICE_CLOSED, NULL);
		break;

	case VCHIQ_SERVICE_OPENED:
		/* No equivalent VCHI reason */
		break;

	case VCHIQ_BULK_TRANSMIT_ABORTED:
		service->callback(service->callback_param,
				  VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
				  bulk_user);
		break;

	case VCHIQ_BULK_RECEIVE_ABORTED:
		service->callback(service->callback_param,
				  VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
				  bulk_user);
		break;

	default:
		FUNC1(1, "not supported\n");
		break;
	}

release:
	FUNC8(service->handle, header);
done:
	return VCHIQ_SUCCESS;
}