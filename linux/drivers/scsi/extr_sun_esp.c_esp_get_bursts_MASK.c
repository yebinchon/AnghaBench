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
typedef  int u8 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct esp {int bursts; int /*<<< orphan*/  dev; } ;
struct device_node {struct device_node* parent; } ;

/* Variables and functions */
 int DMA_BURST16 ; 
 int DMA_BURST32 ; 
 int FUNC0 (struct device_node*,char*,int) ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct esp *esp, struct platform_device *dma_of)
{
	struct device_node *dma_dp = dma_of->dev.of_node;
	struct platform_device *op = FUNC1(esp->dev);
	struct device_node *dp;
	u8 bursts, val;

	dp = op->dev.of_node;
	bursts = FUNC0(dp, "burst-sizes", 0xff);
	val = FUNC0(dma_dp, "burst-sizes", 0xff);
	if (val != 0xff)
		bursts &= val;

	val = FUNC0(dma_dp->parent, "burst-sizes", 0xff);
	if (val != 0xff)
		bursts &= val;

	if (bursts == 0xff ||
	    (bursts & DMA_BURST16) == 0 ||
	    (bursts & DMA_BURST32) == 0)
		bursts = (DMA_BURST32 - 1);

	esp->bursts = bursts;
}