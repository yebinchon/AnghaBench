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
struct rcar_gen3_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_gen3_chan*) ; 

__attribute__((used)) static void FUNC3(struct rcar_gen3_chan *ch)
{
	if (!FUNC0(ch))
		FUNC1(ch);
	else
		FUNC2(ch);
}