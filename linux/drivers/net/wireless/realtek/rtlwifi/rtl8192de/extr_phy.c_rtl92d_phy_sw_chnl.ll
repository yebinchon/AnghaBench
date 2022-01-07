; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_sw_chnl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_sw_chnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_phy = type { i32, i32, i64, i64, i64, i64 }
%struct.rtl_hal = type { i64, i64, i32 }

@COMP_CHAN = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"sw_chnl_inprogress false driver sleep or unload\0A\00", align 1
@SINGLEMAC_SINGLEPHY = common dso_local global i64 0, align 8
@BAND_ON_BOTH = common dso_local global i64 0, align 8
@RFPGA0_XAB_RFPARAMETER = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"rtl8192de: 5G but channel<=14\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"rtl8192de: 2G but channel>14\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"rtl8192de: Invalid WirelessMode(%#x)!!\0A\00", align 1
@COMP_SCAN = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"switch to channel%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"<==\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92d_phy_sw_chnl(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_phy*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %4, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 1
  store %struct.rtl_phy* %15, %struct.rtl_phy** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %6, align 8
  store i64 1000, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %19 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %20 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %189

27:                                               ; preds = %1
  %28 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %189

33:                                               ; preds = %27
  %34 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %35 = call i64 @is_hal_stop(%struct.rtl_hal* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = call i64 @RT_CANNOT_IO(%struct.ieee80211_hw* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %33
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %43 = load i32, i32* @COMP_CHAN, align 4
  %44 = load i32, i32* @DBG_LOUD, align 4
  %45 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %189

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %58, %46
  %48 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %49 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp slt i64 %53, %54
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i1 [ false, %47 ], [ %55, %52 ]
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = call i32 @mdelay(i64 50)
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, 50
  store i64 %61, i64* %9, align 8
  br label %47

62:                                               ; preds = %56
  %63 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %64 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SINGLEMAC_SINGLEPHY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %62
  %69 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %70 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BAND_ON_BOTH, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %68
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %76 = load i32, i32* @RFPGA0_XAB_RFPARAMETER, align 4
  %77 = load i32, i32* @MASKDWORD, align 4
  %78 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %75, i32 %76, i32 %77)
  store i64 %78, i64* %11, align 8
  %79 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %80 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 14
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load i64, i64* %11, align 8
  %85 = call i64 @BIT(i32 0)
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %90 = call i32 @rtl92d_phy_switch_wirelessband(%struct.ieee80211_hw* %89, i32 128)
  br label %105

91:                                               ; preds = %83, %74
  %92 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %93 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sle i32 %94, 14
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i64, i64* %11, align 8
  %98 = call i64 @BIT(i32 0)
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %103 = call i32 @rtl92d_phy_switch_wirelessband(%struct.ieee80211_hw* %102, i32 129)
  br label %104

104:                                              ; preds = %101, %96, %91
  br label %105

105:                                              ; preds = %104, %88
  br label %106

106:                                              ; preds = %105, %68, %62
  %107 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %108 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %128 [
    i32 128, label %110
    i32 129, label %119
  ]

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = icmp sle i32 %111, 14
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %189

114:                                              ; preds = %110
  %115 = load i32, i32* %10, align 4
  %116 = icmp sle i32 %115, 14
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %134

119:                                              ; preds = %106
  %120 = load i32, i32* %10, align 4
  %121 = icmp sgt i32 %120, 14
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %189

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  %125 = icmp sgt i32 %124, 14
  %126 = zext i1 %125 to i32
  %127 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %134

128:                                              ; preds = %106
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %130 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, i8*, ...) @WARN_ONCE(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %128, %123, %114
  %135 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %136 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 1, i32* %10, align 4
  br label %140

140:                                              ; preds = %139, %134
  %141 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %142 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %144 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %146 = load i32, i32* @COMP_SCAN, align 4
  %147 = load i32, i32* @DBG_TRACE, align 4
  %148 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %149 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %181, %140
  %153 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %154 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  br label %182

158:                                              ; preds = %152
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %160 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %161 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %164 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %163, i32 0, i32 3
  %165 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %166 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %165, i32 0, i32 2
  %167 = call i32 @_rtl92d_phy_sw_chnl_step_by_step(%struct.ieee80211_hw* %159, i32 %162, i64* %164, i64* %166, i64* %7)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %158
  %170 = load i64, i64* %7, align 8
  %171 = icmp sgt i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i64, i64* %7, align 8
  %174 = call i32 @mdelay(i64 %173)
  br label %176

175:                                              ; preds = %169
  br label %181

176:                                              ; preds = %172
  br label %180

177:                                              ; preds = %158
  %178 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %179 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %178, i32 0, i32 1
  store i32 0, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %176
  br label %182

181:                                              ; preds = %175
  br i1 true, label %152, label %182

182:                                              ; preds = %181, %180, %157
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %184 = load i32, i32* @COMP_SCAN, align 4
  %185 = load i32, i32* @DBG_TRACE, align 4
  %186 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %183, i32 %184, i32 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %187 = load %struct.rtl_phy*, %struct.rtl_phy** %5, align 8
  %188 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %187, i32 0, i32 1
  store i32 0, i32* %188, align 4
  store i32 1, i32* %2, align 4
  br label %189

189:                                              ; preds = %182, %122, %113, %41, %32, %26
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i64 @is_hal_stop(%struct.rtl_hal*) #1

declare dso_local i64 @RT_CANNOT_IO(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @mdelay(i64) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @rtl92d_phy_switch_wirelessband(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, ...) #1

declare dso_local i32 @_rtl92d_phy_sw_chnl_step_by_step(%struct.ieee80211_hw*, i32, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
