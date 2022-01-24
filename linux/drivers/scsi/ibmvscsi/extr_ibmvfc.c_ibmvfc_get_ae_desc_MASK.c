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
typedef  scalar_t__ u64 ;
struct ibmvfc_async_desc {scalar_t__ ae; } ;

/* Variables and functions */
 int FUNC0 (struct ibmvfc_async_desc const*) ; 
 struct ibmvfc_async_desc const* ae_desc ; 
 struct ibmvfc_async_desc const unknown_ae ; 

__attribute__((used)) static const struct ibmvfc_async_desc *FUNC1(u64 ae)
{
	int i;

	for (i = 0; i < FUNC0(ae_desc); i++)
		if (ae_desc[i].ae == ae)
			return &ae_desc[i];

	return &unknown_ae;
}