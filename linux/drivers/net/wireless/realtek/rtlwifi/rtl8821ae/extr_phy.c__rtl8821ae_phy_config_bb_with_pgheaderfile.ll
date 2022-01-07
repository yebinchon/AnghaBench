; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_config_bb_with_pgheaderfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_config_bb_with_pgheaderfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@RTL8812AE_PHY_REG_ARRAY_PGLEN = common dso_local global i32 0, align 4
@RTL8812AE_PHY_REG_ARRAY_PG = common dso_local global i32* null, align 8
@RTL8821AE_PHY_REG_ARRAY_PGLEN = common dso_local global i32 0, align 4
@RTL8821AE_PHY_REG_ARRAY_PG = common dso_local global i32* null, align 8
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"configtype != BaseBand_Config_PHY_REG\0A\00", align 1
@HARDWARE_TYPE_RTL8821AE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @_rtl8821ae_phy_config_bb_with_pgheaderfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_phy_config_bb_with_pgheaderfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %6, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %20 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %19)
  store %struct.rtl_hal* %20, %struct.rtl_hal** %7, align 8
  %21 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %22 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @RTL8812AE_PHY_REG_ARRAY_PGLEN, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** @RTL8812AE_PHY_REG_ARRAY_PG, align 8
  store i32* %28, i32** %9, align 8
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @RTL8821AE_PHY_REG_ARRAY_PGLEN, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** @RTL8821AE_PHY_REG_ARRAY_PG, align 8
  store i32* %31, i32** %9, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %38 = load i32, i32* @COMP_SEND, align 4
  %39 = load i32, i32* @DBG_TRACE, align 4
  %40 = call i32 @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %204

41:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %200, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %203

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %14, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %15, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 5
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ult i32 %82, -842150451
  br i1 %83, label %84, label %149

84:                                               ; preds = %46
  %85 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %86 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 254
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 4094
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %90
  %97 = call i32 @msleep(i32 50)
  br label %200

98:                                               ; preds = %93, %84
  %99 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %100 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %98
  %105 = load i32, i32* %14, align 4
  %106 = icmp eq i32 %105, 254
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 @msleep(i32 50)
  br label %139

109:                                              ; preds = %104
  %110 = load i32, i32* %14, align 4
  %111 = icmp eq i32 %110, 253
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 @mdelay(i32 5)
  br label %138

114:                                              ; preds = %109
  %115 = load i32, i32* %14, align 4
  %116 = icmp eq i32 %115, 252
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i32 @mdelay(i32 1)
  br label %137

119:                                              ; preds = %114
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %120, 251
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 @udelay(i32 50)
  br label %136

124:                                              ; preds = %119
  %125 = load i32, i32* %14, align 4
  %126 = icmp eq i32 %125, 250
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 @udelay(i32 5)
  br label %135

129:                                              ; preds = %124
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %130, 249
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 @udelay(i32 1)
  br label %134

134:                                              ; preds = %132, %129
  br label %135

135:                                              ; preds = %134, %127
  br label %136

136:                                              ; preds = %135, %122
  br label %137

137:                                              ; preds = %136, %117
  br label %138

138:                                              ; preds = %137, %112
  br label %139

139:                                              ; preds = %138, %107
  br label %140

140:                                              ; preds = %139, %98
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @_rtl8821ae_store_tx_power_by_rate(%struct.ieee80211_hw* %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  br label %200

149:                                              ; preds = %46
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @_rtl8821ae_check_condition(%struct.ieee80211_hw* %150, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %198, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 2
  store i32 %156, i32* %8, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %11, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %12, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %177, %154
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 57005
  br i1 %176, label %177, label %197

177:                                              ; preds = %174
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 3
  store i32 %179, i32* %8, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %11, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %12, align 4
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %13, align 4
  br label %174

197:                                              ; preds = %174
  br label %198

198:                                              ; preds = %197, %149
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %140, %96
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 6
  store i32 %202, i32* %8, align 4
  br label %42

203:                                              ; preds = %42
  store i32 1, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %36
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_rtl8821ae_store_tx_power_by_rate(%struct.ieee80211_hw*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_rtl8821ae_check_condition(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
