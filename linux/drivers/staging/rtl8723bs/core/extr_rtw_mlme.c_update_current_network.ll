; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_update_current_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_update_current_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.wlan_bssid_ex = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.wlan_bssid_ex*)* @update_current_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_current_network(%struct.adapter* %0, %struct.wlan_bssid_ex* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.wlan_bssid_ex*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.wlan_bssid_ex* %1, %struct.wlan_bssid_ex** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.mlme_priv* %7, %struct.mlme_priv** %5, align 8
  %8 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %9 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32 @rtw_bug_check(%struct.TYPE_9__* %10, %struct.TYPE_9__* %13, %struct.TYPE_9__* %16, %struct.TYPE_9__* %19)
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %22 = load i32, i32* @_FW_LINKED, align 4
  %23 = call i32 @check_fwstate(%struct.mlme_priv* %21, i32 %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %52

25:                                               ; preds = %2
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %30 = call i64 @is_same_network(%struct.TYPE_9__* %28, %struct.wlan_bssid_ex* %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %34 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = call i32 @update_network(%struct.TYPE_9__* %35, %struct.wlan_bssid_ex* %36, %struct.adapter* %37, i32 1)
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %41 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 4
  %46 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %47 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @rtw_update_protection(%struct.adapter* %39, i64 %45, i32 %50)
  br label %52

52:                                               ; preds = %32, %25, %2
  ret void
}

declare dso_local i32 @rtw_bug_check(%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @is_same_network(%struct.TYPE_9__*, %struct.wlan_bssid_ex*, i32) #1

declare dso_local i32 @update_network(%struct.TYPE_9__*, %struct.wlan_bssid_ex*, %struct.adapter*, i32) #1

declare dso_local i32 @rtw_update_protection(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
