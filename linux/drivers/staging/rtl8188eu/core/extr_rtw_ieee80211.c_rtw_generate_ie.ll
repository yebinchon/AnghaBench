; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_generate_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ieee80211.c_rtw_generate_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.registry_priv = type { i64, i64, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i64*, i64*, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i64* }

@cap_IBSS = common dso_local global i64 0, align 8
@PREAMBLE_SHORT = common dso_local global i64 0, align 8
@cap_ShortPremble = common dso_local global i64 0, align 8
@cap_Privacy = common dso_local global i64 0, align 8
@_SSID_IE_ = common dso_local global i32 0, align 4
@WIRELESS_11ABGN = common dso_local global i64 0, align 8
@WIRELESS_11A_5N = common dso_local global i64 0, align 8
@WIRELESS_11BG_24N = common dso_local global i64 0, align 8
@_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_DSSET_IE_ = common dso_local global i32 0, align 4
@_IBSS_PARA_IE_ = common dso_local global i32 0, align 4
@_EXT_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_generate_ie(%struct.registry_priv* %0) #0 {
  %2 = alloca %struct.registry_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wlan_bssid_ex*, align 8
  %7 = alloca i64*, align 8
  store %struct.registry_priv* %0, %struct.registry_priv** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %9 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %8, i32 0, i32 2
  store %struct.wlan_bssid_ex* %9, %struct.wlan_bssid_ex** %6, align 8
  %10 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %11 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i64*, i64** %7, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64* %18, i64** %7, align 8
  %19 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %20 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @cpu_to_le16(i64 %22)
  %24 = load i64*, i64** %7, align 8
  %25 = bitcast i64* %24 to i32*
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %5, align 4
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  store i64* %29, i64** %7, align 8
  %30 = load i64*, i64** %7, align 8
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @cap_IBSS, align 8
  %32 = call i32 @cpu_to_le16(i64 %31)
  %33 = load i64*, i64** %7, align 8
  %34 = bitcast i64* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %38 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PREAMBLE_SHORT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %1
  %43 = load i64, i64* @cap_ShortPremble, align 8
  %44 = call i32 @cpu_to_le16(i64 %43)
  %45 = load i64*, i64** %7, align 8
  %46 = bitcast i64* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %1
  %50 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %51 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i64, i64* @cap_Privacy, align 8
  %56 = call i32 @cpu_to_le16(i64 %55)
  %57 = load i64*, i64** %7, align 8
  %58 = bitcast i64* %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %5, align 4
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 2
  store i64* %65, i64** %7, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = load i32, i32* @_SSID_IE_, align 4
  %68 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %69 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %73 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = call i64* @rtw_set_ie(i64* %66, i32 %67, i32 %71, i64* %75, i32* %5)
  store i64* %76, i64** %7, align 8
  %77 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %78 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @WIRELESS_11ABGN, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %61
  %83 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %84 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 14
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i64, i64* @WIRELESS_11A_5N, align 8
  store i64 %89, i64* %3, align 8
  br label %92

90:                                               ; preds = %82
  %91 = load i64, i64* @WIRELESS_11BG_24N, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %90, %88
  br label %97

93:                                               ; preds = %61
  %94 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %95 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %3, align 8
  br label %97

97:                                               ; preds = %93, %92
  %98 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %99 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @rtw_set_supported_rate(i64* %100, i64 %101)
  %103 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %104 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = call i32 @rtw_get_rateset_len(i64* %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp sgt i32 %107, 8
  br i1 %108, label %109, label %116

109:                                              ; preds = %97
  %110 = load i64*, i64** %7, align 8
  %111 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %112 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %113 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = call i64* @rtw_set_ie(i64* %110, i32 %111, i32 8, i64* %114, i32* %5)
  store i64* %115, i64** %7, align 8
  br label %124

116:                                              ; preds = %97
  %117 = load i64*, i64** %7, align 8
  %118 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %121 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = call i64* @rtw_set_ie(i64* %117, i32 %118, i32 %119, i64* %122, i32* %5)
  store i64* %123, i64** %7, align 8
  br label %124

124:                                              ; preds = %116, %109
  %125 = load i64*, i64** %7, align 8
  %126 = load i32, i32* @_DSSET_IE_, align 4
  %127 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %128 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = bitcast i32* %129 to i64*
  %131 = call i64* @rtw_set_ie(i64* %125, i32 %126, i32 1, i64* %130, i32* %5)
  store i64* %131, i64** %7, align 8
  %132 = load i64*, i64** %7, align 8
  %133 = load i32, i32* @_IBSS_PARA_IE_, align 4
  %134 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %135 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = bitcast i32* %136 to i64*
  %138 = call i64* @rtw_set_ie(i64* %132, i32 %133, i32 2, i64* %137, i32* %5)
  store i64* %138, i64** %7, align 8
  %139 = load i32, i32* %4, align 4
  %140 = icmp sgt i32 %139, 8
  br i1 %140, label %141, label %151

141:                                              ; preds = %124
  %142 = load i64*, i64** %7, align 8
  %143 = load i32, i32* @_EXT_SUPPORTEDRATES_IE_, align 4
  %144 = load i32, i32* %4, align 4
  %145 = sub nsw i32 %144, 8
  %146 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %147 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 8
  %150 = call i64* @rtw_set_ie(i64* %142, i32 %143, i32 %145, i64* %149, i32* %5)
  store i64* %150, i64** %7, align 8
  br label %151

151:                                              ; preds = %141, %124
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64* @rtw_set_ie(i64*, i32, i32, i64*, i32*) #1

declare dso_local i32 @rtw_set_supported_rate(i64*, i64) #1

declare dso_local i32 @rtw_get_rateset_len(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
