; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_hw_rate_to_mrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_hw_rate_to_mrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@MGN_1M = common dso_local global i32 0, align 4
@MGN_2M = common dso_local global i32 0, align 4
@MGN_5_5M = common dso_local global i32 0, align 4
@MGN_11M = common dso_local global i32 0, align 4
@MGN_6M = common dso_local global i32 0, align 4
@MGN_9M = common dso_local global i32 0, align 4
@MGN_12M = common dso_local global i32 0, align 4
@MGN_18M = common dso_local global i32 0, align 4
@MGN_24M = common dso_local global i32 0, align 4
@MGN_36M = common dso_local global i32 0, align 4
@MGN_48M = common dso_local global i32 0, align 4
@MGN_54M = common dso_local global i32 0, align 4
@MGN_MCS0 = common dso_local global i32 0, align 4
@MGN_MCS1 = common dso_local global i32 0, align 4
@MGN_MCS2 = common dso_local global i32 0, align 4
@MGN_MCS3 = common dso_local global i32 0, align 4
@MGN_MCS4 = common dso_local global i32 0, align 4
@MGN_MCS5 = common dso_local global i32 0, align 4
@MGN_MCS6 = common dso_local global i32 0, align 4
@MGN_MCS7 = common dso_local global i32 0, align 4
@MGN_MCS8 = common dso_local global i32 0, align 4
@MGN_MCS9 = common dso_local global i32 0, align 4
@MGN_MCS10 = common dso_local global i32 0, align 4
@MGN_MCS11 = common dso_local global i32 0, align 4
@MGN_MCS12 = common dso_local global i32 0, align 4
@MGN_MCS13 = common dso_local global i32 0, align 4
@MGN_MCS14 = common dso_local global i32 0, align 4
@MGN_MCS15 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS0 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS1 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS2 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS3 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS4 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS5 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS6 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS7 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS8 = common dso_local global i32 0, align 4
@MGN_VHT1SS_MCS9 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS0 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS1 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS2 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS3 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS4 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS5 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS6 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS7 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS8 = common dso_local global i32 0, align 4
@MGN_VHT2SS_MCS9 = common dso_local global i32 0, align 4
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"HwRateToMRate8812(): Non supported Rate [%x]!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8821ae_hw_rate_to_mrate(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load i32, i32* @MGN_1M, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %107 [
    i32 172, label %11
    i32 170, label %13
    i32 166, label %15
    i32 175, label %17
    i32 165, label %19
    i32 164, label %21
    i32 174, label %23
    i32 173, label %25
    i32 171, label %27
    i32 169, label %29
    i32 168, label %31
    i32 167, label %33
    i32 163, label %35
    i32 162, label %37
    i32 155, label %39
    i32 154, label %41
    i32 153, label %43
    i32 152, label %45
    i32 151, label %47
    i32 150, label %49
    i32 149, label %51
    i32 148, label %53
    i32 161, label %55
    i32 160, label %57
    i32 159, label %59
    i32 158, label %61
    i32 157, label %63
    i32 156, label %65
    i32 147, label %67
    i32 146, label %69
    i32 145, label %71
    i32 144, label %73
    i32 143, label %75
    i32 142, label %77
    i32 141, label %79
    i32 140, label %81
    i32 139, label %83
    i32 138, label %85
    i32 137, label %87
    i32 136, label %89
    i32 135, label %91
    i32 134, label %93
    i32 133, label %95
    i32 132, label %97
    i32 131, label %99
    i32 130, label %101
    i32 129, label %103
    i32 128, label %105
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @MGN_1M, align 4
  store i32 %12, i32* %6, align 4
  br label %113

13:                                               ; preds = %2
  %14 = load i32, i32* @MGN_2M, align 4
  store i32 %14, i32* %6, align 4
  br label %113

15:                                               ; preds = %2
  %16 = load i32, i32* @MGN_5_5M, align 4
  store i32 %16, i32* %6, align 4
  br label %113

17:                                               ; preds = %2
  %18 = load i32, i32* @MGN_11M, align 4
  store i32 %18, i32* %6, align 4
  br label %113

19:                                               ; preds = %2
  %20 = load i32, i32* @MGN_6M, align 4
  store i32 %20, i32* %6, align 4
  br label %113

21:                                               ; preds = %2
  %22 = load i32, i32* @MGN_9M, align 4
  store i32 %22, i32* %6, align 4
  br label %113

23:                                               ; preds = %2
  %24 = load i32, i32* @MGN_12M, align 4
  store i32 %24, i32* %6, align 4
  br label %113

25:                                               ; preds = %2
  %26 = load i32, i32* @MGN_18M, align 4
  store i32 %26, i32* %6, align 4
  br label %113

27:                                               ; preds = %2
  %28 = load i32, i32* @MGN_24M, align 4
  store i32 %28, i32* %6, align 4
  br label %113

29:                                               ; preds = %2
  %30 = load i32, i32* @MGN_36M, align 4
  store i32 %30, i32* %6, align 4
  br label %113

31:                                               ; preds = %2
  %32 = load i32, i32* @MGN_48M, align 4
  store i32 %32, i32* %6, align 4
  br label %113

33:                                               ; preds = %2
  %34 = load i32, i32* @MGN_54M, align 4
  store i32 %34, i32* %6, align 4
  br label %113

35:                                               ; preds = %2
  %36 = load i32, i32* @MGN_MCS0, align 4
  store i32 %36, i32* %6, align 4
  br label %113

37:                                               ; preds = %2
  %38 = load i32, i32* @MGN_MCS1, align 4
  store i32 %38, i32* %6, align 4
  br label %113

39:                                               ; preds = %2
  %40 = load i32, i32* @MGN_MCS2, align 4
  store i32 %40, i32* %6, align 4
  br label %113

41:                                               ; preds = %2
  %42 = load i32, i32* @MGN_MCS3, align 4
  store i32 %42, i32* %6, align 4
  br label %113

43:                                               ; preds = %2
  %44 = load i32, i32* @MGN_MCS4, align 4
  store i32 %44, i32* %6, align 4
  br label %113

45:                                               ; preds = %2
  %46 = load i32, i32* @MGN_MCS5, align 4
  store i32 %46, i32* %6, align 4
  br label %113

47:                                               ; preds = %2
  %48 = load i32, i32* @MGN_MCS6, align 4
  store i32 %48, i32* %6, align 4
  br label %113

49:                                               ; preds = %2
  %50 = load i32, i32* @MGN_MCS7, align 4
  store i32 %50, i32* %6, align 4
  br label %113

51:                                               ; preds = %2
  %52 = load i32, i32* @MGN_MCS8, align 4
  store i32 %52, i32* %6, align 4
  br label %113

53:                                               ; preds = %2
  %54 = load i32, i32* @MGN_MCS9, align 4
  store i32 %54, i32* %6, align 4
  br label %113

55:                                               ; preds = %2
  %56 = load i32, i32* @MGN_MCS10, align 4
  store i32 %56, i32* %6, align 4
  br label %113

57:                                               ; preds = %2
  %58 = load i32, i32* @MGN_MCS11, align 4
  store i32 %58, i32* %6, align 4
  br label %113

59:                                               ; preds = %2
  %60 = load i32, i32* @MGN_MCS12, align 4
  store i32 %60, i32* %6, align 4
  br label %113

61:                                               ; preds = %2
  %62 = load i32, i32* @MGN_MCS13, align 4
  store i32 %62, i32* %6, align 4
  br label %113

63:                                               ; preds = %2
  %64 = load i32, i32* @MGN_MCS14, align 4
  store i32 %64, i32* %6, align 4
  br label %113

65:                                               ; preds = %2
  %66 = load i32, i32* @MGN_MCS15, align 4
  store i32 %66, i32* %6, align 4
  br label %113

67:                                               ; preds = %2
  %68 = load i32, i32* @MGN_VHT1SS_MCS0, align 4
  store i32 %68, i32* %6, align 4
  br label %113

69:                                               ; preds = %2
  %70 = load i32, i32* @MGN_VHT1SS_MCS1, align 4
  store i32 %70, i32* %6, align 4
  br label %113

71:                                               ; preds = %2
  %72 = load i32, i32* @MGN_VHT1SS_MCS2, align 4
  store i32 %72, i32* %6, align 4
  br label %113

73:                                               ; preds = %2
  %74 = load i32, i32* @MGN_VHT1SS_MCS3, align 4
  store i32 %74, i32* %6, align 4
  br label %113

75:                                               ; preds = %2
  %76 = load i32, i32* @MGN_VHT1SS_MCS4, align 4
  store i32 %76, i32* %6, align 4
  br label %113

77:                                               ; preds = %2
  %78 = load i32, i32* @MGN_VHT1SS_MCS5, align 4
  store i32 %78, i32* %6, align 4
  br label %113

79:                                               ; preds = %2
  %80 = load i32, i32* @MGN_VHT1SS_MCS6, align 4
  store i32 %80, i32* %6, align 4
  br label %113

81:                                               ; preds = %2
  %82 = load i32, i32* @MGN_VHT1SS_MCS7, align 4
  store i32 %82, i32* %6, align 4
  br label %113

83:                                               ; preds = %2
  %84 = load i32, i32* @MGN_VHT1SS_MCS8, align 4
  store i32 %84, i32* %6, align 4
  br label %113

85:                                               ; preds = %2
  %86 = load i32, i32* @MGN_VHT1SS_MCS9, align 4
  store i32 %86, i32* %6, align 4
  br label %113

87:                                               ; preds = %2
  %88 = load i32, i32* @MGN_VHT2SS_MCS0, align 4
  store i32 %88, i32* %6, align 4
  br label %113

89:                                               ; preds = %2
  %90 = load i32, i32* @MGN_VHT2SS_MCS1, align 4
  store i32 %90, i32* %6, align 4
  br label %113

91:                                               ; preds = %2
  %92 = load i32, i32* @MGN_VHT2SS_MCS2, align 4
  store i32 %92, i32* %6, align 4
  br label %113

93:                                               ; preds = %2
  %94 = load i32, i32* @MGN_VHT2SS_MCS3, align 4
  store i32 %94, i32* %6, align 4
  br label %113

95:                                               ; preds = %2
  %96 = load i32, i32* @MGN_VHT2SS_MCS4, align 4
  store i32 %96, i32* %6, align 4
  br label %113

97:                                               ; preds = %2
  %98 = load i32, i32* @MGN_VHT2SS_MCS5, align 4
  store i32 %98, i32* %6, align 4
  br label %113

99:                                               ; preds = %2
  %100 = load i32, i32* @MGN_VHT2SS_MCS6, align 4
  store i32 %100, i32* %6, align 4
  br label %113

101:                                              ; preds = %2
  %102 = load i32, i32* @MGN_VHT2SS_MCS7, align 4
  store i32 %102, i32* %6, align 4
  br label %113

103:                                              ; preds = %2
  %104 = load i32, i32* @MGN_VHT2SS_MCS8, align 4
  store i32 %104, i32* %6, align 4
  br label %113

105:                                              ; preds = %2
  %106 = load i32, i32* @MGN_VHT2SS_MCS9, align 4
  store i32 %106, i32* %6, align 4
  br label %113

107:                                              ; preds = %2
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %109 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %110 = load i32, i32* @DBG_LOUD, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @RT_TRACE(%struct.rtl_priv* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %107, %105, %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
