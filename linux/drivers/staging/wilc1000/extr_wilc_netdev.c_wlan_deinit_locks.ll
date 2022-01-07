; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wlan_deinit_locks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wlan_deinit_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @wlan_deinit_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_deinit_locks(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.wilc_vif*, align 8
  %4 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %5)
  store %struct.wilc_vif* %6, %struct.wilc_vif** %3, align 8
  %7 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %8 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %7, i32 0, i32 0
  %9 = load %struct.wilc*, %struct.wilc** %8, align 8
  store %struct.wilc* %9, %struct.wilc** %4, align 8
  %10 = load %struct.wilc*, %struct.wilc** %4, align 8
  %11 = getelementptr inbounds %struct.wilc, %struct.wilc* %10, i32 0, i32 4
  %12 = call i32 @mutex_destroy(i32* %11)
  %13 = load %struct.wilc*, %struct.wilc** %4, align 8
  %14 = getelementptr inbounds %struct.wilc, %struct.wilc* %13, i32 0, i32 3
  %15 = call i32 @mutex_destroy(i32* %14)
  %16 = load %struct.wilc*, %struct.wilc** %4, align 8
  %17 = getelementptr inbounds %struct.wilc, %struct.wilc* %16, i32 0, i32 2
  %18 = call i32 @mutex_destroy(i32* %17)
  %19 = load %struct.wilc*, %struct.wilc** %4, align 8
  %20 = getelementptr inbounds %struct.wilc, %struct.wilc* %19, i32 0, i32 1
  %21 = call i32 @mutex_destroy(i32* %20)
  %22 = load %struct.wilc*, %struct.wilc** %4, align 8
  %23 = getelementptr inbounds %struct.wilc, %struct.wilc* %22, i32 0, i32 0
  %24 = call i32 @mutex_destroy(i32* %23)
  ret void
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
