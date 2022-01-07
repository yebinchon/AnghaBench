; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_async_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_async_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_pkg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cfg_error_pkg = type { i32 }

@TB_CFG_PKG_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_pkg*)* @tb_async_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_async_error(%struct.ctl_pkg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_pkg*, align 8
  %4 = alloca %struct.cfg_error_pkg*, align 8
  store %struct.ctl_pkg* %0, %struct.ctl_pkg** %3, align 8
  %5 = load %struct.ctl_pkg*, %struct.ctl_pkg** %3, align 8
  %6 = bitcast %struct.ctl_pkg* %5 to %struct.cfg_error_pkg*
  store %struct.cfg_error_pkg* %6, %struct.cfg_error_pkg** %4, align 8
  %7 = load %struct.ctl_pkg*, %struct.ctl_pkg** %3, align 8
  %8 = getelementptr inbounds %struct.ctl_pkg, %struct.ctl_pkg* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TB_CFG_PKG_ERROR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.cfg_error_pkg*, %struct.cfg_error_pkg** %4, align 8
  %16 = getelementptr inbounds %struct.cfg_error_pkg, %struct.cfg_error_pkg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %19 [
    i32 128, label %18
    i32 129, label %18
    i32 130, label %18
  ]

18:                                               ; preds = %14, %14, %14
  store i32 1, i32* %2, align 4
  br label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
