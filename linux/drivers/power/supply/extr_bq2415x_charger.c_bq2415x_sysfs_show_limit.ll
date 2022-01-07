; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_show_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_show_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.power_supply = type { i32 }
%struct.bq2415x_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"current_limit\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"weak_battery_voltage\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"battery_regulation_voltage\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"charge_current\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"termination_current\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bq2415x_sysfs_show_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_sysfs_show_limit(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.power_supply*, align 8
  %9 = alloca %struct.bq2415x_device*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %11)
  store %struct.power_supply* %12, %struct.power_supply** %8, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %8, align 8
  %14 = call %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply* %13)
  store %struct.bq2415x_device* %14, %struct.bq2415x_device** %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcmp(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %23 = call i32 @bq2415x_get_current_limit(%struct.bq2415x_device* %22)
  store i32 %23, i32* %10, align 4
  br label %71

24:                                               ; preds = %3
  %25 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %26 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %33 = call i32 @bq2415x_get_weak_battery_voltage(%struct.bq2415x_device* %32)
  store i32 %33, i32* %10, align 4
  br label %70

34:                                               ; preds = %24
  %35 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %36 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcmp(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %43 = call i32 @bq2415x_get_battery_regulation_voltage(%struct.bq2415x_device* %42)
  store i32 %43, i32* %10, align 4
  br label %69

44:                                               ; preds = %34
  %45 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %46 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @strcmp(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %53 = call i32 @bq2415x_get_charge_current(%struct.bq2415x_device* %52)
  store i32 %53, i32* %10, align 4
  br label %68

54:                                               ; preds = %44
  %55 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %56 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @strcmp(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %63 = call i32 @bq2415x_get_termination_current(%struct.bq2415x_device* %62)
  store i32 %63, i32* %10, align 4
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %80

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %51
  br label %69

69:                                               ; preds = %68, %41
  br label %70

70:                                               ; preds = %69, %31
  br label %71

71:                                               ; preds = %70, %21
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %80

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @sprintf(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %74, %64
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bq2415x_get_current_limit(%struct.bq2415x_device*) #1

declare dso_local i32 @bq2415x_get_weak_battery_voltage(%struct.bq2415x_device*) #1

declare dso_local i32 @bq2415x_get_battery_regulation_voltage(%struct.bq2415x_device*) #1

declare dso_local i32 @bq2415x_get_charge_current(%struct.bq2415x_device*) #1

declare dso_local i32 @bq2415x_get_termination_current(%struct.bq2415x_device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
