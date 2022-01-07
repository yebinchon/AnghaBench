; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_init_rate_adaptive_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_init_rate_adaptive_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rate_adaptive }
%struct.TYPE_2__ = type { i64, i32 }
%struct.rate_adaptive = type { i32, i32, i8*, i8* }

@DM_RATR_STA_INIT = common dso_local global i8* null, align 8
@DM_TYPE_BYDRIVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_dm_init_rate_adaptive_mask(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rate_adaptive*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 1
  store %struct.rate_adaptive* %8, %struct.rate_adaptive** %4, align 8
  %9 = load i8*, i8** @DM_RATR_STA_INIT, align 8
  %10 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %11 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @DM_RATR_STA_INIT, align 8
  %13 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %14 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i64, i64* @DM_TYPE_BYDRIVER, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DM_TYPE_BYDRIVER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %35 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %34, i32 0, i32 0
  store i32 50, i32* %35, align 8
  %36 = load %struct.rate_adaptive*, %struct.rate_adaptive** %4, align 8
  %37 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %36, i32 0, i32 1
  store i32 20, i32* %37, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
