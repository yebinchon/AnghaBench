
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mlxbf_tmfifo {int dummy; } ;


 int mlxbf_tmfifo_cleanup (struct mlxbf_tmfifo*) ;
 struct mlxbf_tmfifo* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mlxbf_tmfifo_remove(struct platform_device *pdev)
{
 struct mlxbf_tmfifo *fifo = platform_get_drvdata(pdev);

 mlxbf_tmfifo_cleanup(fifo);

 return 0;
}
