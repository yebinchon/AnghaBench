; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_cck_packet_detection_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_cck_packet_detection_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i32 }
%struct.dig_t = type { i64, i64, i32, i64 }

@DIG_STA_CONNECT = common dso_local global i64 0, align 8
@CCK_PD_STAGE_LOWRSSI = common dso_local global i64 0, align 8
@CCK_PD_STAGE_HIGHRSSI = common dso_local global i8* null, align 8
@RCCK0_CCA = common dso_local global i32 0, align 4
@MASKBYTE2 = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CurSTAConnectState=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"DIG_STA_CONNECT \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DIG_STA_DISCONNECT\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"CCKPDStage=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Low RSSI \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"High RSSI \00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"is92d single phy =%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92d_dm_cck_packet_detection_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92d_dm_cck_packet_detection_thresh(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 1
  store %struct.dig_t* %9, %struct.dig_t** %4, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %11 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DIG_STA_CONNECT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %17 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %23 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 25
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %28 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %29 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  br label %35

30:                                               ; preds = %21
  %31 = load i8*, i8** @CCK_PD_STAGE_HIGHRSSI, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %34 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %26
  br label %51

36:                                               ; preds = %15
  %37 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %38 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %39, 20
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %43 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %44 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  br label %50

45:                                               ; preds = %36
  %46 = load i8*, i8** @CCK_PD_STAGE_HIGHRSSI, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %49 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %41
  br label %51

51:                                               ; preds = %50, %35
  br label %56

52:                                               ; preds = %1
  %53 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %54 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %55 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %51
  %57 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %58 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %61 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %56
  %65 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %66 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %72 = call i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw* %71, i64* %5)
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %74 = load i32, i32* @RCCK0_CCA, align 4
  %75 = load i32, i32* @MASKBYTE2, align 4
  %76 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %73, i32 %74, i32 %75, i32 131)
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %78 = call i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw* %77, i64* %5)
  br label %88

79:                                               ; preds = %64
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = call i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw* %80, i64* %5)
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %83 = load i32, i32* @RCCK0_CCA, align 4
  %84 = load i32, i32* @MASKBYTE2, align 4
  %85 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %82, i32 %83, i32 %84, i32 205)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %87 = call i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw* %86, i64* %5)
  br label %88

88:                                               ; preds = %79, %70
  %89 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %90 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %93 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %88, %56
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %96 = load i32, i32* @COMP_DIG, align 4
  %97 = load i32, i32* @DBG_LOUD, align 4
  %98 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %99 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DIG_STA_CONNECT, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)
  %105 = call i32 @RT_TRACE(%struct.rtl_priv* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %104)
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %107 = load i32, i32* @COMP_DIG, align 4
  %108 = load i32, i32* @DBG_LOUD, align 4
  %109 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %110 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)
  %116 = call i32 @RT_TRACE(%struct.rtl_priv* %106, i32 %107, i32 %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = load i32, i32* @COMP_DIG, align 4
  %119 = load i32, i32* @DBG_LOUD, align 4
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @IS_92D_SINGLEPHY(i32 %123)
  %125 = call i32 @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %124)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*) #1

declare dso_local i8* @IS_92D_SINGLEPHY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
