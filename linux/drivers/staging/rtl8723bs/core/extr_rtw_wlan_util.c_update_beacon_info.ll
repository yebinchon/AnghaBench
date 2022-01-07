; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_beacon_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_beacon_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sta_info = type { i32 }
%struct.ndis_80211_var_ie = type { i32, i64, i32 }

@_BEACON_IE_OFFSET_ = common dso_local global i32 0, align 4
@WLAN_HDR_A3_LEN = common dso_local global i32 0, align 4
@WMM_PARA_OUI = common dso_local global i32 0, align 4
@WLAN_WMM_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_beacon_info(%struct.adapter* %0, i32* %1, i32 %2, %struct.sta_info* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ndis_80211_var_ie*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sta_info* %3, %struct.sta_info** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @_BEACON_IE_OFFSET_, align 4
  %14 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %15 = add nsw i32 %13, %14
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %70, %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @_BEACON_IE_OFFSET_, align 4
  %24 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = bitcast i32* %30 to %struct.ndis_80211_var_ie*
  store %struct.ndis_80211_var_ie* %31, %struct.ndis_80211_var_ie** %11, align 8
  %32 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %33 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %69 [
    i32 128, label %35
    i32 129, label %58
    i32 130, label %62
  ]

35:                                               ; preds = %21
  %36 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %37 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WMM_PARA_OUI, align 4
  %40 = call i32 @memcmp(i32 %38, i32 %39, i32 6)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %35
  %43 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %44 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WLAN_WMM_LEN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.adapter*, %struct.adapter** %5, align 8
  %50 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %51 = call i32 @WMM_param_handler(%struct.adapter* %49, %struct.ndis_80211_var_ie* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.adapter*, %struct.adapter** %5, align 8
  %55 = call i32 @report_wmm_edca_update(%struct.adapter* %54)
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %42, %35
  br label %70

58:                                               ; preds = %21
  %59 = load %struct.adapter*, %struct.adapter** %5, align 8
  %60 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %61 = call i32 @bwmode_update_check(%struct.adapter* %59, %struct.ndis_80211_var_ie* %60)
  br label %70

62:                                               ; preds = %21
  %63 = load %struct.adapter*, %struct.adapter** %5, align 8
  %64 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %65 = call i32 @ERP_IE_handler(%struct.adapter* %63, %struct.ndis_80211_var_ie* %64)
  %66 = load %struct.adapter*, %struct.adapter** %5, align 8
  %67 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %68 = call i32 @VCS_update(%struct.adapter* %66, %struct.sta_info* %67)
  br label %70

69:                                               ; preds = %21
  br label %70

70:                                               ; preds = %69, %62, %58, %57
  %71 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %11, align 8
  %72 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 2
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  br label %17

79:                                               ; preds = %17
  ret void
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @WMM_param_handler(%struct.adapter*, %struct.ndis_80211_var_ie*) #1

declare dso_local i32 @report_wmm_edca_update(%struct.adapter*) #1

declare dso_local i32 @bwmode_update_check(%struct.adapter*, %struct.ndis_80211_var_ie*) #1

declare dso_local i32 @ERP_IE_handler(%struct.adapter*, %struct.ndis_80211_var_ie*) #1

declare dso_local i32 @VCS_update(%struct.adapter*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
