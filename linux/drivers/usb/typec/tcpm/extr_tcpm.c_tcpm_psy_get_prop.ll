; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_psy_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_psy_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.tcpm_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @tcpm_psy_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_psy_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.tcpm_port*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.tcpm_port* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.tcpm_port* %10, %struct.tcpm_port** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %42 [
    i32 131, label %12
    i32 132, label %18
    i32 129, label %22
    i32 130, label %26
    i32 128, label %30
    i32 134, label %34
    i32 133, label %38
  ]

12:                                               ; preds = %3
  %13 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %14 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i32*
  store i32 %15, i32* %17, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %21 = call i32 @tcpm_psy_get_online(%struct.tcpm_port* %19, %union.power_supply_propval* %20)
  store i32 %21, i32* %8, align 4
  br label %45

22:                                               ; preds = %3
  %23 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %25 = call i32 @tcpm_psy_get_voltage_min(%struct.tcpm_port* %23, %union.power_supply_propval* %24)
  store i32 %25, i32* %8, align 4
  br label %45

26:                                               ; preds = %3
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %29 = call i32 @tcpm_psy_get_voltage_max(%struct.tcpm_port* %27, %union.power_supply_propval* %28)
  store i32 %29, i32* %8, align 4
  br label %45

30:                                               ; preds = %3
  %31 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %33 = call i32 @tcpm_psy_get_voltage_now(%struct.tcpm_port* %31, %union.power_supply_propval* %32)
  store i32 %33, i32* %8, align 4
  br label %45

34:                                               ; preds = %3
  %35 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %37 = call i32 @tcpm_psy_get_current_max(%struct.tcpm_port* %35, %union.power_supply_propval* %36)
  store i32 %37, i32* %8, align 4
  br label %45

38:                                               ; preds = %3
  %39 = load %struct.tcpm_port*, %struct.tcpm_port** %7, align 8
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %41 = call i32 @tcpm_psy_get_current_now(%struct.tcpm_port* %39, %union.power_supply_propval* %40)
  store i32 %41, i32* %8, align 4
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %38, %34, %30, %26, %22, %18, %12
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.tcpm_port* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @tcpm_psy_get_online(%struct.tcpm_port*, %union.power_supply_propval*) #1

declare dso_local i32 @tcpm_psy_get_voltage_min(%struct.tcpm_port*, %union.power_supply_propval*) #1

declare dso_local i32 @tcpm_psy_get_voltage_max(%struct.tcpm_port*, %union.power_supply_propval*) #1

declare dso_local i32 @tcpm_psy_get_voltage_now(%struct.tcpm_port*, %union.power_supply_propval*) #1

declare dso_local i32 @tcpm_psy_get_current_max(%struct.tcpm_port*, %union.power_supply_propval*) #1

declare dso_local i32 @tcpm_psy_get_current_now(%struct.tcpm_port*, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
