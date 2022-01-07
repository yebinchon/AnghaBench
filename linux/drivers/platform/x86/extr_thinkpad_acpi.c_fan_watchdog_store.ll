; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_watchdog_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_watchdog_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@fan_control_allowed = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@fan_watchdog_maxinterval = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"fan_watchdog\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"set to %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @fan_watchdog_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fan_watchdog_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @parse_strtoul(i8* %9, i32 120, i64* %8)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* @EINVAL, align 8
  %14 = sub i64 0, %13
  store i64 %14, i64* %4, align 8
  br label %27

15:                                               ; preds = %3
  %16 = load i32, i32* @fan_control_allowed, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @EPERM, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %27

21:                                               ; preds = %15
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* @fan_watchdog_maxinterval, align 8
  %23 = call i32 (...) @fan_watchdog_reset()
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @tpacpi_disclose_usertask(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %21, %18, %12
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

declare dso_local i64 @parse_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @fan_watchdog_reset(...) #1

declare dso_local i32 @tpacpi_disclose_usertask(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
