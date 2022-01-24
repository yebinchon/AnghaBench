#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct hwq {int /*<<< orphan*/  irqpoll; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxlflash_cfg {struct afu* afu; TYPE_1__* dev; } ;
struct afu {int irqpoll_weight; int num_hwqs; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (struct afu*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  cxlflash_irqpoll ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct hwq* FUNC3 (struct afu*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int,int*) ; 
 struct cxlflash_cfg* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	struct cxlflash_cfg *cfg = FUNC7(FUNC1(dev));
	struct device *cfgdev = &cfg->dev->dev;
	struct afu *afu = cfg->afu;
	struct hwq *hwq;
	u32 weight;
	int rc, i;

	rc = FUNC6(buf, 10, &weight);
	if (rc)
		return -EINVAL;

	if (weight > 256) {
		FUNC2(cfgdev,
			 "Invalid IRQ poll weight. It must be 256 or less.\n");
		return -EINVAL;
	}

	if (weight == afu->irqpoll_weight) {
		FUNC2(cfgdev,
			 "Current IRQ poll weight has the same weight.\n");
		return -EINVAL;
	}

	if (FUNC0(afu)) {
		for (i = 0; i < afu->num_hwqs; i++) {
			hwq = FUNC3(afu, i);

			FUNC4(&hwq->irqpoll);
		}
	}

	afu->irqpoll_weight = weight;

	if (weight > 0) {
		for (i = 0; i < afu->num_hwqs; i++) {
			hwq = FUNC3(afu, i);

			FUNC5(&hwq->irqpoll, weight, cxlflash_irqpoll);
		}
	}

	return count;
}