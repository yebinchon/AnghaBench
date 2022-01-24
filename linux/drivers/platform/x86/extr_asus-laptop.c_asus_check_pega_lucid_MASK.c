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
struct asus_laptop {int /*<<< orphan*/  handle; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_NAME_PEGA ; 
 int /*<<< orphan*/  METHOD_PEGA_DISABLE ; 
 int /*<<< orphan*/  METHOD_PEGA_ENABLE ; 
 int /*<<< orphan*/  METHOD_PEGA_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct asus_laptop *asus)
{
	return !FUNC1(asus->name, DEVICE_NAME_PEGA) &&
	   !FUNC0(asus->handle, METHOD_PEGA_ENABLE, NULL) &&
	   !FUNC0(asus->handle, METHOD_PEGA_DISABLE, NULL) &&
	   !FUNC0(asus->handle, METHOD_PEGA_READ, NULL);
}