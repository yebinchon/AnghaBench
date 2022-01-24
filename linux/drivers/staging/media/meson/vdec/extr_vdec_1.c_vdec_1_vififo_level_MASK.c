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
typedef  int /*<<< orphan*/  u32 ;
struct amvdec_session {struct amvdec_core* core; } ;
struct amvdec_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLD_MEM_VIFIFO_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct amvdec_core*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC1(struct amvdec_session *sess)
{
	struct amvdec_core *core = sess->core;

	return FUNC0(core, VLD_MEM_VIFIFO_LEVEL);
}