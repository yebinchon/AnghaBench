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
struct c67x00_sie {int /*<<< orphan*/  dev; struct c67x00_hcd* private_data; } ;
struct c67x00_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_EOT ; 
 int /*<<< orphan*/  FUNC0 (struct c67x00_sie*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_sie*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct c67x00_sie *sie, int port)
{
	struct c67x00_hcd *c67x00 = sie->private_data;
	unsigned long flags;

	FUNC0(sie, port);

	FUNC3(&c67x00->lock, flags);
	FUNC1(sie, port);
	FUNC4(&c67x00->lock, flags);

	FUNC2(sie->dev, DEFAULT_EOT);
}