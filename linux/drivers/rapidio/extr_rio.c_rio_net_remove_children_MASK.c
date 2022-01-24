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
struct rio_net {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rio_mport_cleanup_callback ; 

__attribute__((used)) static int FUNC1(struct rio_net *net)
{
	/*
	 * Unregister all RapidIO devices residing on this net (this will
	 * invoke notification of registered subsystem interfaces as well).
	 */
	FUNC0(&net->dev, NULL, rio_mport_cleanup_callback);
	return 0;
}