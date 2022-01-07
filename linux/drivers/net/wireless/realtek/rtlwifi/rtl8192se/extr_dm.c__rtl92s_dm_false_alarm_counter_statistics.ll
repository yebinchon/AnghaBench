; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_false_alarm_counter_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_false_alarm_counter_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.false_alarm_statistics }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32 }

@ROFDM_PHYCOUNTER1 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER2 = common dso_local global i32 0, align 4
@ROFDM_PHYCOUNTER3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_dm_false_alarm_counter_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.false_alarm_statistics*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  store %struct.false_alarm_statistics* %9, %struct.false_alarm_statistics** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = load i32, i32* @ROFDM_PHYCOUNTER1, align 4
  %12 = load i32, i32* @MASKDWORD, align 4
  %13 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %10, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, -65536
  %16 = lshr i32 %15, 16
  %17 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %18 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = load i32, i32* @ROFDM_PHYCOUNTER2, align 4
  %21 = load i32, i32* @MASKDWORD, align 4
  %22 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 65535
  %25 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %26 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, -65536
  %29 = lshr i32 %28, 16
  %30 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %31 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = load i32, i32* @ROFDM_PHYCOUNTER3, align 4
  %34 = load i32, i32* @MASKDWORD, align 4
  %35 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 65535
  %38 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %39 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %41 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %44 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %48 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %52 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %56 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = load i32, i32* @MASKDWORD, align 4
  %59 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %57, i32 3172, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 65535
  %62 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %63 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %65 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %68 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = load %struct.false_alarm_statistics*, %struct.false_alarm_statistics** %4, align 8
  %72 = getelementptr inbounds %struct.false_alarm_statistics, %struct.false_alarm_statistics* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
