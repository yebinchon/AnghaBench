; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_config_bb_with_headerfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_config_bb_with_headerfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RTL8723E_AGCTAB_1TARRAYLENGTH = common dso_local global i32 0, align 4
@RTL8723EAGCTAB_1TARRAY = common dso_local global i32* null, align 8
@RTL8723E_PHY_REG_1TARRAY_LENGTH = common dso_local global i32 0, align 4
@RTL8723EPHY_REG_1TARRAY = common dso_local global i32* null, align 8
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@MASKDWORD = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"The phy_regarray_table[0] is %x Rtl819XPHY_REGArray[1] is %x\0A\00", align 1
@BASEBAND_CONFIG_AGC_TAB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"The agctab_array_table[0] is %x Rtl819XPHY_REGArray[1] is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @_rtl8723e_phy_config_bb_with_headerfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723e_phy_config_bb_with_headerfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %10, align 8
  %13 = load i32, i32* @RTL8723E_AGCTAB_1TARRAYLENGTH, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** @RTL8723EAGCTAB_1TARRAY, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @RTL8723E_PHY_REG_1TARRAY_LENGTH, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** @RTL8723EPHY_REG_1TARRAY, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %119

20:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %115, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %118

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 254
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @mdelay(i32 50)
  br label %84

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 253
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @mdelay(i32 5)
  br label %83

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 252
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @mdelay(i32 1)
  br label %82

52:                                               ; preds = %43
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 251
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @udelay(i32 50)
  br label %81

61:                                               ; preds = %52
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 250
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 @udelay(i32 5)
  br label %80

70:                                               ; preds = %61
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 249
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = call i32 @udelay(i32 1)
  br label %79

79:                                               ; preds = %77, %70
  br label %80

80:                                               ; preds = %79, %68
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %41
  br label %84

84:                                               ; preds = %83, %32
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MASKDWORD, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %85, i32 %90, i32 %91, i32 %97)
  %99 = call i32 @udelay(i32 1)
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %101 = load i32, i32* @COMP_INIT, align 4
  %102 = load i32, i32* @DBG_TRACE, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @RT_TRACE(%struct.rtl_priv* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %84
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %5, align 4
  br label %21

118:                                              ; preds = %21
  br label %164

119:                                              ; preds = %2
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* @BASEBAND_CONFIG_AGC_TAB, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %163

123:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %159, %123
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %162

128:                                              ; preds = %124
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MASKDWORD, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %129, i32 %134, i32 %135, i32 %141)
  %143 = call i32 @udelay(i32 1)
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %145 = load i32, i32* @COMP_INIT, align 4
  %146 = load i32, i32* @DBG_TRACE, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @RT_TRACE(%struct.rtl_priv* %144, i32 %145, i32 %146, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %157)
  br label %159

159:                                              ; preds = %128
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 2
  store i32 %161, i32* %5, align 4
  br label %124

162:                                              ; preds = %124
  br label %163

163:                                              ; preds = %162, %119
  br label %164

164:                                              ; preds = %163, %118
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
