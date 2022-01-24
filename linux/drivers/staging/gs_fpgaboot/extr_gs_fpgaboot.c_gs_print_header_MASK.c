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
struct fpgaimage {int /*<<< orphan*/  lendata; int /*<<< orphan*/  time; int /*<<< orphan*/  date; int /*<<< orphan*/  part; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fpgaimage *fimage)
{
	FUNC0("file: %s\n", fimage->filename);
	FUNC0("part: %s\n", fimage->part);
	FUNC0("date: %s\n", fimage->date);
	FUNC0("time: %s\n", fimage->time);
	FUNC0("lendata: %d\n", fimage->lendata);
}