; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_set_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_set_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.port_data = type { %struct.charger_data* }
%struct.charger_data = type { %struct.device* }
%struct.device = type { i32 }

@U16_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EC_POWER_LIMIT_NONE = common dso_local global i32 0, align 4
@input_voltage_limit = common dso_local global i32 0, align 4
@input_current_limit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"External Current Limit cleared for all ports\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"External Current Limit set to %dmA for all ports\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"External Voltage Limit cleared for all ports\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"External Voltage Limit set to %dmV for all ports\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @cros_usbpd_charger_set_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_usbpd_charger_set_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.port_data*, align 8
  %9 = alloca %struct.charger_data*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %14 = call %struct.port_data* @power_supply_get_drvdata(%struct.power_supply* %13)
  store %struct.port_data* %14, %struct.port_data** %8, align 8
  %15 = load %struct.port_data*, %struct.port_data** %8, align 8
  %16 = getelementptr inbounds %struct.port_data, %struct.port_data* %15, i32 0, i32 0
  %17 = load %struct.charger_data*, %struct.charger_data** %16, align 8
  store %struct.charger_data* %17, %struct.charger_data** %9, align 8
  %18 = load %struct.charger_data*, %struct.charger_data** %9, align 8
  %19 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @U16_MAX, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = icmp sge i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %91

30:                                               ; preds = %3
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @EC_POWER_LIMIT_NONE, align 4
  store i32 %36, i32* %11, align 4
  br label %42

37:                                               ; preds = %30
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 1000
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %37, %35
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %86 [
    i32 129, label %44
    i32 128, label %65
  ]

44:                                               ; preds = %42
  %45 = load %struct.charger_data*, %struct.charger_data** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @input_voltage_limit, align 4
  %48 = call i32 @cros_usbpd_charger_set_ext_power_limit(%struct.charger_data* %45, i32 %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %89

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* @input_current_limit, align 4
  %54 = load i32, i32* @input_current_limit, align 4
  %55 = load i32, i32* @EC_POWER_LIMIT_NONE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %10, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %64

60:                                               ; preds = %52
  %61 = load %struct.device*, %struct.device** %10, align 8
  %62 = load i32, i32* @input_current_limit, align 4
  %63 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %57
  br label %89

65:                                               ; preds = %42
  %66 = load %struct.charger_data*, %struct.charger_data** %9, align 8
  %67 = load i32, i32* @input_current_limit, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @cros_usbpd_charger_set_ext_power_limit(%struct.charger_data* %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %89

73:                                               ; preds = %65
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* @input_voltage_limit, align 4
  %75 = load i32, i32* @input_voltage_limit, align 4
  %76 = load i32, i32* @EC_POWER_LIMIT_NONE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.device*, %struct.device** %10, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %79, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %85

81:                                               ; preds = %73
  %82 = load %struct.device*, %struct.device** %10, align 8
  %83 = load i32, i32* @input_voltage_limit, align 4
  %84 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %78
  br label %89

86:                                               ; preds = %42
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %86, %85, %72, %64, %51
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %27
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.port_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @cros_usbpd_charger_set_ext_power_limit(%struct.charger_data*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
