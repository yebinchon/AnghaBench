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
struct imx_media_fim {scalar_t__ num_skip; int /*<<< orphan*/  sd; int /*<<< orphan*/  icap_first_event; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_MEDIA_EOF_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct imx_media_fim *fim)
{
	unsigned long ret;

	if (!fim->enabled || fim->num_skip > 0)
		return;

	ret = FUNC2(
		&fim->icap_first_event,
		FUNC0(IMX_MEDIA_EOF_TIMEOUT));
	if (ret == 0)
		FUNC1(fim->sd, "wait first icap event timeout\n");
}