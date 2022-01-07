; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_ERP_IE_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_ERP_IE_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.ndis_802_11_var_ie = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ERP_IE_handler(%struct.adapter* %0, %struct.ndis_802_11_var_ie* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ndis_802_11_var_ie*, align 8
  %5 = alloca %struct.mlme_ext_priv*, align 8
  %6 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.ndis_802_11_var_ie* %1, %struct.ndis_802_11_var_ie** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.mlme_ext_priv* %8, %struct.mlme_ext_priv** %5, align 8
  %9 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %9, i32 0, i32 0
  store %struct.mlme_ext_info* %10, %struct.mlme_ext_info** %6, align 8
  %11 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %12 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %18 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %20 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %19, i32 0, i32 1
  %21 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %22 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %25 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32* %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
