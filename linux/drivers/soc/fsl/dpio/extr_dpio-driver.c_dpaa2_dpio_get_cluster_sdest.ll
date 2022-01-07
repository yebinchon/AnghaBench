; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-driver.c_dpaa2_dpio_get_cluster_sdest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-driver.c_dpaa2_dpio_get_cluster_sdest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32 }

@ls1088a_soc = common dso_local global i32 0, align 4
@ls2080a_soc = common dso_local global i32 0, align 4
@ls2088a_soc = common dso_local global i32 0, align 4
@lx2160a_soc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown SoC version\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*, i32)* @dpaa2_dpio_get_cluster_sdest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_dpio_get_cluster_sdest(%struct.fsl_mc_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_mc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ls1088a_soc, align 4
  %9 = call i64 @soc_device_match(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  store i32 4, i32* %7, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* @ls2080a_soc, align 4
  %14 = call i64 @soc_device_match(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @ls2088a_soc, align 4
  %18 = call i64 @soc_device_match(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @lx2160a_soc, align 4
  %22 = call i64 @soc_device_match(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16, %12
  store i32 0, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %29

25:                                               ; preds = %20
  %26 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %27 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %36

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %32, %33
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @soc_device_match(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
