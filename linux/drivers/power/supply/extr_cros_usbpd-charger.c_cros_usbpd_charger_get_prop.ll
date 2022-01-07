; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.port_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.charger_data* }
%struct.charger_data = type { %struct.device*, %struct.cros_ec_device* }
%struct.device = type { i32 }
%struct.cros_ec_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to get port status (err:0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@input_current_limit = common dso_local global i32 0, align 4
@EC_POWER_LIMIT_NONE = common dso_local global i32 0, align 4
@input_voltage_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @cros_usbpd_charger_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_usbpd_charger_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.port_data*, align 8
  %9 = alloca %struct.charger_data*, align 8
  %10 = alloca %struct.cros_ec_device*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %14 = call %struct.port_data* @power_supply_get_drvdata(%struct.power_supply* %13)
  store %struct.port_data* %14, %struct.port_data** %8, align 8
  %15 = load %struct.port_data*, %struct.port_data** %8, align 8
  %16 = getelementptr inbounds %struct.port_data, %struct.port_data* %15, i32 0, i32 8
  %17 = load %struct.charger_data*, %struct.charger_data** %16, align 8
  store %struct.charger_data* %17, %struct.charger_data** %9, align 8
  %18 = load %struct.charger_data*, %struct.charger_data** %9, align 8
  %19 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %18, i32 0, i32 1
  %20 = load %struct.cros_ec_device*, %struct.cros_ec_device** %19, align 8
  store %struct.cros_ec_device* %20, %struct.cros_ec_device** %10, align 8
  %21 = load %struct.charger_data*, %struct.charger_data** %9, align 8
  %22 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %11, align 8
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %49 [
    i32 132, label %25
    i32 137, label %37
    i32 129, label %37
    i32 128, label %37
  ]

25:                                               ; preds = %3
  %26 = load %struct.cros_ec_device*, %struct.cros_ec_device** %10, align 8
  %27 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.port_data*, %struct.port_data** %8, align 8
  %32 = getelementptr inbounds %struct.port_data, %struct.port_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  br label %50

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %3, %3, %3, %36
  %38 = load %struct.port_data*, %struct.port_data** %8, align 8
  %39 = call i32 @cros_usbpd_charger_get_port_status(%struct.port_data* %38, i32 1)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %133

48:                                               ; preds = %37
  br label %50

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %49, %48, %35
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %129 [
    i32 132, label %52
    i32 131, label %58
    i32 137, label %64
    i32 129, label %71
    i32 128, label %78
    i32 130, label %85
    i32 136, label %91
    i32 135, label %104
    i32 133, label %117
    i32 134, label %123
  ]

52:                                               ; preds = %50
  %53 = load %struct.port_data*, %struct.port_data** %8, align 8
  %54 = getelementptr inbounds %struct.port_data, %struct.port_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %57 = bitcast %union.power_supply_propval* %56 to i32*
  store i32 %55, i32* %57, align 4
  br label %132

58:                                               ; preds = %50
  %59 = load %struct.port_data*, %struct.port_data** %8, align 8
  %60 = getelementptr inbounds %struct.port_data, %struct.port_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %63 = bitcast %union.power_supply_propval* %62 to i32*
  store i32 %61, i32* %63, align 4
  br label %132

64:                                               ; preds = %50
  %65 = load %struct.port_data*, %struct.port_data** %8, align 8
  %66 = getelementptr inbounds %struct.port_data, %struct.port_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %67, 1000
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %70 = bitcast %union.power_supply_propval* %69 to i32*
  store i32 %68, i32* %70, align 4
  br label %132

71:                                               ; preds = %50
  %72 = load %struct.port_data*, %struct.port_data** %8, align 8
  %73 = getelementptr inbounds %struct.port_data, %struct.port_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 1000
  %76 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %77 = bitcast %union.power_supply_propval* %76 to i32*
  store i32 %75, i32* %77, align 4
  br label %132

78:                                               ; preds = %50
  %79 = load %struct.port_data*, %struct.port_data** %8, align 8
  %80 = getelementptr inbounds %struct.port_data, %struct.port_data* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, 1000
  %83 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %84 = bitcast %union.power_supply_propval* %83 to i32*
  store i32 %82, i32* %84, align 4
  br label %132

85:                                               ; preds = %50
  %86 = load %struct.port_data*, %struct.port_data** %8, align 8
  %87 = getelementptr inbounds %struct.port_data, %struct.port_data* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %90 = bitcast %union.power_supply_propval* %89 to i32*
  store i32 %88, i32* %90, align 4
  br label %132

91:                                               ; preds = %50
  %92 = load i32, i32* @input_current_limit, align 4
  %93 = load i32, i32* @EC_POWER_LIMIT_NONE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %97 = bitcast %union.power_supply_propval* %96 to i32*
  store i32 -1, i32* %97, align 4
  br label %103

98:                                               ; preds = %91
  %99 = load i32, i32* @input_current_limit, align 4
  %100 = mul nsw i32 %99, 1000
  %101 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %102 = bitcast %union.power_supply_propval* %101 to i32*
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %95
  br label %132

104:                                              ; preds = %50
  %105 = load i32, i32* @input_voltage_limit, align 4
  %106 = load i32, i32* @EC_POWER_LIMIT_NONE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %110 = bitcast %union.power_supply_propval* %109 to i32*
  store i32 -1, i32* %110, align 4
  br label %116

111:                                              ; preds = %104
  %112 = load i32, i32* @input_voltage_limit, align 4
  %113 = mul nsw i32 %112, 1000
  %114 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %115 = bitcast %union.power_supply_propval* %114 to i32*
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %108
  br label %132

117:                                              ; preds = %50
  %118 = load %struct.port_data*, %struct.port_data** %8, align 8
  %119 = getelementptr inbounds %struct.port_data, %struct.port_data* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %122 = bitcast %union.power_supply_propval* %121 to i32*
  store i32 %120, i32* %122, align 4
  br label %132

123:                                              ; preds = %50
  %124 = load %struct.port_data*, %struct.port_data** %8, align 8
  %125 = getelementptr inbounds %struct.port_data, %struct.port_data* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %128 = bitcast %union.power_supply_propval* %127 to i32*
  store i32 %126, i32* %128, align 4
  br label %132

129:                                              ; preds = %50
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %133

132:                                              ; preds = %123, %117, %116, %103, %85, %78, %71, %64, %58, %52
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %129, %42
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.port_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @cros_usbpd_charger_get_port_status(%struct.port_data*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
