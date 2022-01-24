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
struct sbd_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_DUART_MODE_REG_1 ; 
 int /*<<< orphan*/  R_DUART_MODE_REG_2 ; 
 int /*<<< orphan*/  FUNC0 (struct sbd_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct sbd_port *sport)
{
	FUNC0(sport, R_DUART_MODE_REG_1);
	FUNC0(sport, R_DUART_MODE_REG_2);
}