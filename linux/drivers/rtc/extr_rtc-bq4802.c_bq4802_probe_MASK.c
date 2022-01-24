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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct bq4802 {int /*<<< orphan*/  rtc; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  regs; TYPE_1__* r; int /*<<< orphan*/  ioport; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  bq4802_ops ; 
 int /*<<< orphan*/  bq4802_read_io ; 
 int /*<<< orphan*/  bq4802_read_mem ; 
 int /*<<< orphan*/  bq4802_write_io ; 
 int /*<<< orphan*/  bq4802_write_mem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bq4802* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct platform_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct bq4802*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct bq4802 *p = FUNC3(&pdev->dev, sizeof(*p), GFP_KERNEL);
	int err = -ENOMEM;

	if (!p)
		goto out;

	FUNC8(&p->lock);

	p->r = FUNC5(pdev, IORESOURCE_MEM, 0);
	if (!p->r) {
		p->r = FUNC5(pdev, IORESOURCE_IO, 0);
		err = -EINVAL;
		if (!p->r)
			goto out;
	}
	if (p->r->flags & IORESOURCE_IO) {
		p->ioport = p->r->start;
		p->read = bq4802_read_io;
		p->write = bq4802_write_io;
	} else if (p->r->flags & IORESOURCE_MEM) {
		p->regs = FUNC2(&pdev->dev, p->r->start,
					FUNC7(p->r));
		if (!p->regs){
			err = -ENOMEM;
			goto out;
		}
		p->read = bq4802_read_mem;
		p->write = bq4802_write_mem;
	} else {
		err = -EINVAL;
		goto out;
	}

	FUNC6(pdev, p);

	p->rtc = FUNC4(&pdev->dev, "bq4802",
					&bq4802_ops, THIS_MODULE);
	if (FUNC0(p->rtc)) {
		err = FUNC1(p->rtc);
		goto out;
	}

	err = 0;
out:
	return err;

}