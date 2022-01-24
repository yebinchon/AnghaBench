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
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct wsm_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*,int) ; 
 int FUNC4 (struct cw1200_common*,int) ; 
 int FUNC5 (struct cw1200_common*,struct wsm_buf*,int) ; 

__attribute__((used)) static int FUNC6(struct cw1200_common *priv,
				struct wsm_buf *buf, int link_id)
{
	int ret;
	int count;

	count = FUNC1(buf);
	if (FUNC0(count <= 0))
		return -EINVAL;

	if (count > 1) {
		/* We already released one buffer, now for the rest */
		ret = FUNC4(priv, count - 1);
		if (ret < 0)
			return ret;
		else if (ret > 0)
			FUNC2(priv);
	}

	FUNC3(priv, count);
	do {
		ret = FUNC5(priv, buf, link_id);
	} while (!ret && --count);

	return ret;

underflow:
	FUNC0(1);
	return -EINVAL;
}