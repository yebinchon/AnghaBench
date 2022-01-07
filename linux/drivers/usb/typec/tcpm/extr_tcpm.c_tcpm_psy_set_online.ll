; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_psy_set_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_psy_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32 }
%union.power_supply_propval = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, %union.power_supply_propval*)* @tcpm_psy_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_psy_set_online(%struct.tcpm_port* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  %5 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %6 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %7 = bitcast %union.power_supply_propval* %6 to i32*
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 129, label %9
    i32 128, label %12
  ]

9:                                                ; preds = %2
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %11 = call i32 @tcpm_pps_activate(%struct.tcpm_port* %10, i32 0)
  store i32 %11, i32* %5, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %14 = call i32 @tcpm_pps_activate(%struct.tcpm_port* %13, i32 1)
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %12, %9
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @tcpm_pps_activate(%struct.tcpm_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
