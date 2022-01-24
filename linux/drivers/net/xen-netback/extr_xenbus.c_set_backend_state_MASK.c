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
struct backend_info {int state; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  XenbusStateClosed 132 
#define  XenbusStateClosing 131 
#define  XenbusStateConnected 130 
#define  XenbusStateInitWait 129 
#define  XenbusStateInitialising 128 
 int /*<<< orphan*/  FUNC1 (struct backend_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct backend_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct backend_info*,int const) ; 

__attribute__((used)) static void FUNC4(struct backend_info *be,
			      enum xenbus_state state)
{
	while (be->state != state) {
		switch (be->state) {
		case XenbusStateInitialising:
			switch (state) {
			case XenbusStateInitWait:
			case XenbusStateConnected:
			case XenbusStateClosing:
				FUNC3(be, XenbusStateInitWait);
				break;
			case XenbusStateClosed:
				FUNC3(be, XenbusStateClosed);
				break;
			default:
				FUNC0();
			}
			break;
		case XenbusStateClosed:
			switch (state) {
			case XenbusStateInitWait:
			case XenbusStateConnected:
				FUNC3(be, XenbusStateInitWait);
				break;
			case XenbusStateClosing:
				FUNC3(be, XenbusStateClosing);
				break;
			default:
				FUNC0();
			}
			break;
		case XenbusStateInitWait:
			switch (state) {
			case XenbusStateConnected:
				FUNC1(be);
				FUNC3(be, XenbusStateConnected);
				break;
			case XenbusStateClosing:
			case XenbusStateClosed:
				FUNC3(be, XenbusStateClosing);
				break;
			default:
				FUNC0();
			}
			break;
		case XenbusStateConnected:
			switch (state) {
			case XenbusStateInitWait:
			case XenbusStateClosing:
			case XenbusStateClosed:
				FUNC2(be);
				FUNC3(be, XenbusStateClosing);
				break;
			default:
				FUNC0();
			}
			break;
		case XenbusStateClosing:
			switch (state) {
			case XenbusStateInitWait:
			case XenbusStateConnected:
			case XenbusStateClosed:
				FUNC3(be, XenbusStateClosed);
				break;
			default:
				FUNC0();
			}
			break;
		default:
			FUNC0();
		}
	}
}