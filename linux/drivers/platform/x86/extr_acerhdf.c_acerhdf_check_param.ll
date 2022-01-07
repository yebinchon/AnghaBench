; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acerhdf.c_acerhdf_check_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acerhdf.c_acerhdf_check_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }

@fanon = common dso_local global i64 0, align 8
@ACERHDF_MAX_FANON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"fanon temperature too high, set to %d\0A\00", align 1
@kernelmode = common dso_local global i64 0, align 8
@prev_interval = common dso_local global i32 0, align 4
@interval = common dso_local global i32 0, align 4
@ACERHDF_MAX_INTERVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"interval too high, set to %d\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"interval changed to: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thermal_zone_device*)* @acerhdf_check_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acerhdf_check_param(%struct.thermal_zone_device* %0) #0 {
  %2 = alloca %struct.thermal_zone_device*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %2, align 8
  %3 = load i64, i64* @fanon, align 8
  %4 = load i64, i64* @ACERHDF_MAX_FANON, align 8
  %5 = icmp sgt i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* @ACERHDF_MAX_FANON, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i64, i64* @ACERHDF_MAX_FANON, align 8
  store i64 %10, i64* @fanon, align 8
  br label %11

11:                                               ; preds = %6, %1
  %12 = load i64, i64* @kernelmode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = load i32, i32* @prev_interval, align 4
  %16 = load i32, i32* @interval, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i32, i32* @interval, align 4
  %20 = load i32, i32* @ACERHDF_MAX_INTERVAL, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @ACERHDF_MAX_INTERVAL, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ACERHDF_MAX_INTERVAL, align 4
  store i32 %25, i32* @interval, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i64, i64* @verbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @interval, align 4
  %31 = call i32 @pr_notice(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @interval, align 4
  %34 = mul nsw i32 %33, 1000
  %35 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %2, align 8
  %36 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @interval, align 4
  store i32 %37, i32* @prev_interval, align 4
  br label %38

38:                                               ; preds = %32, %14, %11
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
