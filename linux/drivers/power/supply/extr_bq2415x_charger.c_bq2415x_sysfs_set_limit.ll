; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_set_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_set_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.power_supply = type { i32 }
%struct.bq2415x_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"current_limit\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"weak_battery_voltage\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"battery_regulation_voltage\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"charge_current\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"termination_current\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bq2415x_sysfs_set_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_sysfs_set_limit(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.power_supply*, align 8
  %11 = alloca %struct.bq2415x_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %14)
  store %struct.power_supply* %15, %struct.power_supply** %10, align 8
  %16 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %17 = call %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply* %16)
  store %struct.bq2415x_device* %17, %struct.bq2415x_device** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtol(i8* %18, i32 10, i64* %12)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %94

24:                                               ; preds = %4
  %25 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %26 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @bq2415x_set_current_limit(%struct.bq2415x_device* %32, i64 %33)
  store i32 %34, i32* %13, align 4
  br label %86

35:                                               ; preds = %24
  %36 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %37 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @bq2415x_set_weak_battery_voltage(%struct.bq2415x_device* %43, i64 %44)
  store i32 %45, i32* %13, align 4
  br label %85

46:                                               ; preds = %35
  %47 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %48 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strcmp(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @bq2415x_set_battery_regulation_voltage(%struct.bq2415x_device* %54, i64 %55)
  store i32 %56, i32* %13, align 4
  br label %84

57:                                               ; preds = %46
  %58 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %59 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @strcmp(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @bq2415x_set_charge_current(%struct.bq2415x_device* %65, i64 %66)
  store i32 %67, i32* %13, align 4
  br label %83

68:                                               ; preds = %57
  %69 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %70 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @strcmp(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @bq2415x_set_termination_current(%struct.bq2415x_device* %76, i64 %77)
  store i32 %78, i32* %13, align 4
  br label %82

79:                                               ; preds = %68
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %94

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83, %53
  br label %85

85:                                               ; preds = %84, %42
  br label %86

86:                                               ; preds = %85, %31
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %94

91:                                               ; preds = %86
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %89, %79, %21
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bq2415x_set_current_limit(%struct.bq2415x_device*, i64) #1

declare dso_local i32 @bq2415x_set_weak_battery_voltage(%struct.bq2415x_device*, i64) #1

declare dso_local i32 @bq2415x_set_battery_regulation_voltage(%struct.bq2415x_device*, i64) #1

declare dso_local i32 @bq2415x_set_charge_current(%struct.bq2415x_device*, i64) #1

declare dso_local i32 @bq2415x_set_termination_current(%struct.bq2415x_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
