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
struct vnt_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*,int,unsigned char) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct vnt_private *priv)
{
	unsigned char byOrgData;

	FUNC0(priv, 0x0D, &byOrgData);
	byOrgData &= ~(FUNC2(0));
	FUNC1(priv, 0x0D, byOrgData);
}