
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage(void)
{
 printf("\nUsage: ./firmware <gb-fw-mgmt-X (default: gb-fw-mgmt-0)> <interface: 0, backend: 1 (default: 0)> <firmware-tag> (default: \"s3f\"/\"bf_01\") <timeout (default: 10000 ms)>\n");
}
