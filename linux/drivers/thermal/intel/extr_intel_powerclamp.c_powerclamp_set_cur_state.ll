; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_powerclamp_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_powerclamp.c_powerclamp_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { i32 }

@MAX_TARGET_RATIO = common dso_local global i32 0, align 4
@set_target_ratio = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Start idle injection to reduce power\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Stop forced idle injection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @powerclamp_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powerclamp_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca %struct.thermal_cooling_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = load i32, i32* @MAX_TARGET_RATIO, align 4
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = call i64 @clamp(i64 %6, i64 0, i64 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* @set_target_ratio, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* @set_target_ratio, align 8
  %19 = call i32 (...) @start_power_clamp()
  store i32 %19, i32* %5, align 4
  br label %34

20:                                               ; preds = %13, %2
  %21 = load i64, i64* @set_target_ratio, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 (...) @end_power_clamp()
  store i64 0, i64* @set_target_ratio, align 8
  br label %32

29:                                               ; preds = %23, %20
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* @set_target_ratio, align 8
  %31 = call i32 (...) @smp_mb()
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i64 @clamp(i64, i64, i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @start_power_clamp(...) #1

declare dso_local i32 @end_power_clamp(...) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
