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
struct qmi_service {unsigned int service; unsigned int version; unsigned int instance; int /*<<< orphan*/  list_node; } ;
struct qmi_handle {int /*<<< orphan*/  lookups; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct qmi_service* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qmi_handle*,struct qmi_service*) ; 

int FUNC3(struct qmi_handle *qmi, unsigned int service,
		   unsigned int version, unsigned int instance)
{
	struct qmi_service *svc;

	svc = FUNC0(sizeof(*svc), GFP_KERNEL);
	if (!svc)
		return -ENOMEM;

	svc->service = service;
	svc->version = version;
	svc->instance = instance;

	FUNC1(&svc->list_node, &qmi->lookups);

	FUNC2(qmi, svc);

	return 0;
}