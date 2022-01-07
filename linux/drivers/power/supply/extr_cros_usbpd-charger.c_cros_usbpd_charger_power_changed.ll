; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_power_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cros_usbpd-charger.c_cros_usbpd_charger_power_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%struct.port_data = type { %struct.charger_data* }
%struct.charger_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.power_supply*)* @cros_usbpd_charger_power_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cros_usbpd_charger_power_changed(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca %struct.port_data*, align 8
  %4 = alloca %struct.charger_data*, align 8
  %5 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %6 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %7 = call %struct.port_data* @power_supply_get_drvdata(%struct.power_supply* %6)
  store %struct.port_data* %7, %struct.port_data** %3, align 8
  %8 = load %struct.port_data*, %struct.port_data** %3, align 8
  %9 = getelementptr inbounds %struct.port_data, %struct.port_data* %8, i32 0, i32 0
  %10 = load %struct.charger_data*, %struct.charger_data** %9, align 8
  store %struct.charger_data* %10, %struct.charger_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.charger_data*, %struct.charger_data** %4, align 8
  %14 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.charger_data*, %struct.charger_data** %4, align 8
  %19 = getelementptr inbounds %struct.charger_data, %struct.charger_data* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cros_usbpd_charger_get_port_status(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %11

29:                                               ; preds = %11
  ret void
}

declare dso_local %struct.port_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @cros_usbpd_charger_get_port_status(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
