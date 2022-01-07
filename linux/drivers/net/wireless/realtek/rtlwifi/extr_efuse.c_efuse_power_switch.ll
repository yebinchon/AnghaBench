; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_power_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_power_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.rtl_hal = type { i64 }

@HARDWARE_TYPE_RTL8192SE = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8192CE = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8192DE = common dso_local global i64 0, align 8
@EFUSE_ACCESS = common dso_local global i64 0, align 8
@SYS_ISO_CTRL = common dso_local global i64 0, align 8
@EFUSE_PWC_EV12V = common dso_local global i64 0, align 8
@SYS_FUNC_EN = common dso_local global i64 0, align 8
@EFUSE_FEN_ELDR = common dso_local global i64 0, align 8
@SYS_CLK = common dso_local global i64 0, align 8
@EFUSE_LOADER_CLK_EN = common dso_local global i64 0, align 8
@EFUSE_ANA8M = common dso_local global i64 0, align 8
@EFUSE_TEST = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@VOLTAGE_V25 = common dso_local global i32 0, align 4
@EFUSE_CLK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efuse_power_switch(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %202

18:                                               ; preds = %3
  %19 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %20 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HARDWARE_TYPE_RTL8192SE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %202

24:                                               ; preds = %18
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HARDWARE_TYPE_RTL8192CE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %32 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HARDWARE_TYPE_RTL8192DE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @EFUSE_ACCESS, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rtl_write_byte(%struct.rtl_priv* %37, i32 %45, i32 105)
  br label %92

47:                                               ; preds = %30, %24
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @SYS_ISO_CTRL, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rtl_read_word(%struct.rtl_priv* %48, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @EFUSE_PWC_EV12V, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %58, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %47
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %71 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @EFUSE_PWC_EV12V, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %82 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @SYS_ISO_CTRL, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @rtl_write_word(%struct.rtl_priv* %80, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %69, %47
  br label %92

92:                                               ; preds = %91, %36
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %95 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @SYS_FUNC_EN, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @rtl_read_word(%struct.rtl_priv* %93, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %105 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @EFUSE_FEN_ELDR, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %103, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %136, label %114

114:                                              ; preds = %92
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %116 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @EFUSE_FEN_ELDR, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %127 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @SYS_FUNC_EN, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @rtl_write_word(%struct.rtl_priv* %125, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %114, %92
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %139 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @SYS_CLK, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @rtl_read_word(%struct.rtl_priv* %137, i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %149 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @EFUSE_LOADER_CLK_EN, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %147, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %136
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %161 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @EFUSE_ANA8M, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %159, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %201, label %170

170:                                              ; preds = %158, %136
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %172 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %171, i32 0, i32 0
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @EFUSE_LOADER_CLK_EN, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %180 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %179, i32 0, i32 0
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @EFUSE_ANA8M, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %178, %186
  %188 = load i32, i32* %10, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %10, align 4
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %191 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %192 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %191, i32 0, i32 0
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @SYS_CLK, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @rtl_write_word(%struct.rtl_priv* %190, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %170, %158
  br label %202

202:                                              ; preds = %201, %18, %3
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %286

205:                                              ; preds = %202
  %206 = load i32, i32* %5, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %268

208:                                              ; preds = %205
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %211 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %210, i32 0, i32 0
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @EFUSE_TEST, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 3
  %219 = call i32 @rtl_read_byte(%struct.rtl_priv* %209, i32 %218)
  store i32 %219, i32* %9, align 4
  %220 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %221 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %240

225:                                              ; preds = %208
  %226 = call i32 @BIT(i32 3)
  %227 = call i32 @BIT(i32 4)
  %228 = or i32 %226, %227
  %229 = call i32 @BIT(i32 5)
  %230 = or i32 %228, %229
  %231 = call i32 @BIT(i32 6)
  %232 = or i32 %230, %231
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %9, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* @VOLTAGE_V25, align 4
  %237 = shl i32 %236, 3
  %238 = load i32, i32* %9, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %9, align 4
  br label %254

240:                                              ; preds = %208
  %241 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %242 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @HARDWARE_TYPE_RTL8192SE, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %240
  %247 = load i32, i32* %9, align 4
  %248 = and i32 %247, 15
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* @VOLTAGE_V25, align 4
  %250 = shl i32 %249, 4
  %251 = load i32, i32* %9, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %9, align 4
  br label %253

253:                                              ; preds = %246, %240
  br label %254

254:                                              ; preds = %253, %225
  %255 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %256 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %257 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %256, i32 0, i32 0
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i64, i64* @EFUSE_TEST, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 3
  %265 = load i32, i32* %9, align 4
  %266 = or i32 %265, 128
  %267 = call i32 @rtl_write_byte(%struct.rtl_priv* %255, i32 %264, i32 %266)
  br label %268

268:                                              ; preds = %254, %205
  %269 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %270 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @HARDWARE_TYPE_RTL8192SE, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %285

274:                                              ; preds = %268
  %275 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %276 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %277 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %276, i32 0, i32 0
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i64, i64* @EFUSE_CLK, align 8
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @rtl_write_byte(%struct.rtl_priv* %275, i32 %283, i32 3)
  br label %285

285:                                              ; preds = %274, %268
  br label %355

286:                                              ; preds = %202
  %287 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %288 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @HARDWARE_TYPE_RTL8192CE, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %309

292:                                              ; preds = %286
  %293 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %294 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @HARDWARE_TYPE_RTL8192DE, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %309

298:                                              ; preds = %292
  %299 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %300 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %301 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %300, i32 0, i32 0
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = load i64, i64* @EFUSE_ACCESS, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @rtl_write_byte(%struct.rtl_priv* %299, i32 %307, i32 0)
  br label %309

309:                                              ; preds = %298, %292, %286
  %310 = load i32, i32* %5, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %337

312:                                              ; preds = %309
  %313 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %314 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %315 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %314, i32 0, i32 0
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* @EFUSE_TEST, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, 3
  %323 = call i32 @rtl_read_byte(%struct.rtl_priv* %313, i32 %322)
  store i32 %323, i32* %9, align 4
  %324 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %325 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %326 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %325, i32 0, i32 0
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i64, i64* @EFUSE_TEST, align 8
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 3
  %334 = load i32, i32* %9, align 4
  %335 = and i32 %334, 127
  %336 = call i32 @rtl_write_byte(%struct.rtl_priv* %324, i32 %333, i32 %335)
  br label %337

337:                                              ; preds = %312, %309
  %338 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %339 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @HARDWARE_TYPE_RTL8192SE, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %354

343:                                              ; preds = %337
  %344 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %345 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %346 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %345, i32 0, i32 0
  %347 = load %struct.TYPE_2__*, %struct.TYPE_2__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = load i64, i64* @EFUSE_CLK, align 8
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @rtl_write_byte(%struct.rtl_priv* %344, i32 %352, i32 2)
  br label %354

354:                                              ; preds = %343, %337
  br label %355

355:                                              ; preds = %354, %285
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
