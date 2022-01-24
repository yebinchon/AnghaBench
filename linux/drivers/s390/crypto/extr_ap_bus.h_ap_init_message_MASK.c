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
struct ap_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ap_message*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct ap_message *ap_msg)
{
	FUNC0(ap_msg, 0, sizeof(*ap_msg));
}