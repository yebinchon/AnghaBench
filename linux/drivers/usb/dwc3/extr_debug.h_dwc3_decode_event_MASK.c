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
struct TYPE_2__ {scalar_t__ is_devspec; } ;
union dwc3_event {int /*<<< orphan*/  depevt; int /*<<< orphan*/  devt; TYPE_1__ type; } ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 char const* FUNC0 (char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (char*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline const char *FUNC2(char *str, size_t size, u32 event,
		u32 ep0state)
{
	const union dwc3_event evt = (union dwc3_event) event;

	if (evt.type.is_devspec)
		return FUNC1(str, size, &evt.devt);
	else
		return FUNC0(str, size, &evt.depevt, ep0state);
}