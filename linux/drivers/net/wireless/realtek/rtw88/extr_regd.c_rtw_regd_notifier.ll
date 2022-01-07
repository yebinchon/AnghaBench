; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32, i32* }
%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_hal }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rtw_hal = type { i32 }

@RTW_DBG_REGD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"get alpha2 %c%c from initiator %d, mapping to chplan 0x%x, txregd %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_regd_notifier(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca %struct.rtw_hal*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = call %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy* %8)
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %11, align 8
  store %struct.rtw_dev* %12, %struct.rtw_dev** %6, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 1
  store %struct.rtw_hal* %14, %struct.rtw_hal** %7, align 8
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %16 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %17 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %18 = call i32 @rtw_regd_notifier_apply(%struct.rtw_dev* %15, %struct.wiphy* %16, %struct.regulatory_request* %17)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %20 = load i32, i32* @RTW_DBG_REGD, align 4
  %21 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %22 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %27 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %32 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %35 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %39 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rtw_dbg(%struct.rtw_dev* %19, i32 %20, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30, i32 %33, i32 %37, i32 %41)
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %44 = load %struct.rtw_hal*, %struct.rtw_hal** %7, align 8
  %45 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rtw_phy_set_tx_power_level(%struct.rtw_dev* %43, i32 %46)
  ret void
}

declare dso_local %struct.ieee80211_hw* @wiphy_to_ieee80211_hw(%struct.wiphy*) #1

declare dso_local i32 @rtw_regd_notifier_apply(%struct.rtw_dev*, %struct.wiphy*, %struct.regulatory_request*) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtw_phy_set_tx_power_level(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
