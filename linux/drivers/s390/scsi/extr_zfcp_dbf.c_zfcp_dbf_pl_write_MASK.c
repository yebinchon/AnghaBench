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
typedef  scalar_t__ u16 ;
struct zfcp_dbf_pay {int /*<<< orphan*/  counter; int /*<<< orphan*/  data; int /*<<< orphan*/  area; int /*<<< orphan*/  fsf_req_id; } ;
struct zfcp_dbf {int /*<<< orphan*/  pay_lock; int /*<<< orphan*/  pay; struct zfcp_dbf_pay pay_buf; } ;

/* Variables and functions */
 scalar_t__ ZFCP_DBF_PAY_MAX_REC ; 
 int /*<<< orphan*/  ZFCP_DBF_TAG_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct zfcp_dbf_pay*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_dbf_pay*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static inline
void FUNC7(struct zfcp_dbf *dbf, void *data, u16 length, char *area,
		       u64 req_id)
{
	struct zfcp_dbf_pay *pl = &dbf->pay_buf;
	u16 offset = 0, rec_length;

	FUNC4(&dbf->pay_lock);
	FUNC2(pl, 0, sizeof(*pl));
	pl->fsf_req_id = req_id;
	FUNC1(pl->area, area, ZFCP_DBF_TAG_LEN);

	while (offset < length) {
		rec_length = FUNC3((u16) ZFCP_DBF_PAY_MAX_REC,
				 (u16) (length - offset));
		FUNC1(pl->data, data + offset, rec_length);
		FUNC0(dbf->pay, 1, pl, FUNC6(rec_length));

		offset += rec_length;
		pl->counter++;
	}

	FUNC5(&dbf->pay_lock);
}