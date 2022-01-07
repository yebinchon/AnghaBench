; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_psy_get_voltage_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_psy_get_voltage_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%union.power_supply_propval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, %union.power_supply_propval*)* @tcpm_psy_get_voltage_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_psy_get_voltage_max(%struct.tcpm_port* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %5 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %6 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %12 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 1000
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i32*
  store i32 %15, i32* %17, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %20 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 1000
  %23 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %24 = bitcast %union.power_supply_propval* %23 to i32*
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %10
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
