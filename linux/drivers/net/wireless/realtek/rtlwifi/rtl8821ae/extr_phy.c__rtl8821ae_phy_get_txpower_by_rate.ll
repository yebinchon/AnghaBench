; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_get_txpower_by_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_get_txpower_by_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_phy = type { i32****, i32, i32 }

@RF_TX_NUM_NONIMPLEMENT = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i32 0, align 4
@RF_1TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rtl8821ae: Rate_Section is Illegal\0A\00", align 1
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Maximum power by rate %d, final power by rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32, i32)* @_rtl8821ae_phy_get_txpower_by_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_phy_get_txpower_by_rate(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %9, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 1
  store %struct.rtl_phy* %19, %struct.rtl_phy** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @_rtl8821ae_phy_get_ratesection_intxpower_byrate(i32 %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @RF_TX_NUM_NONIMPLEMENT, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @RF_TX_NUM_NONIMPLEMENT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 149
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %31, 156
  br i1 %32, label %39, label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 135
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp sle i32 %37, 128
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %30
  %40 = load i32, i32* @RF_2TX, align 4
  store i32 %40, i32* %13, align 4
  br label %43

41:                                               ; preds = %36, %33
  %42 = load i32, i32* @RF_1TX, align 4
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %4
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %50 [
    i32 172, label %46
    i32 165, label %46
    i32 171, label %46
    i32 163, label %46
    i32 153, label %46
    i32 149, label %46
    i32 159, label %46
    i32 147, label %46
    i32 143, label %46
    i32 139, label %46
    i32 135, label %46
    i32 131, label %46
    i32 170, label %47
    i32 164, label %47
    i32 169, label %47
    i32 162, label %47
    i32 152, label %47
    i32 148, label %47
    i32 158, label %47
    i32 146, label %47
    i32 142, label %47
    i32 138, label %47
    i32 134, label %47
    i32 130, label %47
    i32 166, label %48
    i32 174, label %48
    i32 168, label %48
    i32 155, label %48
    i32 151, label %48
    i32 161, label %48
    i32 157, label %48
    i32 145, label %48
    i32 141, label %48
    i32 137, label %48
    i32 133, label %48
    i32 129, label %48
    i32 175, label %49
    i32 173, label %49
    i32 167, label %49
    i32 154, label %49
    i32 150, label %49
    i32 160, label %49
    i32 156, label %49
    i32 144, label %49
    i32 140, label %49
    i32 136, label %49
    i32 132, label %49
    i32 128, label %49
  ]

46:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  store i32 0, i32* %11, align 4
  br label %52

47:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  store i32 8, i32* %11, align 4
  br label %52

48:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  store i32 16, i32* %11, align 4
  br label %52

49:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  store i32 24, i32* %11, align 4
  br label %52

50:                                               ; preds = %44
  %51 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %49, %48, %47, %46
  %53 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %54 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %53, i32 0, i32 0
  %55 = load i32****, i32***** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32***, i32**** %55, i64 %57
  %59 = load i32***, i32**** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32**, i32*** %59, i64 %61
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = ashr i32 %71, %72
  %74 = and i32 %73, 255
  store i32 %74, i32* %14, align 4
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %76 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 2
  br i1 %79, label %80, label %139

80:                                               ; preds = %52
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %84 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %89 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @_rtl8812ae_phy_get_txpower_limit(%struct.ieee80211_hw* %81, i32 %82, i32 %85, i32 %86, i32 %87, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 139
  br i1 %93, label %103, label %94

94:                                               ; preds = %80
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 138
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 129
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 128
  br i1 %102, label %103, label %116

103:                                              ; preds = %100, %97, %94, %80
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %103
  br label %132

116:                                              ; preds = %100
  %117 = load i32, i32* %15, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %14, align 4
  br label %131

121:                                              ; preds = %116
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* %15, align 4
  br label %129

127:                                              ; preds = %121
  %128 = load i32, i32* %14, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %129, %119
  br label %132

132:                                              ; preds = %131, %115
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %134 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %135 = load i32, i32* @DBG_LOUD, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @RT_TRACE(%struct.rtl_priv* %133, i32 %134, i32 %135, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %132, %52
  %140 = load i32, i32* %14, align 4
  ret i32 %140
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8821ae_phy_get_ratesection_intxpower_byrate(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @_rtl8812ae_phy_get_txpower_limit(%struct.ieee80211_hw*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
