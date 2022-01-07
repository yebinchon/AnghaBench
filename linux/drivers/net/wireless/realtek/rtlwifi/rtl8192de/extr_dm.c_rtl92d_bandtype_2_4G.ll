; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_bandtype_2_4G.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_bandtype_2_4G.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RCCK0_TXFILTER2 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@MASKCCK = common dso_local global i64 0, align 8
@CCK_TABLE_LENGTH = common dso_local global i32 0, align 4
@cckswing_table_ch14 = common dso_local global i64** null, align 8
@cckswing_table_ch1ch13 = common dso_local global i64** null, align 8
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Initial reg0x%x = 0x%lx, cck_index = 0x%x, ch14 %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64*, i64*)* @rtl92d_bandtype_2_4G to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92d_bandtype_2_4G(%struct.ieee80211_hw* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %7, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = call i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw* %14, i64* %9)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = load i32, i32* @RCCK0_TXFILTER2, align 4
  %18 = load i32, i32* @MASKDWORD, align 4
  %19 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %16, i32 %17, i32 %18)
  %20 = load i64, i64* @MASKCCK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %10, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %23 = call i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw* %22, i64* %9)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %72, %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CCK_TABLE_LENGTH, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i64**, i64*** @cckswing_table_ch14, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64*, i64** %35, i64 %37
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  store i64* %40, i64** %11, align 8
  br label %48

41:                                               ; preds = %28
  %42 = load i64**, i64*** @cckswing_table_ch1ch13, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64*, i64** %42, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  store i64* %47, i64** %11, align 8
  br label %48

48:                                               ; preds = %41, %34
  %49 = load i64, i64* %10, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = bitcast i64* %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le32_to_cpu(i32 %52)
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64*, i64** %6, align 8
  store i64 %57, i64* %58, align 8
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %60 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %61 = load i32, i32* @DBG_LOUD, align 4
  %62 = load i32, i32* @RCCK0_TXFILTER2, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %62, i64 %63, i64 %65, i64 %69)
  br label %75

71:                                               ; preds = %48
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %24

75:                                               ; preds = %55, %24
  %76 = load i64, i64* %10, align 8
  %77 = load i64*, i64** %5, align 8
  store i64 %76, i64* %77, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
