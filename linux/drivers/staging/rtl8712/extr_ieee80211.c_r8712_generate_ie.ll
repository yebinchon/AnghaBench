; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_generate_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_ieee80211.c_r8712_generate_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.registry_priv = type { i64, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { %struct.TYPE_4__, i32*, %struct.TYPE_3__, i64, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }

@cap_IBSS = common dso_local global i64 0, align 8
@PREAMBLE_SHORT = common dso_local global i64 0, align 8
@cap_ShortPremble = common dso_local global i64 0, align 8
@cap_Privacy = common dso_local global i64 0, align 8
@_SSID_IE_ = common dso_local global i32 0, align 4
@_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_EXT_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_DSSET_IE_ = common dso_local global i32 0, align 4
@_IBSS_PARA_IE_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_generate_ie(%struct.registry_priv* %0) #0 {
  %2 = alloca %struct.registry_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wlan_bssid_ex*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.registry_priv* %0, %struct.registry_priv** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %9 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %8, i32 0, i32 2
  store %struct.wlan_bssid_ex* %9, %struct.wlan_bssid_ex** %5, align 8
  %10 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %11 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %14 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 8
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @cpu_to_le16(i64 %24)
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %4, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = bitcast i32* %31 to i64*
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* @cap_IBSS, align 8
  %34 = call i32 @cpu_to_le16(i64 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %39 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PREAMBLE_SHORT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load i64, i64* @cap_ShortPremble, align 8
  %45 = call i32 @cpu_to_le16(i64 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %1
  %50 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %51 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i64, i64* @cap_Privacy, align 8
  %56 = call i32 @cpu_to_le16(i64 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %4, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* @_SSID_IE_, align 4
  %67 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %68 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %72 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32* @r8712_set_ie(i32* %65, i32 %66, i32 %70, i32* %74, i32* %4)
  store i32* %75, i32** %6, align 8
  %76 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %77 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.registry_priv*, %struct.registry_priv** %2, align 8
  %80 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @set_supported_rate(i32* %78, i32 %81)
  %83 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %84 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @r8712_get_rateset_len(i32* %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp sgt i32 %87, 8
  br i1 %88, label %89, label %105

89:                                               ; preds = %60
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %92 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %93 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32* @r8712_set_ie(i32* %90, i32 %91, i32 8, i32* %94, i32* %4)
  store i32* %95, i32** %6, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* @_EXT_SUPPORTEDRATES_IE_, align 4
  %98 = load i32, i32* %3, align 4
  %99 = sub nsw i32 %98, 8
  %100 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %101 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  %104 = call i32* @r8712_set_ie(i32* %96, i32 %97, i32 %99, i32* %103, i32* %4)
  store i32* %104, i32** %6, align 8
  br label %113

105:                                              ; preds = %60
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %108 = load i32, i32* %3, align 4
  %109 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %110 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32* @r8712_set_ie(i32* %106, i32 %107, i32 %108, i32* %111, i32* %4)
  store i32* %112, i32** %6, align 8
  br label %113

113:                                              ; preds = %105, %89
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @_DSSET_IE_, align 4
  %116 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %117 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = call i32* @r8712_set_ie(i32* %114, i32 %115, i32 1, i32* %118, i32* %4)
  store i32* %119, i32** %6, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* @_IBSS_PARA_IE_, align 4
  %122 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %123 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = call i32* @r8712_set_ie(i32* %120, i32 %121, i32 2, i32* %124, i32* %4)
  store i32* %125, i32** %6, align 8
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32* @r8712_set_ie(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @set_supported_rate(i32*, i32) #1

declare dso_local i32 @r8712_get_rateset_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
