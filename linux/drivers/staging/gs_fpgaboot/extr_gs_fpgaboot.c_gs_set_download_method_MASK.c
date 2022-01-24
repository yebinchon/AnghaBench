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
struct fpgaimage {int /*<<< orphan*/  dmethod; } ;

/* Variables and functions */
 int /*<<< orphan*/  m_systemmap ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(struct fpgaimage *fimage)
{
	FUNC0("set program method\n");

	fimage->dmethod = m_systemmap;

	FUNC0("systemmap program method\n");

	return 0;
}