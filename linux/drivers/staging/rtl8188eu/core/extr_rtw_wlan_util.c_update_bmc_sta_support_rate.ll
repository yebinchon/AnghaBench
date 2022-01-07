; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_update_bmc_sta_support_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_update_bmc_sta_support_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WIRELESS_11B = common dso_local global i32 0, align 4
@rtw_basic_rate_cck = common dso_local global i32 0, align 4
@rtw_basic_rate_ofdm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_bmc_sta_support_rate(%struct.adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mlme_ext_priv*, align 8
  %6 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.mlme_ext_priv* %8, %struct.mlme_ext_priv** %5, align 8
  %9 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %9, i32 0, i32 1
  store %struct.mlme_ext_info* %10, %struct.mlme_ext_info** %6, align 8
  %11 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @WIRELESS_11B, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %19 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @rtw_basic_rate_cck, align 4
  %26 = call i32 @memcpy(i32 %24, i32 %25, i32 4)
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %29 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @rtw_basic_rate_ofdm, align 4
  %36 = call i32 @memcpy(i32 %34, i32 %35, i32 3)
  br label %37

37:                                               ; preds = %27, %17
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
