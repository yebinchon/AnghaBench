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
struct TYPE_2__ {int /*<<< orphan*/  m_pitch; int /*<<< orphan*/  m_access; } ;
struct matrox_fb_info {TYPE_1__ accel; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MACCESS ; 
 int /*<<< orphan*/  M_PITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct matrox_fb_info *minfo)
{
	FUNC0(M_MACCESS, minfo->accel.m_access);
	FUNC0(M_PITCH, minfo->accel.m_pitch);
}