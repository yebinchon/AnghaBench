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
struct musb {struct device* controller; } ;
struct dsps_glue {scalar_t__ sw_babble_enabled; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EPIPE ; 
 struct dsps_glue* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct musb*) ; 

__attribute__((used)) static int FUNC2(struct musb *musb)
{
	struct device *dev = musb->controller;
	struct dsps_glue *glue = FUNC0(dev->parent);
	int session_restart = 0;

	if (glue->sw_babble_enabled)
		session_restart = FUNC1(musb);
	else
		session_restart = 1;

	return session_restart ? 0 : -EPIPE;
}