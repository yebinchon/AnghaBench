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
struct megasas_instance {struct fusion_context* ctrl_context; } ;
struct fusion_context {int /*<<< orphan*/  reply_frames_desc_pool; int /*<<< orphan*/ * reply_frames_desc_phys; scalar_t__* reply_frames_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct megasas_instance *instance) {

	struct fusion_context *fusion;

	fusion = instance->ctrl_context;

	if (fusion->reply_frames_desc[0])
		FUNC1(fusion->reply_frames_desc_pool,
			fusion->reply_frames_desc[0],
			fusion->reply_frames_desc_phys[0]);

	FUNC0(fusion->reply_frames_desc_pool);

}