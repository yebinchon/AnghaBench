; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_update_mgntframe_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_update_mgntframe_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i64, i32 }
%struct.pkt_attrib = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64 }

@IEEE80211_CCK_RATE_1MB = common dso_local global i64 0, align 8
@WIRELESS_11B = common dso_local global i32 0, align 4
@WIRELESS_11G = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mgntframe_attrib(%struct.adapter* %0, %struct.pkt_attrib* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pkt_attrib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlme_ext_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.mlme_ext_priv* %8, %struct.mlme_ext_priv** %6, align 8
  %9 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %10 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %9, i32 0, i32 0
  store i32 24, i32* %10, align 8
  %11 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %12 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %14 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %13, i32 0, i32 2
  store i32 7, i32* %14, align 8
  %15 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %16 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %15, i32 0, i32 17
  store i64 0, i64* %16, align 8
  %17 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %18 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %17, i32 0, i32 3
  store i32 18, i32* %18, align 4
  %19 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %20 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %19, i32 0, i32 16
  store i64 0, i64* %20, align 8
  %21 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %22 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IEEE80211_CCK_RATE_1MB, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @WIRELESS_11B, align 4
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @WIRELESS_11G, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @rtw_get_mgntframe_raid(%struct.adapter* %31, i32 %32)
  %34 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %35 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %34, i32 0, i32 15
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %40 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @_NO_PRIVACY_, align 4
  %42 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %43 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %42, i32 0, i32 14
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %45 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %44, i32 0, i32 5
  store i32 0, i32* %45, align 8
  %46 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %47 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %46, i32 0, i32 6
  store i32 0, i32* %47, align 4
  %48 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %49 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %48, i32 0, i32 7
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* @CHANNEL_WIDTH_20, align 4
  %51 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %52 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %51, i32 0, i32 13
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %54 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %55 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %54, i32 0, i32 12
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %57 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %56, i32 0, i32 8
  store i32 0, i32* %57, align 4
  %58 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %59 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %62 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 8
  %63 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %64 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %63, i32 0, i32 9
  store i32 1, i32* %64, align 8
  %65 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %66 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %65, i32 0, i32 10
  store i64 0, i64* %66, align 8
  ret void
}

declare dso_local i32 @rtw_get_mgntframe_raid(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
