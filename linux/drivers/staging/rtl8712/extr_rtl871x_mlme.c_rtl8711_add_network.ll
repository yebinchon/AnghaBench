; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_rtl8711_add_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_rtl8711_add_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.__queue }
%struct.__queue = type { i32 }
%struct.wlan_bssid_ex = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %struct.wlan_bssid_ex*)* @rtl8711_add_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8711_add_network(%struct._adapter* %0, %struct.wlan_bssid_ex* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.wlan_bssid_ex*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.__queue*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.wlan_bssid_ex* %1, %struct.wlan_bssid_ex** %4, align 8
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 0
  store %struct.mlme_priv* %9, %struct.mlme_priv** %6, align 8
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %10, i32 0, i32 0
  store %struct.__queue* %11, %struct.__queue** %7, align 8
  %12 = load %struct.__queue*, %struct.__queue** %7, align 8
  %13 = getelementptr inbounds %struct.__queue, %struct.__queue* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct._adapter*, %struct._adapter** %3, align 8
  %17 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %18 = call i32 @update_current_network(%struct._adapter* %16, %struct.wlan_bssid_ex* %17)
  %19 = load %struct._adapter*, %struct._adapter** %3, align 8
  %20 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %21 = call i32 @update_scanned_network(%struct._adapter* %19, %struct.wlan_bssid_ex* %20)
  %22 = load %struct.__queue*, %struct.__queue** %7, align 8
  %23 = getelementptr inbounds %struct.__queue, %struct.__queue* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_current_network(%struct._adapter*, %struct.wlan_bssid_ex*) #1

declare dso_local i32 @update_scanned_network(%struct._adapter*, %struct.wlan_bssid_ex*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
