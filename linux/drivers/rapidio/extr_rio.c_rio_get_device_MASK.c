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
typedef  int /*<<< orphan*/  u16 ;
struct rio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RIO_ANY_ID ; 
 struct rio_dev* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rio_dev*) ; 

struct rio_dev *FUNC1(u16 vid, u16 did, struct rio_dev *from)
{
	return FUNC0(vid, did, RIO_ANY_ID, RIO_ANY_ID, from);
}