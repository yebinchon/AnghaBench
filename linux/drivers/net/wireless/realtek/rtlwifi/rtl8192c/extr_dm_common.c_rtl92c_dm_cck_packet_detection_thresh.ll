; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_cck_packet_detection_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_cck_packet_detection_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.dig_t }
%struct.dig_t = type { i64, i32, i64, i64 }

@DIG_STA_CONNECT = common dso_local global i64 0, align 8
@CCK_PD_STAGE_LOWRSSI = common dso_local global i64 0, align 8
@CCK_PD_STAGE_HIGHRSSI = common dso_local global i8* null, align 8
@CCK_PD_STAGE_MAX = common dso_local global i64 0, align 8
@RCCK0_CCA = common dso_local global i32 0, align 4
@MASKBYTE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_dm_cck_packet_detection_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_dm_cck_packet_detection_thresh(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 0
  store %struct.dig_t* %8, %struct.dig_t** %4, align 8
  %9 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %10 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DIG_STA_CONNECT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call i32 @rtl92c_dm_initial_gain_min_pwdb(%struct.ieee80211_hw* %15)
  %17 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %18 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %20 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 100
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %25 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %24, i32 0, i32 1
  store i32 100, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %28 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %34 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 25
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %39 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %40 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  br label %46

41:                                               ; preds = %32
  %42 = load i8*, i8** @CCK_PD_STAGE_HIGHRSSI, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %45 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %37
  br label %62

47:                                               ; preds = %26
  %48 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %49 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %50, 20
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %54 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %55 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  br label %61

56:                                               ; preds = %47
  %57 = load i8*, i8** @CCK_PD_STAGE_HIGHRSSI, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %60 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61, %46
  br label %67

63:                                               ; preds = %1
  %64 = load i64, i64* @CCK_PD_STAGE_MAX, align 8
  %65 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %66 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %62
  %68 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %69 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %72 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %67
  %76 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %77 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CCK_PD_STAGE_LOWRSSI, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %83 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CCK_PD_STAGE_MAX, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81, %75
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %89 = load i32, i32* @RCCK0_CCA, align 4
  %90 = load i32, i32* @MASKBYTE2, align 4
  %91 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %88, i32 %89, i32 %90, i32 131)
  br label %97

92:                                               ; preds = %81
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %94 = load i32, i32* @RCCK0_CCA, align 4
  %95 = load i32, i32* @MASKBYTE2, align 4
  %96 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %93, i32 %94, i32 %95, i32 205)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %99 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %102 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %97, %67
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_initial_gain_min_pwdb(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
