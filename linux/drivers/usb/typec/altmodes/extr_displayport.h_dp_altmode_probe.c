
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode {int dummy; } ;


 int ENOTSUPP ;

int dp_altmode_probe(struct typec_altmode *alt) { return -ENOTSUPP; }
