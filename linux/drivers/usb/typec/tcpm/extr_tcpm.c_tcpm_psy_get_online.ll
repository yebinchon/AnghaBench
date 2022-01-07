; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_psy_get_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_psy_get_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%union.power_supply_propval = type { i32 }

@TCPM_PSY_PROG_ONLINE = common dso_local global i32 0, align 4
@TCPM_PSY_FIXED_ONLINE = common dso_local global i32 0, align 4
@TCPM_PSY_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, %union.power_supply_propval*)* @tcpm_psy_get_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_psy_get_online(%struct.tcpm_port* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca %union.power_supply_propval*, align 8
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %4, align 8
  %5 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %6 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %11 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @TCPM_PSY_PROG_ONLINE, align 4
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %18 = bitcast %union.power_supply_propval* %17 to i32*
  store i32 %16, i32* %18, align 4
  br label %23

19:                                               ; preds = %9
  %20 = load i32, i32* @TCPM_PSY_FIXED_ONLINE, align 4
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %15
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @TCPM_PSY_OFFLINE, align 4
  %26 = load %union.power_supply_propval*, %union.power_supply_propval** %4, align 8
  %27 = bitcast %union.power_supply_propval* %26 to i32*
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %23
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
