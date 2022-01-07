
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {int dummy; } ;


 int CMD_PSE ;
 int fotg210_clear_command_bit (struct fotg210_hcd*,int ) ;

__attribute__((used)) static void fotg210_disable_PSE(struct fotg210_hcd *fotg210)
{
 fotg210_clear_command_bit(fotg210, CMD_PSE);
}
