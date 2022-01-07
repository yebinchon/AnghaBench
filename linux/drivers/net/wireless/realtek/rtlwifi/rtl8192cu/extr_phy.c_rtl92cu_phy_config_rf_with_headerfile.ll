; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c_rtl92cu_phy_config_rf_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c_rtl92cu_phy_config_rf_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.rtl_hal = type { i32 }

@RADIOA_2T = common dso_local global i64 0, align 8
@RADIOB_2T = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Radio_A:RTL8192CURADIOA_2TARRAY\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Radio_B:RTL8192CU_RADIOB_2TARRAY\0A\00", align 1
@RADIOA_1T = common dso_local global i64 0, align 8
@RADIOB_1T = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Radio_A:RTL8192CU_RADIOA_1TARRAY\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Radio_B:RTL8192CU_RADIOB_1TARRAY\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Radio No %x\0A\00", align 1
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92cu_phy_config_rf_with_headerfile(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.rtl_hal*, align 8
  %12 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %10, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %11, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  store %struct.rtl_phy* %19, %struct.rtl_phy** %12, align 8
  %20 = load %struct.rtl_hal*, %struct.rtl_hal** %11, align 8
  %21 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_92C_SERIAL(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %2
  %26 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %27 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @RADIOA_2T, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %34 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* @RADIOA_2T, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %6, align 8
  %40 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %41 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* @RADIOB_2T, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  %47 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %48 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* @RADIOB_2T, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %7, align 8
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %55 = load i32, i32* @COMP_INIT, align 4
  %56 = load i32, i32* @DBG_TRACE, align 4
  %57 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %59 = load i32, i32* @COMP_INIT, align 4
  %60 = load i32, i32* @DBG_TRACE, align 4
  %61 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %99

62:                                               ; preds = %2
  %63 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %64 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* @RADIOA_1T, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %8, align 4
  %70 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %71 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* @RADIOA_1T, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %6, align 8
  %77 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %78 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* @RADIOB_1T, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %9, align 4
  %84 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %85 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* @RADIOB_1T, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %7, align 8
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %92 = load i32, i32* @COMP_INIT, align 4
  %93 = load i32, i32* @DBG_TRACE, align 4
  %94 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %91, i32 %92, i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %96 = load i32, i32* @COMP_INIT, align 4
  %97 = load i32, i32* @DBG_TRACE, align 4
  %98 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %62, %25
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %101 = load i32, i32* @COMP_INIT, align 4
  %102 = load i32, i32* @DBG_TRACE, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %4, align 4
  switch i32 %105, label %159 [
    i32 131, label %106
    i32 130, label %131
    i32 129, label %156
    i32 128, label %156
  ]

106:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %127, %106
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @rtl_rfreg_delay(%struct.ieee80211_hw* %112, i32 %113, i32 %118, i32 %119, i32 %125)
  br label %127

127:                                              ; preds = %111
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 2
  store i32 %129, i32* %5, align 4
  br label %107

130:                                              ; preds = %107
  br label %160

131:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %152, %131
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %132
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @rtl_rfreg_delay(%struct.ieee80211_hw* %137, i32 %138, i32 %143, i32 %144, i32 %150)
  br label %152

152:                                              ; preds = %136
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 2
  store i32 %154, i32* %5, align 4
  br label %132

155:                                              ; preds = %132
  br label %160

156:                                              ; preds = %99, %99
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  br label %160

159:                                              ; preds = %99
  br label %160

160:                                              ; preds = %159, %156, %155, %130
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i64 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_rfreg_delay(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
