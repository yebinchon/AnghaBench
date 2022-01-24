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
struct vc_audio_msg {int dummy; } ;
struct bcm2835_audio_instance {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm2835_audio_instance*) ; 
 int FUNC1 (struct bcm2835_audio_instance*,struct vc_audio_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_audio_instance*) ; 

__attribute__((used)) static int FUNC3(struct bcm2835_audio_instance *instance,
				  struct vc_audio_msg *m, bool wait)
{
	int err;

	FUNC0(instance);
	err = FUNC1(instance, m, wait);
	FUNC2(instance);
	return err;
}