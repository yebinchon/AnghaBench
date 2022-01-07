; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_read_txpower_info_from_hwpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_read_txpower_info_from_hwpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32, i32, i32*, i32, i32**, i32**, i32**, i32** }
%struct.txpower_info_2g = type { i32**, i32**, i32**, i32** }
%struct.txpower_info_5g = type { i32 }

@FINIT = common dso_local global i32 0, align 4
@INIT_TXPOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"RF(%d)-Ch(%d) [CCK / HT40_1S ] = [0x%x / 0x%x ]\0A\00", align 1
@EEPROM_THERMAL_METER_88E = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_THERMALMETER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"thermalmeter = 0x%x\0A\00", align 1
@EEPROM_RF_BOARD_OPTION_88E = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*)* @_rtl88ee_read_txpower_info_from_hwpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88ee_read_txpower_info_from_hwpg(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_efuse*, align 8
  %9 = alloca %struct.txpower_info_2g, align 8
  %10 = alloca %struct.txpower_info_5g, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %7, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %17)
  store %struct.rtl_efuse* %18, %struct.rtl_efuse** %8, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @read_power_value_fromprom(%struct.ieee80211_hw* %19, %struct.txpower_info_2g* %9, %struct.txpower_info_5g* %10, i32 %20, i32* %21)
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %150, %3
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %153

26:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %110, %26
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 14
  br i1 %29, label %30, label %113

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @_rtl88e_get_chnl_group(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 3
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %45 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %44, i32 0, i32 5
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %43, i32* %53, align 4
  %54 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %65 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %64, i32 0, i32 4
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %63, i32* %73, align 4
  %74 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 1
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %83 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %82, i32 0, i32 7
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %81, i32* %91, align 4
  %92 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 0
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %101 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %100, i32 0, i32 6
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %99, i32* %109, align 4
  br label %110

110:                                              ; preds = %30
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %27

113:                                              ; preds = %27
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %146, %113
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %115, 14
  br i1 %116, label %117, label %149

117:                                              ; preds = %114
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %119 = load i32, i32* @FINIT, align 4
  %120 = load i32, i32* @INIT_TXPOWER, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %124 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %123, i32 0, i32 5
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %135 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %134, i32 0, i32 4
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %122, i32 %133, i32 %144)
  br label %146

146:                                              ; preds = %117
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %114

149:                                              ; preds = %114
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %23

153:                                              ; preds = %23
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  %157 = load i32*, i32** %6, align 8
  %158 = load i64, i64* @EEPROM_THERMAL_METER_88E, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %162 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  br label %168

163:                                              ; preds = %153
  %164 = load i8*, i8** @EEPROM_DEFAULT_THERMALMETER, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %167 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %163, %156
  %169 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %170 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 255
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173, %168
  %177 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %178 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  %179 = load i8*, i8** @EEPROM_DEFAULT_THERMALMETER, align 8
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %182 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %176, %173
  %184 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %185 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %188 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  store i32 %186, i32* %190, align 4
  %191 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %192 = load i32, i32* @FINIT, align 4
  %193 = load i32, i32* @INIT_TXPOWER, align 4
  %194 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %195 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %5, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %217, label %200

200:                                              ; preds = %183
  %201 = load i32*, i32** %6, align 8
  %202 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 7
  %206 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %207 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 8
  %208 = load i32*, i32** %6, align 8
  %209 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 255
  br i1 %212, label %213, label %216

213:                                              ; preds = %200
  %214 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %215 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %214, i32 0, i32 3
  store i32 0, i32* %215, align 8
  br label %216

216:                                              ; preds = %213, %200
  br label %220

217:                                              ; preds = %183
  %218 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %219 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %218, i32 0, i32 3
  store i32 0, i32* %219, align 8
  br label %220

220:                                              ; preds = %217, %216
  %221 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %222 = load i32, i32* @FINIT, align 4
  %223 = load i32, i32* @INIT_TXPOWER, align 4
  %224 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %225 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RTPRINT(%struct.rtl_priv* %221, i32 %222, i32 %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %226)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @read_power_value_fromprom(%struct.ieee80211_hw*, %struct.txpower_info_2g*, %struct.txpower_info_5g*, i32, i32*) #1

declare dso_local i32 @_rtl88e_get_chnl_group(i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
