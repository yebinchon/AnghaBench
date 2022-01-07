; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_show_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_show_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.power_supply = type { i32 }
%struct.bq2415x_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"charge_termination_enable\00", align 1
@BQ2415X_CHARGE_TERMINATION_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"high_impedance_enable\00", align 1
@BQ2415X_HIGH_IMPEDANCE_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"otg_pin_enable\00", align 1
@BQ2415X_OTG_PIN_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"stat_pin_enable\00", align 1
@BQ2415X_STAT_PIN_STATUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @bq2415x_sysfs_show_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_sysfs_show_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.power_supply*, align 8
  %9 = alloca %struct.bq2415x_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %12)
  store %struct.power_supply* %13, %struct.power_supply** %8, align 8
  %14 = load %struct.power_supply*, %struct.power_supply** %8, align 8
  %15 = call %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply* %14)
  store %struct.bq2415x_device* %15, %struct.bq2415x_device** %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strcmp(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @BQ2415X_CHARGE_TERMINATION_STATUS, align 4
  store i32 %23, i32* %10, align 4
  br label %57

24:                                               ; preds = %3
  %25 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %26 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @BQ2415X_HIGH_IMPEDANCE_STATUS, align 4
  store i32 %32, i32* %10, align 4
  br label %56

33:                                               ; preds = %24
  %34 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %35 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcmp(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @BQ2415X_OTG_PIN_STATUS, align 4
  store i32 %41, i32* %10, align 4
  br label %55

42:                                               ; preds = %33
  %43 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %44 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strcmp(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @BQ2415X_STAT_PIN_STATUS, align 4
  store i32 %50, i32* %10, align 4
  br label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %69

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %31
  br label %57

57:                                               ; preds = %56, %22
  %58 = load %struct.bq2415x_device*, %struct.bq2415x_device** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %63, %51
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bq2415x_exec_command(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
