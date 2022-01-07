; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_dm.c_rtw_hal_antdiv_rssi_compared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_dm.c_rtw_hal_antdiv_rssi_compared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.wlan_bssid_ex = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_antdiv_rssi_compared(%struct.adapter* %0, %struct.wlan_bssid_ex* %1, %struct.wlan_bssid_ex* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.wlan_bssid_ex*, align 8
  %6 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.wlan_bssid_ex* %1, %struct.wlan_bssid_ex** %5, align 8
  store %struct.wlan_bssid_ex* %2, %struct.wlan_bssid_ex** %6, align 8
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %15 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %18 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %23 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %26 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %28 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %32 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  br label %34

34:                                               ; preds = %21, %13
  br label %35

35:                                               ; preds = %34, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
