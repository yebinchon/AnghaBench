; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c__rtl92cu_phy_config_bb_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c__rtl92cu_phy_config_bb_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.rtl_hal = type { i32 }

@AGCTAB_2T = common dso_local global i64 0, align 8
@PHY_REG_2T = common dso_local global i64 0, align 8
@AGCTAB_1T = common dso_local global i64 0, align 8
@PHY_REG_1T = common dso_local global i64 0, align 8
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@MASKDWORD = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"The phy_regarray_table[0] is %x Rtl819XPHY_REGARRAY[1] is %x\0A\00", align 1
@BASEBAND_CONFIG_AGC_TAB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"The agctab_array_table[0] is %x Rtl819XPHY_REGARRAY[1] is %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtl92cu_phy_config_bb_with_headerfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.rtl_hal*, align 8
  %12 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
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
  br i1 %24, label %25, label %54

25:                                               ; preds = %2
  %26 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %27 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @AGCTAB_2T, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %34 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* @AGCTAB_2T, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  %40 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %41 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* @PHY_REG_2T, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %8, align 4
  %47 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %48 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* @PHY_REG_2T, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %6, align 8
  br label %83

54:                                               ; preds = %2
  %55 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %56 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* @AGCTAB_1T, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  %62 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %63 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* @AGCTAB_1T, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %7, align 8
  %69 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %70 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* @PHY_REG_1T, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %8, align 4
  %76 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %77 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* @PHY_REG_1T, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %54, %25
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %133

87:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %129, %87
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %132

92:                                               ; preds = %88
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @rtl_addr_delay(i32 %97)
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MASKDWORD, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %99, i32 %104, i32 %105, i32 %111)
  %113 = call i32 @udelay(i32 1)
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %115 = load i32, i32* @COMP_INIT, align 4
  %116 = load i32, i32* @DBG_TRACE, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @RT_TRACE(%struct.rtl_priv* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %127)
  br label %129

129:                                              ; preds = %92
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 2
  store i32 %131, i32* %5, align 4
  br label %88

132:                                              ; preds = %88
  br label %178

133:                                              ; preds = %83
  %134 = load i64, i64* %4, align 8
  %135 = load i64, i64* @BASEBAND_CONFIG_AGC_TAB, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %177

137:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %173, %137
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %176

142:                                              ; preds = %138
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MASKDWORD, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %143, i32 %148, i32 %149, i32 %155)
  %157 = call i32 @udelay(i32 1)
  %158 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %159 = load i32, i32* @COMP_INIT, align 4
  %160 = load i32, i32* @DBG_TRACE, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @RT_TRACE(%struct.rtl_priv* %158, i32 %159, i32 %160, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %165, i32 %171)
  br label %173

173:                                              ; preds = %142
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 2
  store i32 %175, i32* %5, align 4
  br label %138

176:                                              ; preds = %138
  br label %177

177:                                              ; preds = %176, %133
  br label %178

178:                                              ; preds = %177, %132
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i64 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @rtl_addr_delay(i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
