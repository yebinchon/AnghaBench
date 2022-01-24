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
struct TYPE_2__ {scalar_t__ loopback; int /*<<< orphan*/  clock_speed; } ;
struct mgsl_struct {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mgsl_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mgsl_struct*) ; 

__attribute__((used)) static void FUNC4( struct mgsl_struct *info )
{
	FUNC2( info );
	FUNC3( info );

	FUNC0(info, info->params.clock_speed);

	if (info->params.loopback)
		FUNC1(info,1);

}