; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c_rtl8723be_phy_set_txpower_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c_rtl8723be_phy_set_txpower_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DESC92C_RATE1M = common dso_local global i64 0, align 8
@DESC92C_RATE2M = common dso_local global i64 0, align 8
@DESC92C_RATE5_5M = common dso_local global i64 0, align 8
@DESC92C_RATE11M = common dso_local global i64 0, align 8
@DESC92C_RATE6M = common dso_local global i64 0, align 8
@DESC92C_RATE9M = common dso_local global i64 0, align 8
@DESC92C_RATE12M = common dso_local global i64 0, align 8
@DESC92C_RATE18M = common dso_local global i64 0, align 8
@DESC92C_RATE24M = common dso_local global i64 0, align 8
@DESC92C_RATE36M = common dso_local global i64 0, align 8
@DESC92C_RATE48M = common dso_local global i64 0, align 8
@DESC92C_RATE54M = common dso_local global i64 0, align 8
@DESC92C_RATEMCS0 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS1 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS2 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS3 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS4 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS5 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS6 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS7 = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723be_phy_set_txpower_level(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_efuse*, align 8
  %6 = alloca [4 x i64], align 16
  %7 = alloca [8 x i64], align 16
  %8 = alloca [8 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.TYPE_5__* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_efuse* @rtl_efuse(%struct.TYPE_5__* %12)
  store %struct.rtl_efuse* %13, %struct.rtl_efuse** %5, align 8
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %15 = load i64, i64* @DESC92C_RATE1M, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 1
  %17 = load i64, i64* @DESC92C_RATE2M, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 1
  %19 = load i64, i64* @DESC92C_RATE5_5M, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 1
  %21 = load i64, i64* @DESC92C_RATE11M, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 0
  %23 = load i64, i64* @DESC92C_RATE6M, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 1
  %25 = load i64, i64* @DESC92C_RATE9M, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 1
  %27 = load i64, i64* @DESC92C_RATE12M, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 1
  %29 = load i64, i64* @DESC92C_RATE18M, align 8
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 1
  %31 = load i64, i64* @DESC92C_RATE24M, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 1
  %33 = load i64, i64* @DESC92C_RATE36M, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 1
  %35 = load i64, i64* @DESC92C_RATE48M, align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 1
  %37 = load i64, i64* @DESC92C_RATE54M, align 8
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %39 = load i64, i64* @DESC92C_RATEMCS0, align 8
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 1
  %41 = load i64, i64* @DESC92C_RATEMCS1, align 8
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 1
  %43 = load i64, i64* @DESC92C_RATEMCS2, align 8
  store i64 %43, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 1
  %45 = load i64, i64* @DESC92C_RATEMCS3, align 8
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 1
  %47 = load i64, i64* @DESC92C_RATEMCS4, align 8
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 1
  %49 = load i64, i64* @DESC92C_RATEMCS5, align 8
  store i64 %49, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 1
  %51 = load i64, i64* @DESC92C_RATEMCS6, align 8
  store i64 %51, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 1
  %53 = load i64, i64* @DESC92C_RATEMCS7, align 8
  store i64 %53, i64* %52, align 8
  %54 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %55 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %2
  br label %146

59:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %63 = call i64 @ARRAY_SIZE(i64* %62)
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %67 = load i32, i32* @RF90_PATH_A, align 4
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %72 = call %struct.TYPE_5__* @rtl_priv(%struct.ieee80211_hw* %71)
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %4, align 8
  %77 = call i64 @_rtl8723be_get_txpower_index(%struct.ieee80211_hw* %66, i32 %67, i64 %70, i32 %75, i64 %76)
  store i64 %77, i64* %10, align 8
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* @RF90_PATH_A, align 4
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @_rtl8723be_phy_set_txpower_index(%struct.ieee80211_hw* %78, i64 %79, i32 %80, i64 %83)
  br label %85

85:                                               ; preds = %65
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %60

88:                                               ; preds = %60
  store i64 0, i64* %9, align 8
  br label %89

89:                                               ; preds = %114, %88
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 0
  %92 = call i64 @ARRAY_SIZE(i64* %91)
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %89
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %96 = load i32, i32* @RF90_PATH_A, align 4
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %101 = call %struct.TYPE_5__* @rtl_priv(%struct.ieee80211_hw* %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %4, align 8
  %106 = call i64 @_rtl8723be_get_txpower_index(%struct.ieee80211_hw* %95, i32 %96, i64 %99, i32 %104, i64 %105)
  store i64 %106, i64* %10, align 8
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* @RF90_PATH_A, align 4
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @_rtl8723be_phy_set_txpower_index(%struct.ieee80211_hw* %107, i64 %108, i32 %109, i64 %112)
  br label %114

114:                                              ; preds = %94
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %9, align 8
  br label %89

117:                                              ; preds = %89
  store i64 0, i64* %9, align 8
  br label %118

118:                                              ; preds = %143, %117
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %121 = call i64 @ARRAY_SIZE(i64* %120)
  %122 = icmp ult i64 %119, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %118
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %125 = load i32, i32* @RF90_PATH_A, align 4
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %130 = call %struct.TYPE_5__* @rtl_priv(%struct.ieee80211_hw* %129)
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* %4, align 8
  %135 = call i64 @_rtl8723be_get_txpower_index(%struct.ieee80211_hw* %124, i32 %125, i64 %128, i32 %133, i64 %134)
  store i64 %135, i64* %10, align 8
  %136 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i32, i32* @RF90_PATH_A, align 4
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @_rtl8723be_phy_set_txpower_index(%struct.ieee80211_hw* %136, i64 %137, i32 %138, i64 %141)
  br label %143

143:                                              ; preds = %123
  %144 = load i64, i64* %9, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %9, align 8
  br label %118

146:                                              ; preds = %58, %118
  ret void
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @_rtl8723be_get_txpower_index(%struct.ieee80211_hw*, i32, i64, i32, i64) #1

declare dso_local i32 @_rtl8723be_phy_set_txpower_index(%struct.ieee80211_hw*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
