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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 size_t FUNC0 (unsigned int,int) ; 

__attribute__((used)) static size_t FUNC1(unsigned int len)
{
	return sizeof(__be32) + FUNC0(len, sizeof(__be32));
}