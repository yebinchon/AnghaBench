; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_WMM_param_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_WMM_param_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.mlme_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ndis_802_11_var_ie = type { i64 }

@_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WMM_param_handler(%struct.adapter* %0, %struct.ndis_802_11_var_ie* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ndis_802_11_var_ie*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.mlme_ext_priv*, align 8
  %8 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.ndis_802_11_var_ie* %1, %struct.ndis_802_11_var_ie** %5, align 8
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.mlme_priv* %10, %struct.mlme_priv** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.mlme_ext_priv* %12, %struct.mlme_ext_priv** %7, align 8
  %13 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %14 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %13, i32 0, i32 0
  store %struct.mlme_ext_info* %14, %struct.mlme_ext_info** %8, align 8
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %8, align 8
  %22 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @_FAIL, align 4
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %8, align 8
  %26 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %8, align 8
  %28 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %27, i32 0, i32 1
  %29 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %5, align 8
  %30 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 6
  %33 = call i32 @memcpy(i32* %28, i64 %32, i32 4)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %24, %20
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
