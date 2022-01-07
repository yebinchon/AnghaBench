; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8812ae_fixspur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8812ae_fixspur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i64, i32 }

@HT_CHANNEL_WIDTH_20_40 = common dso_local global i32 0, align 4
@RRFMOD = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@RADC_BUF_CLK = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_80 = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @rtl8812ae_fixspur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8812ae_fixspur(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call i32 @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_hal* @rtl_hal(i32 %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %7, align 8
  %11 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %12 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @IS_VENDOR_8812A_C_CUT(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 11
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %25 = load i32, i32* @RRFMOD, align 4
  %26 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %24, i32 %25, i32 3072, i32 3)
  br label %31

27:                                               ; preds = %20, %16
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %29 = load i32, i32* @RRFMOD, align 4
  %30 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %28, i32 %29, i32 3072, i32 2)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 13
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 14
  br i1 %40, label %41, label %49

41:                                               ; preds = %38, %35
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %43 = load i32, i32* @RRFMOD, align 4
  %44 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %42, i32 %43, i32 768, i32 3)
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %46 = load i32, i32* @RADC_BUF_CLK, align 4
  %47 = call i32 @BIT(i32 30)
  %48 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %45, i32 %46, i32 %47, i32 1)
  br label %75

49:                                               ; preds = %38, %31
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @HT_CHANNEL_WIDTH_20_40, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 11
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %58 = load i32, i32* @RADC_BUF_CLK, align 4
  %59 = call i32 @BIT(i32 30)
  %60 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %57, i32 %58, i32 %59, i32 1)
  br label %74

61:                                               ; preds = %53, %49
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @HT_CHANNEL_WIDTH_80, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %67 = load i32, i32* @RRFMOD, align 4
  %68 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %66, i32 %67, i32 768, i32 2)
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %70 = load i32, i32* @RADC_BUF_CLK, align 4
  %71 = call i32 @BIT(i32 30)
  %72 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %69, i32 %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %65, %61
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %41
  br label %106

76:                                               ; preds = %3
  %77 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %78 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 13
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 14
  br i1 %91, label %92, label %96

92:                                               ; preds = %89, %86
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %94 = load i32, i32* @RRFMOD, align 4
  %95 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %93, i32 %94, i32 768, i32 3)
  br label %104

96:                                               ; preds = %89, %82
  %97 = load i32, i32* %6, align 4
  %98 = icmp sle i32 %97, 14
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %101 = load i32, i32* @RRFMOD, align 4
  %102 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %100, i32 %101, i32 768, i32 2)
  br label %103

103:                                              ; preds = %99, %96
  br label %104

104:                                              ; preds = %103, %92
  br label %105

105:                                              ; preds = %104, %76
  br label %106

106:                                              ; preds = %105, %75
  ret void
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @IS_VENDOR_8812A_C_CUT(i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
