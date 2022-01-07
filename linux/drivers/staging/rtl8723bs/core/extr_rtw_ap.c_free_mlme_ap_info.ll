; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_free_mlme_ap_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_free_mlme_ap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.mlme_priv = type { i32 }
%struct.sta_info = type { i32 }

@_HW_STATE_NOLINK_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mlme_ap_info(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.mlme_ext_priv*, align 8
  %6 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store %struct.sta_info* null, %struct.sta_info** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 1
  store %struct.mlme_priv* %8, %struct.mlme_priv** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.mlme_ext_priv* %10, %struct.mlme_ext_priv** %5, align 8
  %11 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %11, i32 0, i32 1
  store %struct.mlme_ext_info* %12, %struct.mlme_ext_info** %6, align 8
  %13 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = call i32 @rtw_sta_flush(%struct.adapter* %17)
  %19 = load i32, i32* @_HW_STATE_NOLINK_, align 4
  %20 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %21 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = call i32 @rtw_free_all_stainfo(%struct.adapter* %22)
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = call %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter* %24)
  store %struct.sta_info* %25, %struct.sta_info** %3, align 8
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %28 = call i32 @rtw_free_stainfo(%struct.adapter* %26, %struct.sta_info* %27)
  ret void
}

declare dso_local i32 @rtw_sta_flush(%struct.adapter*) #1

declare dso_local i32 @rtw_free_all_stainfo(%struct.adapter*) #1

declare dso_local %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter*) #1

declare dso_local i32 @rtw_free_stainfo(%struct.adapter*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
