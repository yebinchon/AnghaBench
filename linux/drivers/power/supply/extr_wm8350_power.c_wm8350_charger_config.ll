; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_charger_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_charger_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }
%struct.wm8350_charger_policy = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"No charger policy, charger not configured.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"USB fast charge > 500mA\0A\00", align 1
@WM8350_BATTERY_CHARGER_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_CHG_ENA_R168 = common dso_local global i32 0, align 4
@WM8350_CHG_TRICKLE_TEMP_CHOKE = common dso_local global i32 0, align 4
@WM8350_CHG_TRICKLE_USB_CHOKE = common dso_local global i32 0, align 4
@WM8350_CHG_FAST_USB_THROTTLE = common dso_local global i32 0, align 4
@WM8350_USB_SUPPLY = common dso_local global i32 0, align 4
@WM8350_BATTERY_CHARGER_CONTROL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*, %struct.wm8350_charger_policy*)* @wm8350_charger_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_charger_config(%struct.wm8350* %0, %struct.wm8350_charger_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca %struct.wm8350_charger_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %4, align 8
  store %struct.wm8350_charger_policy* %1, %struct.wm8350_charger_policy** %5, align 8
  %9 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %10 = icmp ne %struct.wm8350_charger_policy* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %13 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_warn(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %112

18:                                               ; preds = %2
  %19 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %20 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 500
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %25 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %112

30:                                               ; preds = %18
  %31 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %32 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WM8350_CHG_EOC_mA(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %36 = call i32 @wm8350_reg_unlock(%struct.wm8350* %35)
  %37 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %38 = load i32, i32* @WM8350_BATTERY_CHARGER_CONTROL_1, align 4
  %39 = call i32 @wm8350_reg_read(%struct.wm8350* %37, i32 %38)
  %40 = load i32, i32* @WM8350_CHG_ENA_R168, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %43 = load i32, i32* @WM8350_BATTERY_CHARGER_CONTROL_1, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %48 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  %51 = load i32, i32* @WM8350_CHG_TRICKLE_TEMP_CHOKE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @WM8350_CHG_TRICKLE_USB_CHOKE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @WM8350_CHG_FAST_USB_THROTTLE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @wm8350_reg_write(%struct.wm8350* %42, i32 %43, i32 %56)
  %58 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %59 = call i32 @wm8350_get_supplies(%struct.wm8350* %58)
  %60 = load i32, i32* @WM8350_USB_SUPPLY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %30
  %64 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %65 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @WM8350_CHG_FAST_LIMIT_mA(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %69 = load i32, i32* @WM8350_BATTERY_CHARGER_CONTROL_2, align 4
  %70 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %71 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %74 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %72, %75
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %80 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %81 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @wm8350_charge_time_min(%struct.wm8350* %79, i32 %82)
  %84 = or i32 %78, %83
  %85 = call i32 @wm8350_reg_write(%struct.wm8350* %68, i32 %69, i32 %84)
  br label %109

86:                                               ; preds = %30
  %87 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %88 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @WM8350_CHG_FAST_LIMIT_mA(i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %92 = load i32, i32* @WM8350_BATTERY_CHARGER_CONTROL_2, align 4
  %93 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %94 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %97 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %95, %98
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %103 = load %struct.wm8350_charger_policy*, %struct.wm8350_charger_policy** %5, align 8
  %104 = getelementptr inbounds %struct.wm8350_charger_policy, %struct.wm8350_charger_policy* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @wm8350_charge_time_min(%struct.wm8350* %102, i32 %105)
  %107 = or i32 %101, %106
  %108 = call i32 @wm8350_reg_write(%struct.wm8350* %91, i32 %92, i32 %107)
  br label %109

109:                                              ; preds = %86, %63
  %110 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %111 = call i32 @wm8350_reg_lock(%struct.wm8350* %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %23, %11
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @WM8350_CHG_EOC_mA(i32) #1

declare dso_local i32 @wm8350_reg_unlock(%struct.wm8350*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_get_supplies(%struct.wm8350*) #1

declare dso_local i32 @WM8350_CHG_FAST_LIMIT_mA(i32) #1

declare dso_local i32 @wm8350_charge_time_min(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_lock(%struct.wm8350*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
