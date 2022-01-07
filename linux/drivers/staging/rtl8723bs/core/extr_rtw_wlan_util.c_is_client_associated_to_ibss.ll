; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_is_client_associated_to_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_is_client_associated_to_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }

@WIFI_FW_ASSOC_SUCCESS = common dso_local global i32 0, align 4
@WIFI_FW_ADHOC_STATE = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_client_associated_to_ibss(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.mlme_ext_priv*, align 8
  %5 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.mlme_ext_priv* %7, %struct.mlme_ext_priv** %4, align 8
  %8 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %8, i32 0, i32 0
  store %struct.mlme_ext_info* %9, %struct.mlme_ext_info** %5, align 8
  %10 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %11 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WIFI_FW_ASSOC_SUCCESS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %18 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 3
  %21 = load i32, i32* @WIFI_FW_ADHOC_STATE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %26

24:                                               ; preds = %16, %1
  %25 = load i32, i32* @_FAIL, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
