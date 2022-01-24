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
struct wsm_template_frame {int rate; int /*<<< orphan*/  skb; int /*<<< orphan*/  frame_type; } ;
struct cw1200_common {int /*<<< orphan*/  vif; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WSM_FRAME_TYPE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cw1200_common*,struct wsm_template_frame*) ; 

__attribute__((used)) static int FUNC3(struct cw1200_common *priv)
{
	int ret = 0;
	struct wsm_template_frame frame = {
		.frame_type = WSM_FRAME_TYPE_NULL,
		.rate = 0xFF,
	};

	frame.skb = FUNC1(priv->hw, priv->vif, false);
	if (!frame.skb)
		return -ENOMEM;

	ret = FUNC2(priv, &frame);

	FUNC0(frame.skb);

	return ret;
}