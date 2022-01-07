; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_cck_packet_detection_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_cck_packet_detection_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i32 }
%struct.dig_t = type { i64, i32, i64, i64, i64, i64 }

@DIG_STA_CONNECT = common dso_local global i64 0, align 8
@CCK_PD_STAGE_LOWRSSI = common dso_local global i64 0, align 8
@CCK_PD_STAGE_HIGHRSSI = common dso_local global i8* null, align 8
@CCK_PD_STAGE_MAX = common dso_local global i64 0, align 8
@CCK_FA_STAGE_HIGH = common dso_local global i64 0, align 8
@CCK_FA_STAGE_LOW = common dso_local global i64 0, align 8
@RCCK0_CCA = common dso_local global i32 0, align 4
@MASKBYTE2 = common dso_local global i32 0, align 4
@RCCK0_SYSTEM = common dso_local global i32 0, align 4
@MASKBYTE1 = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"CCKPDStage=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_cck_packet_detection_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_cck_packet_detection_thresh(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 1
  store %struct.dig_t* %8, %struct.dig_t** %4, align 8
  %9 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %10 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DIG_STA_CONNECT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call i32 @rtl8723e_dm_initial_gain_min_pwdb(%struct.ieee80211_hw* %15)
  %17 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %18 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %20 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %14
  %25 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %26 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %27, 25
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %31 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %32 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  br label %38

33:                                               ; preds = %24
  %34 = load i8*, i8** @CCK_PD_STAGE_HIGHRSSI, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %37 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %29
  br label %54

39:                                               ; preds = %14
  %40 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %41 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %42, 20
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %46 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %47 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  br label %53

48:                                               ; preds = %39
  %49 = load i8*, i8** @CCK_PD_STAGE_HIGHRSSI, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %52 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %44
  br label %54

54:                                               ; preds = %53, %38
  br label %59

55:                                               ; preds = %1
  %56 = load i64, i64* @CCK_PD_STAGE_MAX, align 8
  %57 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %58 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %54
  %60 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %61 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %64 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %141

67:                                               ; preds = %59
  %68 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %69 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %122

73:                                               ; preds = %67
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 800
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i64, i64* @CCK_FA_STAGE_HIGH, align 8
  %81 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %82 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  br label %87

83:                                               ; preds = %73
  %84 = load i64, i64* @CCK_FA_STAGE_LOW, align 8
  %85 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %86 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %89 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %92 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %87
  %96 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %97 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CCK_FA_STAGE_LOW, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %103 = load i32, i32* @RCCK0_CCA, align 4
  %104 = load i32, i32* @MASKBYTE2, align 4
  %105 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %102, i32 %103, i32 %104, i32 131)
  br label %111

106:                                              ; preds = %95
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = load i32, i32* @RCCK0_CCA, align 4
  %109 = load i32, i32* @MASKBYTE2, align 4
  %110 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %107, i32 %108, i32 %109, i32 205)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %113 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %116 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %115, i32 0, i32 5
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %87
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %119 = load i32, i32* @RCCK0_SYSTEM, align 4
  %120 = load i32, i32* @MASKBYTE1, align 4
  %121 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %118, i32 %119, i32 %120, i32 64)
  br label %135

122:                                              ; preds = %67
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %124 = load i32, i32* @RCCK0_CCA, align 4
  %125 = load i32, i32* @MASKBYTE2, align 4
  %126 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %123, i32 %124, i32 %125, i32 205)
  %127 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %128 = load i32, i32* @RCCK0_SYSTEM, align 4
  %129 = load i32, i32* @MASKBYTE1, align 4
  %130 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %127, i32 %128, i32 %129, i32 71)
  %131 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %132 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %131, i32 0, i32 5
  store i64 0, i64* %132, align 8
  %133 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %134 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %133, i32 0, i32 4
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %122, %117
  %136 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %137 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %140 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %135, %59
  %142 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %143 = load i32, i32* @COMP_DIG, align 4
  %144 = load i32, i32* @DBG_TRACE, align 4
  %145 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %146 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @RT_TRACE(%struct.rtl_priv* %142, i32 %143, i32 %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %147)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_initial_gain_min_pwdb(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
