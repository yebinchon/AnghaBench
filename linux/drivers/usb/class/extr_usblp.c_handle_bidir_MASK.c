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
struct usblp {scalar_t__ used; scalar_t__ bidir; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct usblp*) ; 

__attribute__((used)) static int FUNC1(struct usblp *usblp)
{
	if (usblp->bidir && usblp->used) {
		if (FUNC0(usblp) < 0)
			return -EIO;
	}
	return 0;
}