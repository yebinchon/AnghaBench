; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_power_mgmt_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_power_mgmt_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@POWER_MGMT_ACTIVE = common dso_local global i64 0, align 8
@MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@DEVICE_STATE_SLEEP = common dso_local global i32 0, align 4
@DEVICE_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_power_mgmt_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_power_mgmt_confirm(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %3 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %4 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @POWER_MGMT_ACTIVE, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %11 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MODE_INFRASTRUCTURE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %18 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load i32, i32* @DEVICE_STATE_SLEEP, align 4
  %22 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %23 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %25 = call i32 @ks_wlan_hw_power_save(%struct.ks_wlan_private* %24)
  br label %30

26:                                               ; preds = %9, %1
  %27 = load i32, i32* @DEVICE_STATE_READY, align 4
  %28 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %29 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %16
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ks_wlan_hw_power_save(%struct.ks_wlan_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
