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
struct qedi_ctx {int max_active_conns; } ;
struct qedi_conn {int dummy; } ;

/* Variables and functions */
 int SUCCESS ; 
 struct qedi_conn* FUNC0 (struct qedi_ctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qedi_ctx*,struct qedi_conn*) ; 

int FUNC2(struct qedi_ctx *qedi)
{
	struct qedi_conn *qedi_conn;
	int i;

	for (i = 0; i < qedi->max_active_conns; i++) {
		qedi_conn = FUNC0(qedi, i);
		if (!qedi_conn)
			continue;

		FUNC1(qedi, qedi_conn);
	}

	return SUCCESS;
}