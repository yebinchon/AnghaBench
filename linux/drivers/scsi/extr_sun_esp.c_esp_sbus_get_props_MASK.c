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
struct platform_device {int dummy; } ;
struct esp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct esp*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct esp*) ; 
 int /*<<< orphan*/  FUNC2 (struct esp*) ; 
 int /*<<< orphan*/  FUNC3 (struct esp*,struct platform_device*) ; 

__attribute__((used)) static void FUNC4(struct esp *esp, struct platform_device *espdma)
{
	FUNC3(esp, espdma);
	FUNC2(esp);
	FUNC1(esp);
	FUNC0(esp, espdma);
}