; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_generate_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ieee80211.c_rtw_generate_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.registry_priv = type { i64, i32, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32*, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32* }

@cap_IBSS = common dso_local global i64 0, align 8
@PREAMBLE_SHORT = common dso_local global i64 0, align 8
@cap_ShortPremble = common dso_local global i64 0, align 8
@cap_Privacy = common dso_local global i64 0, align 8
@_SSID_IE_ = common dso_local global i32 0, align 4
@WIRELESS_11ABGN = common dso_local global i32 0, align 4
@WIRELESS_11A_5N = common dso_local global i32 0, align 4
@WIRELESS_11BG_24N = common dso_local global i32 0, align 4
@_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_DSSET_IE_ = common dso_local global i32 0, align 4
@_IBSS_PARA_IE_ = common dso_local global i32 0, align 4
@_EXT_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@WIRELESS_11_5N = common dso_local global i32 0, align 4
@WIRELESS_11_24N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_generate_ie(%struct.registry_priv* %0) #0 {
  %2 = alloca %struct.registry_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wlan_bssid_ex*, align 8
  %7 = alloca i32*, align 8
  store %struct.registry_priv* %0, %struct.registry_priv** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %9 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %8, i32 0, i32 3
  store %struct.wlan_bssid_ex* %9, %struct.wlan_bssid_ex** %6, align 8
  %10 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %11 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %7, align 8
  %19 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %20 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @cpu_to_le16(i64 %22)
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = bitcast i32* %29 to i64*
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @cap_IBSS, align 8
  %32 = call i32 @cpu_to_le16(i64 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %37 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PREAMBLE_SHORT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %1
  %42 = load i64, i64* @cap_ShortPremble, align 8
  %43 = call i32 @cpu_to_le16(i64 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %1
  %48 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %49 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* @cap_Privacy, align 8
  %54 = call i32 @cpu_to_le16(i64 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %4, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @_SSID_IE_, align 4
  %65 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %66 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %70 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32* @rtw_set_ie(i32* %63, i32 %64, i32 %68, i32* %72, i32* %4)
  store i32* %73, i32** %7, align 8
  %74 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %75 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @WIRELESS_11ABGN, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %58
  %80 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %81 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 14
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @WIRELESS_11A_5N, align 4
  store i32 %86, i32* %3, align 4
  br label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @WIRELESS_11BG_24N, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %85
  br label %94

90:                                               ; preds = %58
  %91 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %92 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %89
  %95 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %96 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @rtw_set_supported_rate(i32* %97, i32 %98)
  %100 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %101 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @rtw_get_rateset_len(i32* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp sgt i32 %104, 8
  br i1 %105, label %106, label %113

106:                                              ; preds = %94
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %109 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %110 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32* @rtw_set_ie(i32* %107, i32 %108, i32 8, i32* %111, i32* %4)
  store i32* %112, i32** %7, align 8
  br label %121

113:                                              ; preds = %94
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %118 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = call i32* @rtw_set_ie(i32* %114, i32 %115, i32 %116, i32* %119, i32* %4)
  store i32* %120, i32** %7, align 8
  br label %121

121:                                              ; preds = %113, %106
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* @_DSSET_IE_, align 4
  %124 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %125 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = call i32* @rtw_set_ie(i32* %122, i32 %123, i32 1, i32* %126, i32* %4)
  store i32* %127, i32** %7, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* @_IBSS_PARA_IE_, align 4
  %130 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %131 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = call i32* @rtw_set_ie(i32* %128, i32 %129, i32 2, i32* %132, i32* %4)
  store i32* %133, i32** %7, align 8
  %134 = load i32, i32* %5, align 4
  %135 = icmp sgt i32 %134, 8
  br i1 %135, label %136, label %146

136:                                              ; preds = %121
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* @_EXT_SUPPORTEDRATES_IE_, align 4
  %139 = load i32, i32* %5, align 4
  %140 = sub nsw i32 %139, 8
  %141 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %142 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 8
  %145 = call i32* @rtw_set_ie(i32* %137, i32 %138, i32 %140, i32* %144, i32* %4)
  store i32* %145, i32** %7, align 8
  br label %146

146:                                              ; preds = %136, %121
  %147 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %148 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @WIRELESS_11_5N, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %146
  %154 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %155 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @WIRELESS_11_24N, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153, %146
  %161 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %162 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165, %160, %153
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32* @rtw_set_ie(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @rtw_set_supported_rate(i32*, i32) #1

declare dso_local i32 @rtw_get_rateset_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
