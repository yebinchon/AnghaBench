; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_set_ext_power_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_set_ext_power_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_data = type { i32 }
%struct.ec_params_external_power_limit_v1 = type { i8*, i8* }

@EC_CMD_EXTERNAL_POWER_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unable to set the 'External Power Limit': %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_data*, i8*, i8*)* @cros_usbpd_charger_set_ext_power_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_usbpd_charger_set_ext_power_limit(%struct.charger_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.charger_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ec_params_external_power_limit_v1, align 8
  %8 = alloca i32, align 4
  store %struct.charger_data* %0, %struct.charger_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds %struct.ec_params_external_power_limit_v1, %struct.ec_params_external_power_limit_v1* %7, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.ec_params_external_power_limit_v1, %struct.ec_params_external_power_limit_v1* %7, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load %struct.charger_data*, %struct.charger_data** %4, align 8
  %14 = load i32, i32* @EC_CMD_EXTERNAL_POWER_LIMIT, align 4
  %15 = call i32 @cros_usbpd_charger_ec_command(%struct.charger_data* %13, i32 0, i32 %14, %struct.ec_params_external_power_limit_v1* %7, i32 16, i32* null, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.charger_data*, %struct.charger_data** %4, align 8
  %20 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local i32 @cros_usbpd_charger_ec_command(%struct.charger_data*, i32, i32, %struct.ec_params_external_power_limit_v1*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
