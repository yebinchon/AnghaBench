; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_init_mlme_ext_priv_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_init_mlme_ext_priv_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__, %struct.mlme_ext_priv }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlme_ext_priv = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, i32, %struct.mlme_ext_info }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.mlme_ext_info = type { i64, i32, i32, i32, i64, i32, i64, i64, i32, i64, i64, i64, i64, i32 }

@CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4
@IEEE80211_CCK_RATE_1MB = common dso_local global i32 0, align 4
@SCAN_DISABLE = common dso_local global i32 0, align 4
@WIFI_FW_NULL_STATE = common dso_local global i32 0, align 4
@dot11AuthAlgrthm_Open = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i32 0, align 4
@SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@PREAMBLE_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @init_mlme_ext_priv_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mlme_ext_priv_value(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_ext_priv*, align 8
  %4 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 1
  store %struct.mlme_ext_priv* %6, %struct.mlme_ext_priv** %3, align 8
  %7 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %7, i32 0, i32 15
  store %struct.mlme_ext_info* %8, %struct.mlme_ext_info** %4, align 8
  %9 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %9, i32 0, i32 14
  %11 = call i32 @atomic_set(i32* %10, i32 0)
  %12 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %12, i32 0, i32 13
  store i64 0, i64* %13, align 8
  %14 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %14, i32 0, i32 12
  store i64 0, i64* %15, align 8
  %16 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %16, i32 0, i32 11
  store i64 0, i64* %17, align 8
  %18 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @CHANNEL_WIDTH_20, align 4
  %27 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %30 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = call i32 @init_mlme_default_rate_set(%struct.adapter* %40)
  %42 = load i32, i32* @IEEE80211_CCK_RATE_1MB, align 4
  %43 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %44 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @SCAN_DISABLE, align 4
  %46 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %47 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %50 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %53 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %56 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* @WIFI_FW_NULL_STATE, align 4
  %58 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %59 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %61 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %60, i32 0, i32 12
  store i64 0, i64* %61, align 8
  %62 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %63 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %62, i32 0, i32 11
  store i64 0, i64* %63, align 8
  %64 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %65 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %64, i32 0, i32 10
  store i64 0, i64* %65, align 8
  %66 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %67 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %66, i32 0, i32 9
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @dot11AuthAlgrthm_Open, align 4
  %69 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %70 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %72 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %71, i32 0, i32 7
  store i64 0, i64* %72, align 8
  %73 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %74 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @_NO_PRIVACY_, align 4
  %76 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %77 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %79 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %81 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memset(i32 %82, i32 0, i32 128)
  %84 = load i32, i32* @SHORT_SLOT_TIME, align 4
  %85 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %86 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @PREAMBLE_AUTO, align 4
  %88 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %89 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %91 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %93 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %92, i32 0, i32 1
  store i32 65535, i32* %93, align 4
  %94 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %95 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %94, i32 0, i32 2
  store i32 255, i32* %95, align 8
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_mlme_default_rate_set(%struct.adapter*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
