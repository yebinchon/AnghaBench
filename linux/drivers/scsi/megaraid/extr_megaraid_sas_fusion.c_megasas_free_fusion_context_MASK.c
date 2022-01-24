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
typedef  int /*<<< orphan*/  ulong ;
struct megasas_instance {struct fusion_context* ctrl_context; } ;
struct fusion_context {int /*<<< orphan*/  log_to_span_pages; scalar_t__ log_to_span; int /*<<< orphan*/  load_balance_info_pages; scalar_t__ load_balance_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fusion_context*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4(struct megasas_instance *instance)
{
	struct fusion_context *fusion = instance->ctrl_context;

	if (fusion) {
		if (fusion->load_balance_info) {
			if (FUNC1(fusion->load_balance_info))
				FUNC3(fusion->load_balance_info);
			else
				FUNC0((ulong)fusion->load_balance_info,
					fusion->load_balance_info_pages);
		}

		if (fusion->log_to_span) {
			if (FUNC1(fusion->log_to_span))
				FUNC3(fusion->log_to_span);
			else
				FUNC0((ulong)fusion->log_to_span,
					   fusion->log_to_span_pages);
		}

		FUNC2(fusion);
	}
}