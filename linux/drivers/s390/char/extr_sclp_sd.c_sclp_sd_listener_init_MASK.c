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
struct sclp_sd_listener {int /*<<< orphan*/  completion; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sclp_sd_listener*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sclp_sd_listener *listener, u32 id)
{
	FUNC1(listener, 0, sizeof(*listener));
	listener->id = id;
	FUNC0(&listener->completion);
}