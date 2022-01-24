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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct electra_cf_socket {int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_base; int /*<<< orphan*/  mem_size; int /*<<< orphan*/  mem_phys; int /*<<< orphan*/  gpio_base; int /*<<< orphan*/  mem_base; int /*<<< orphan*/  io_virt; int /*<<< orphan*/  timer; int /*<<< orphan*/  irq; int /*<<< orphan*/  socket; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct electra_cf_socket* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct electra_cf_socket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct electra_cf_socket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *ofdev)
{
	struct device *device = &ofdev->dev;
	struct electra_cf_socket *cf;

	cf = FUNC2(device);

	cf->active = 0;
	FUNC6(&cf->socket);
	FUNC3(cf->irq, cf);
	FUNC1(&cf->timer);

	FUNC0(cf->io_virt, cf->io_size);
	FUNC4(cf->mem_base);
	FUNC4(cf->gpio_base);
	FUNC7(cf->mem_phys, cf->mem_size);
	FUNC8(cf->io_base, cf->io_size);

	FUNC5(cf);

	return 0;
}