; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_fan_boost_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_fan_boost_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.asus_wmi = type { i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Trying to store invalid value\0A\00", align 1
@ASUS_FAN_BOOST_MODE_OVERBOOST = common dso_local global i64 0, align 8
@ASUS_FAN_BOOST_MODE_OVERBOOST_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ASUS_FAN_BOOST_MODE_SILENT = common dso_local global i64 0, align 8
@ASUS_FAN_BOOST_MODE_SILENT_MASK = common dso_local global i64 0, align 8
@ASUS_FAN_BOOST_MODE_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_boost_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_boost_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.asus_wmi*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.asus_wmi* @dev_get_drvdata(%struct.device* %14)
  store %struct.asus_wmi* %15, %struct.asus_wmi** %12, align 8
  %16 = load %struct.asus_wmi*, %struct.asus_wmi** %12, align 8
  %17 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtou8(i8* %19, i32 10, i64* %11)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %68

26:                                               ; preds = %4
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @ASUS_FAN_BOOST_MODE_OVERBOOST, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @ASUS_FAN_BOOST_MODE_OVERBOOST_MASK, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %68

38:                                               ; preds = %30
  br label %61

39:                                               ; preds = %26
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @ASUS_FAN_BOOST_MODE_SILENT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @ASUS_FAN_BOOST_MODE_SILENT_MASK, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %68

51:                                               ; preds = %43
  br label %60

52:                                               ; preds = %39
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @ASUS_FAN_BOOST_MODE_NORMAL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %68

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %51
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.asus_wmi*, %struct.asus_wmi** %12, align 8
  %64 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.asus_wmi*, %struct.asus_wmi** %12, align 8
  %66 = call i32 @fan_boost_mode_write(%struct.asus_wmi* %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %56, %48, %35, %23
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.asus_wmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i64*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @fan_boost_mode_write(%struct.asus_wmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
