; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_txq_add_to_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_txq_add_to_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.txq_entry_t = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.txq_entry_t*)* @wilc_wlan_txq_add_to_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilc_wlan_txq_add_to_tail(%struct.net_device* %0, %struct.txq_entry_t* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.txq_entry_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wilc_vif*, align 8
  %7 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.txq_entry_t* %1, %struct.txq_entry_t** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %8)
  store %struct.wilc_vif* %9, %struct.wilc_vif** %6, align 8
  %10 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %11 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %10, i32 0, i32 0
  %12 = load %struct.wilc*, %struct.wilc** %11, align 8
  store %struct.wilc* %12, %struct.wilc** %7, align 8
  %13 = load %struct.wilc*, %struct.wilc** %7, align 8
  %14 = getelementptr inbounds %struct.wilc, %struct.wilc* %13, i32 0, i32 2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.txq_entry_t*, %struct.txq_entry_t** %4, align 8
  %18 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %17, i32 0, i32 0
  %19 = load %struct.wilc*, %struct.wilc** %7, align 8
  %20 = getelementptr inbounds %struct.wilc, %struct.wilc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @list_add_tail(i32* %18, i32* %21)
  %23 = load %struct.wilc*, %struct.wilc** %7, align 8
  %24 = getelementptr inbounds %struct.wilc, %struct.wilc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.wilc*, %struct.wilc** %7, align 8
  %28 = getelementptr inbounds %struct.wilc, %struct.wilc* %27, i32 0, i32 2
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.wilc*, %struct.wilc** %7, align 8
  %32 = getelementptr inbounds %struct.wilc, %struct.wilc* %31, i32 0, i32 1
  %33 = call i32 @complete(i32* %32)
  ret void
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
