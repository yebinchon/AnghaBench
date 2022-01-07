; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_set_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.power_supply = type { i32 }
%struct.bq2415x_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"charge_termination_enable\00", align 1
@BQ2415X_CHARGE_TERMINATION_ENABLE = common dso_local global i32 0, align 4
@BQ2415X_CHARGE_TERMINATION_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"high_impedance_enable\00", align 1
@BQ2415X_HIGH_IMPEDANCE_ENABLE = common dso_local global i32 0, align 4
@BQ2415X_HIGH_IMPEDANCE_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"otg_pin_enable\00", align 1
@BQ2415X_OTG_PIN_ENABLE = common dso_local global i32 0, align 4
@BQ2415X_OTG_PIN_DISABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"stat_pin_enable\00", align 1
@BQ2415X_STAT_PIN_ENABLE = common dso_local global i32 0, align 4
@BQ2415X_STAT_PIN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bq2415x_sysfs_set_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_sysfs_set_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.power_supply*, align 8
  %11 = alloca %struct.bq2415x_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %15)
  store %struct.power_supply* %16, %struct.power_supply** %10, align 8
  %17 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %18 = call %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply* %17)
  store %struct.bq2415x_device* %18, %struct.bq2415x_device** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtol(i8* %19, i32 10, i64* %13)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %106

25:                                               ; preds = %4
  %26 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %27 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strcmp(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i64, i64* %13, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @BQ2415X_CHARGE_TERMINATION_ENABLE, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @BQ2415X_CHARGE_TERMINATION_DISABLE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %12, align 4
  br label %95

41:                                               ; preds = %25
  %42 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %43 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @strcmp(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @BQ2415X_HIGH_IMPEDANCE_ENABLE, align 4
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @BQ2415X_HIGH_IMPEDANCE_DISABLE, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %12, align 4
  br label %94

57:                                               ; preds = %41
  %58 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %59 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @strcmp(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @BQ2415X_OTG_PIN_ENABLE, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @BQ2415X_OTG_PIN_DISABLE, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %12, align 4
  br label %93

73:                                               ; preds = %57
  %74 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %75 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @strcmp(i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load i64, i64* %13, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @BQ2415X_STAT_PIN_ENABLE, align 4
  br label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @BQ2415X_STAT_PIN_DISABLE, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %12, align 4
  br label %92

89:                                               ; preds = %73
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %106

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %55
  br label %95

95:                                               ; preds = %94, %39
  %96 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %96, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %5, align 4
  br label %106

103:                                              ; preds = %95
  %104 = load i64, i64* %9, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %101, %89, %22
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bq2415x_exec_command(%struct.bq2415x_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
