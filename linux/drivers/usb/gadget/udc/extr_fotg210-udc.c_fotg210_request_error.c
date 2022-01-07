
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_udc {int dummy; } ;


 int fotg210_set_cxstall (struct fotg210_udc*) ;
 int pr_err (char*) ;

__attribute__((used)) static void fotg210_request_error(struct fotg210_udc *fotg210)
{
 fotg210_set_cxstall(fotg210);
 pr_err("request error!!\n");
}
