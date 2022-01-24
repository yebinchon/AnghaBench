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
struct td {int /*<<< orphan*/  frame_lh; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct td*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct td *td)
{
	FUNC1(td, 0, sizeof(*td));
	FUNC0(&td->node);
	FUNC0(&td->frame_lh);
}