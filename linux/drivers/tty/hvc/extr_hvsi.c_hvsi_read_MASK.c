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
struct hvsi_struct {int /*<<< orphan*/  vtermno; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC1(struct hvsi_struct *hp, char *buf, int count)
{
	unsigned long got;

	got = FUNC0(hp->vtermno, buf, count);

	return got;
}