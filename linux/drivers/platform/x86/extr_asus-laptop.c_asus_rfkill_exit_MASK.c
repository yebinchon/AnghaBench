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
struct asus_laptop {int /*<<< orphan*/  gps; int /*<<< orphan*/  wlan; int /*<<< orphan*/  bluetooth; int /*<<< orphan*/  wwan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct asus_laptop *asus)
{
	FUNC0(&asus->wwan);
	FUNC0(&asus->bluetooth);
	FUNC0(&asus->wlan);
	FUNC0(&asus->gps);
}