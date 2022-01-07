
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb_p (scalar_t__) ;
 int pr_warn (char*,int,int,int,int) ;
 scalar_t__ synth_port ;

__attribute__((used)) static char *oops(void)
{
 int s1, s2, s3, s4;

 s1 = inb_p(synth_port);
 s2 = inb_p(synth_port + 1);
 s3 = inb_p(synth_port + 2);
 s4 = inb_p(synth_port + 3);
 pr_warn("synth timeout %d %d %d %d\n", s1, s2, s3, s4);
 return ((void*)0);
}
