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
struct nubus_dirent {unsigned char* base; int /*<<< orphan*/  mask; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned char *FUNC2(const struct nubus_dirent *nd)
{
	unsigned char *p = nd->base;

	/* Essentially, just step over the bytelanes using whatever
	   offset we might have found */
	FUNC1(&p, FUNC0(nd->data), nd->mask);
	/* And return the value */
	return p;
}