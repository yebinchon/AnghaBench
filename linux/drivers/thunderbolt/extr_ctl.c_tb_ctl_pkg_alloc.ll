; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_pkg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_pkg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_pkg = type { i32, %struct.TYPE_2__, %struct.tb_ctl* }
%struct.TYPE_2__ = type { i32 }
%struct.tb_ctl = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctl_pkg* (%struct.tb_ctl*)* @tb_ctl_pkg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctl_pkg* @tb_ctl_pkg_alloc(%struct.tb_ctl* %0) #0 {
  %2 = alloca %struct.ctl_pkg*, align 8
  %3 = alloca %struct.tb_ctl*, align 8
  %4 = alloca %struct.ctl_pkg*, align 8
  store %struct.tb_ctl* %0, %struct.tb_ctl** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ctl_pkg* @kzalloc(i32 16, i32 %5)
  store %struct.ctl_pkg* %6, %struct.ctl_pkg** %4, align 8
  %7 = load %struct.ctl_pkg*, %struct.ctl_pkg** %4, align 8
  %8 = icmp ne %struct.ctl_pkg* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ctl_pkg* null, %struct.ctl_pkg** %2, align 8
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.tb_ctl*, %struct.tb_ctl** %3, align 8
  %12 = load %struct.ctl_pkg*, %struct.ctl_pkg** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %12, i32 0, i32 2
  store %struct.tb_ctl* %11, %struct.tb_ctl** %13, align 8
  %14 = load %struct.tb_ctl*, %struct.tb_ctl** %3, align 8
  %15 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.ctl_pkg*, %struct.ctl_pkg** %4, align 8
  %19 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dma_pool_alloc(i32 %16, i32 %17, i32* %20)
  %22 = load %struct.ctl_pkg*, %struct.ctl_pkg** %4, align 8
  %23 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ctl_pkg*, %struct.ctl_pkg** %4, align 8
  %25 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %10
  %29 = load %struct.ctl_pkg*, %struct.ctl_pkg** %4, align 8
  %30 = call i32 @kfree(%struct.ctl_pkg* %29)
  store %struct.ctl_pkg* null, %struct.ctl_pkg** %2, align 8
  br label %33

31:                                               ; preds = %10
  %32 = load %struct.ctl_pkg*, %struct.ctl_pkg** %4, align 8
  store %struct.ctl_pkg* %32, %struct.ctl_pkg** %2, align 8
  br label %33

33:                                               ; preds = %31, %28, %9
  %34 = load %struct.ctl_pkg*, %struct.ctl_pkg** %2, align 8
  ret %struct.ctl_pkg* %34
}

declare dso_local %struct.ctl_pkg* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.ctl_pkg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
