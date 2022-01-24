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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad2s1210_state {int /*<<< orphan*/  lock; int /*<<< orphan*/ * gpios; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD2S1210_REG_FAULT ; 
 size_t AD2S1210_SAMPLE ; 
 int FUNC0 (struct ad2s1210_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct ad2s1210_state* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf,
				    size_t len)
{
	struct ad2s1210_state *st = FUNC3(FUNC1(dev));
	int ret;

	FUNC4(&st->lock);
	FUNC2(st->gpios[AD2S1210_SAMPLE], 0);
	/* delay (2 * tck + 20) nano seconds */
	FUNC6(1);
	FUNC2(st->gpios[AD2S1210_SAMPLE], 1);
	ret = FUNC0(st, AD2S1210_REG_FAULT);
	if (ret < 0)
		goto error_ret;
	FUNC2(st->gpios[AD2S1210_SAMPLE], 0);
	FUNC2(st->gpios[AD2S1210_SAMPLE], 1);
error_ret:
	FUNC5(&st->lock);

	return ret < 0 ? ret : len;
}