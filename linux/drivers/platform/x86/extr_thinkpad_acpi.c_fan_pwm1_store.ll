; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_pwm1_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_fan_pwm1_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hwmon pwm1\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"set fan speed to %lu\0A\00", align 1
@fan_mutex = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TP_EC_FAN_AUTO = common dso_local global i32 0, align 4
@TP_EC_FAN_FULLSPEED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_pwm1_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_pwm1_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @parse_strtoul(i8* %14, i32 255, i64* %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %74

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @tpacpi_disclose_usertask(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %10, align 8
  %24 = lshr i64 %23, 5
  %25 = and i64 %24, 7
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = call i64 @mutex_lock_killable(i32* @fan_mutex)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %74

32:                                               ; preds = %20
  %33 = call i32 @fan_get_status(i32* %12)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @TP_EC_FAN_AUTO, align 4
  %39 = load i32, i32* @TP_EC_FAN_FULLSPEED, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @fan_set_level(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %61

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @fan_update_desired_level(i32 %57)
  %59 = call i32 (...) @fan_watchdog_reset()
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %36, %32
  %63 = call i32 @mutex_unlock(i32* @fan_mutex)
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  br label %71

69:                                               ; preds = %62
  %70 = load i64, i64* %9, align 8
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i64 [ %68, %66 ], [ %70, %69 ]
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %29, %17
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @parse_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @tpacpi_disclose_usertask(i8*, i8*, i64) #1

declare dso_local i64 @mutex_lock_killable(i32*) #1

declare dso_local i32 @fan_get_status(i32*) #1

declare dso_local i32 @fan_set_level(i32) #1

declare dso_local i32 @fan_update_desired_level(i32) #1

declare dso_local i32 @fan_watchdog_reset(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
