; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acerhdf.c_acerhdf_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acerhdf.c_acerhdf_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { i32 }

@kernelmode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"error reading temperature, hand off control to BIOS\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"error reading fan state, hand off control to BIOS\0A\00", align 1
@ACERHDF_FAN_AUTO = common dso_local global i32 0, align 4
@ACERHDF_FAN_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @acerhdf_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acerhdf_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @kernelmode, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

12:                                               ; preds = %2
  %13 = call i32 @acerhdf_get_temp(i32* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %44

18:                                               ; preds = %12
  %19 = call i32 @acerhdf_get_fanstate(i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %44

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ACERHDF_FAN_AUTO, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @ACERHDF_FAN_OFF, align 4
  %33 = call i32 @acerhdf_change_fanstate(i32 %32)
  br label %34

34:                                               ; preds = %31, %27
  br label %43

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ACERHDF_FAN_OFF, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ACERHDF_FAN_AUTO, align 4
  %41 = call i32 @acerhdf_change_fanstate(i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %34
  store i32 0, i32* %3, align 4
  br label %48

44:                                               ; preds = %22, %16
  %45 = call i32 (...) @acerhdf_revert_to_bios_mode()
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %43, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @acerhdf_get_temp(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @acerhdf_get_fanstate(i32*) #1

declare dso_local i32 @acerhdf_change_fanstate(i32) #1

declare dso_local i32 @acerhdf_revert_to_bios_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
