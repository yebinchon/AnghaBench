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
struct u132 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HC_STATE_HALT ; 
 TYPE_1__* FUNC0 (struct u132*) ; 

__attribute__((used)) static inline void FUNC1(struct u132 *u132)
{
	FUNC0(u132)->state = HC_STATE_HALT;
}