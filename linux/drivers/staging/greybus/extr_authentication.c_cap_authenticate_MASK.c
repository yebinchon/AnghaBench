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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct gb_operation {TYPE_2__* response; TYPE_1__* request; } ;
struct gb_connection {int dummy; } ;
struct gb_cap_authenticate_response {int /*<<< orphan*/ * signature; int /*<<< orphan*/ * response; int /*<<< orphan*/  result_code; } ;
struct gb_cap_authenticate_request {int /*<<< orphan*/ * challenge; int /*<<< orphan*/ * uid; int /*<<< orphan*/  auth_type; } ;
struct gb_cap {int /*<<< orphan*/  parent; struct gb_connection* connection; } ;
struct TYPE_4__ {int payload_size; struct gb_cap_authenticate_response* payload; } ;
struct TYPE_3__ {struct gb_cap_authenticate_request* payload; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GB_CAP_TYPE_AUTHENTICATE ; 
 int /*<<< orphan*/  GB_OPERATION_FLAG_SHORT_RESPONSE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct gb_operation* FUNC2 (struct gb_connection*,int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_operation*) ; 
 int FUNC5 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct gb_cap *cap, u32 auth_type, u8 *uid,
			    u8 *challenge, u8 *result, u8 *auth_response,
			    u32 *signature_size, u8 *signature)
{
	struct gb_connection *connection = cap->connection;
	struct gb_cap_authenticate_request *request;
	struct gb_cap_authenticate_response *response;
	size_t max_size = FUNC3(connection);
	struct gb_operation *op;
	int ret;

	op = FUNC2(connection, GB_CAP_TYPE_AUTHENTICATE,
				       sizeof(*request), max_size,
				       GB_OPERATION_FLAG_SHORT_RESPONSE,
				       GFP_KERNEL);
	if (!op)
		return -ENOMEM;

	request = op->request->payload;
	request->auth_type = FUNC0(auth_type);
	FUNC6(request->uid, uid, sizeof(request->uid));
	FUNC6(request->challenge, challenge, sizeof(request->challenge));

	ret = FUNC5(op);
	if (ret) {
		FUNC1(cap->parent, "failed to authenticate (%d)\n", ret);
		goto done;
	}

	response = op->response->payload;
	*result = response->result_code;
	*signature_size = op->response->payload_size - sizeof(*response);
	FUNC6(auth_response, response->response, sizeof(response->response));
	FUNC6(signature, response->signature, *signature_size);

done:
	FUNC4(op);
	return ret;
}