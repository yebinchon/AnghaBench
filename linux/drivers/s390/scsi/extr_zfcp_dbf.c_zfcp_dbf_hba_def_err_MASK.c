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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct zfcp_dbf_pay {int counter; int /*<<< orphan*/  data; int /*<<< orphan*/  fsf_req_id; int /*<<< orphan*/  area; } ;
struct zfcp_dbf {int /*<<< orphan*/  pay_lock; int /*<<< orphan*/  pay; struct zfcp_dbf_pay pay_buf; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; } ;
struct qdio_buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ ZFCP_DBF_PAY_MAX_REC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,struct zfcp_dbf_pay*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_dbf_pay*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(struct zfcp_adapter *adapter, u64 req_id, u16 scount,
			  void **pl)
{
	struct zfcp_dbf *dbf = adapter->dbf;
	struct zfcp_dbf_pay *payload = &dbf->pay_buf;
	unsigned long flags;
	static int const level = 1;
	u16 length;

	if (FUNC7(!FUNC1(dbf->pay, level)))
		return;

	if (!pl)
		return;

	FUNC5(&dbf->pay_lock, flags);
	FUNC3(payload, 0, sizeof(*payload));

	FUNC2(payload->area, "def_err", 7);
	payload->fsf_req_id = req_id;
	payload->counter = 0;
	length = FUNC4((u16)sizeof(struct qdio_buffer),
		     (u16)ZFCP_DBF_PAY_MAX_REC);

	while (payload->counter < scount && (char *)pl[payload->counter]) {
		FUNC2(payload->data, (char *)pl[payload->counter], length);
		FUNC0(dbf->pay, level, payload, FUNC8(length));
		payload->counter++;
	}

	FUNC6(&dbf->pay_lock, flags);
}