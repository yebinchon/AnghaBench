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
struct qedi_ctx {int /*<<< orphan*/  mac; } ;
struct qed_generic_tlvs {int /*<<< orphan*/ * mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QEDI_LOG_EVT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_generic_tlvs*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void *dev, struct qed_generic_tlvs *data)
{
	struct qedi_ctx *qedi;

	if (!dev) {
		FUNC0(NULL, QEDI_LOG_EVT,
			  "dev is NULL so ignoring get_generic_tlv_data request.\n");
		return;
	}
	qedi = (struct qedi_ctx *)dev;

	FUNC2(data, 0, sizeof(struct qed_generic_tlvs));
	FUNC1(data->mac[0], qedi->mac);
}