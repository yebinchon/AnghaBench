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
struct iscsi_cls_session {int /*<<< orphan*/  dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_ERR_CONN_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct iscsi_cls_session *cls_session)
{
	FUNC0(cls_session->dd_data, ISCSI_ERR_CONN_FAILED);
}