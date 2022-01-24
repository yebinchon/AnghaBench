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
struct esp {TYPE_1__* host; int /*<<< orphan*/  command_block_dma; int /*<<< orphan*/  command_block; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int irq; } ;

/* Variables and functions */
 struct esp* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct esp*) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct esp *esp = FUNC0(&dev->dev);
	unsigned int irq = esp->host->irq;

	FUNC3(esp);

	FUNC2(irq, esp);
	FUNC1(esp->dev, 16,
			  esp->command_block,
			  esp->command_block_dma);

	FUNC4(esp->host);

	return 0;
}