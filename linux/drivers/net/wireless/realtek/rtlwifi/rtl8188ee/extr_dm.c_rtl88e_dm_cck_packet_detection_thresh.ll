; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_cck_packet_detection_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_dm_cck_packet_detection_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i32 }
%struct.dig_t = type { i64, i32, i32, i32 }

@DIG_STA_CONNECT = common dso_local global i64 0, align 8
@RCCK0_CCA = common dso_local global i32 0, align 4
@MASKBYTE2 = common dso_local global i32 0, align 4
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CCK cca thresh hold =%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl88e_dm_cck_packet_detection_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_dm_cck_packet_detection_thresh(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 1
  store %struct.dig_t* %9, %struct.dig_t** %4, align 8
  %10 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %11 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DIG_STA_CONNECT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %1
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call i32 @rtl88e_dm_initial_gain_min_pwdb(%struct.ieee80211_hw* %16)
  %18 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %19 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %21 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 25
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 205, i32* %5, align 4
  br label %46

25:                                               ; preds = %15
  %26 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %27 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 25
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %32 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 10
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 131, i32* %5, align 4
  br label %45

36:                                               ; preds = %30, %25
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1000
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 131, i32* %5, align 4
  br label %44

43:                                               ; preds = %36
  store i32 64, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45, %24
  br label %56

47:                                               ; preds = %1
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1000
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 131, i32* %5, align 4
  br label %55

54:                                               ; preds = %47
  store i32 64, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %46
  %57 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %58 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %64 = load i32, i32* @RCCK0_CCA, align 4
  %65 = load i32, i32* @MASKBYTE2, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %71 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %73 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %76 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = load i32, i32* @COMP_DIG, align 4
  %79 = load i32, i32* @DBG_TRACE, align 4
  %80 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %81 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @RT_TRACE(%struct.rtl_priv* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %82)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl88e_dm_initial_gain_min_pwdb(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
