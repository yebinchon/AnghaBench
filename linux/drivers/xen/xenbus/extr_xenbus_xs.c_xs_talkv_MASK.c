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
struct xsd_sockmsg {int type; unsigned int len; int /*<<< orphan*/  tx_id; scalar_t__ req_id; } ;
struct xenbus_transaction {int /*<<< orphan*/  id; } ;
struct xb_req_data {unsigned int num_vecs; int user_req; int /*<<< orphan*/  cb; struct kvec const* vec; } ;
struct kvec {scalar_t__ iov_len; } ;
typedef  enum xsd_sockmsg_type { ____Placeholder_xsd_sockmsg_type } xsd_sockmsg_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int GFP_NOIO ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ XS_ERROR ; 
 int __GFP_HIGH ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 struct xb_req_data* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xb_req_data*,struct xsd_sockmsg*) ; 
 void* FUNC7 (struct xb_req_data*,struct xsd_sockmsg*) ; 
 int /*<<< orphan*/  xs_wake_up ; 

__attribute__((used)) static void *FUNC8(struct xenbus_transaction t,
		      enum xsd_sockmsg_type type,
		      const struct kvec *iovec,
		      unsigned int num_vecs,
		      unsigned int *len)
{
	struct xb_req_data *req;
	struct xsd_sockmsg msg;
	void *ret = NULL;
	unsigned int i;
	int err;

	req = FUNC4(sizeof(*req), GFP_NOIO | __GFP_HIGH);
	if (!req)
		return FUNC0(-ENOMEM);

	req->vec = iovec;
	req->num_vecs = num_vecs;
	req->cb = xs_wake_up;
	req->user_req = false;

	msg.req_id = 0;
	msg.tx_id = t.id;
	msg.type = type;
	msg.len = 0;
	for (i = 0; i < num_vecs; i++)
		msg.len += iovec[i].iov_len;

	FUNC6(req, &msg);

	ret = FUNC7(req, &msg);
	if (len)
		*len = msg.len;

	if (FUNC1(ret))
		return ret;

	if (msg.type == XS_ERROR) {
		err = FUNC2(ret);
		FUNC3(ret);
		return FUNC0(-err);
	}

	if (msg.type != type) {
		FUNC5("unexpected type [%d], expected [%d]\n",
				    msg.type, type);
		FUNC3(ret);
		return FUNC0(-EINVAL);
	}
	return ret;
}