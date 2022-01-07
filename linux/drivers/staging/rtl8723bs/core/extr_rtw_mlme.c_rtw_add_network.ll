; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_add_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_add_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.wlan_bssid_ex = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_add_network(%struct.adapter* %0, %struct.wlan_bssid_ex* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.wlan_bssid_ex* %1, %struct.wlan_bssid_ex** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %7 = call i32 @update_current_network(%struct.adapter* %5, %struct.wlan_bssid_ex* %6)
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %4, align 8
  %10 = call i32 @rtw_update_scanned_network(%struct.adapter* %8, %struct.wlan_bssid_ex* %9)
  ret void
}

declare dso_local i32 @update_current_network(%struct.adapter*, %struct.wlan_bssid_ex*) #1

declare dso_local i32 @rtw_update_scanned_network(%struct.adapter*, %struct.wlan_bssid_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
