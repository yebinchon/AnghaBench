; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_ReadTxPowerInfo88E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_ReadTxPowerInfo88E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i32, i64, i32**, i32**, i32**, i32**, i32**, i32** }
%struct.txpowerinfo24g = type { i32**, i32**, i32**, i32**, i32**, i32** }

@CHANNEL_MAX_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"======= Path %d, Channel %d =======\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Index24G_CCK_Base[%d][%d] = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Index24G_BW40_Base[%d][%d] = 0x%x\0A\00", align 1
@MAX_TX_COUNT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"======= TxCount %d =======\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"CCK_24G_Diff[%d][%d] = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"OFDM_24G_Diff[%d][%d] = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"BW20_24G_Diff[%d][%d] = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"BW40_24G_Diff[%d][%d] = %d\0A\00", align 1
@EEPROM_RF_BOARD_OPTION_88E = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_BOARD_OPTION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"EEPROMRegulatory = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_ReadTxPowerInfo88E(%struct.adapter* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal_data_8188e*, align 8
  %8 = alloca %struct.txpowerinfo24g, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  store %struct.hal_data_8188e* %14, %struct.hal_data_8188e** %7, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @Hal_ReadPowerValueFromPROM_8188E(%struct.txpowerinfo24g* %8, i64* %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %22 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %3
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %99, %23
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @CHANNEL_MAX_NUMBER, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %102

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @Hal_GetChnlGroup88E(i64 %29, i64* %10)
  %31 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %8, i32 0, i32 5
  %32 = load i32**, i32*** %31, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %39 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %38, i32 0, i32 7
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %37, i32* %44, align 4
  %45 = load i64, i64* %9, align 8
  %46 = icmp eq i64 %45, 14
  br i1 %46, label %47, label %61

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %8, i32 0, i32 4
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %55 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %54, i32 0, i32 6
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %53, i32* %60, align 4
  br label %76

61:                                               ; preds = %28
  %62 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %8, i32 0, i32 4
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %70 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %69, i32 0, i32 6
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %68, i32* %75, align 4
  br label %76

76:                                               ; preds = %61, %47
  %77 = load i64, i64* %9, align 8
  %78 = call i32 (i8*, i64, ...) @DBG_88E(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 0, i64 %77)
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %81 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %80, i32 0, i32 7
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i64, ...) @DBG_88E(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 0, i64 %79, i32 %87)
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %91 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %90, i32 0, i32 6
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i64, ...) @DBG_88E(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 0, i64 %89, i32 %97)
  br label %99

99:                                               ; preds = %76
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %9, align 8
  br label %24

102:                                              ; preds = %24
  store i64 0, i64* %11, align 8
  br label %103

103:                                              ; preds = %206, %102
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @MAX_TX_COUNT, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %209

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %8, i32 0, i32 3
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %116 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %115, i32 0, i32 5
  %117 = load i32**, i32*** %116, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32 %114, i32* %121, align 4
  %122 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %8, i32 0, i32 2
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %11, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %130 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %129, i32 0, i32 4
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %128, i32* %135, align 4
  %136 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %8, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %144 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %143, i32 0, i32 3
  %145 = load i32**, i32*** %144, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 %142, i32* %149, align 4
  %150 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %8, i32 0, i32 0
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %158 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %157, i32 0, i32 2
  %159 = load i32**, i32*** %158, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* %11, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32 %156, i32* %163, align 4
  %164 = load i64, i64* %11, align 8
  %165 = call i32 (i8*, i64, ...) @DBG_88E(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %164)
  %166 = load i64, i64* %11, align 8
  %167 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %168 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %167, i32 0, i32 5
  %169 = load i32**, i32*** %168, align 8
  %170 = getelementptr inbounds i32*, i32** %169, i64 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %11, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i8*, i64, ...) @DBG_88E(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 0, i64 %166, i32 %174)
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %178 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %177, i32 0, i32 4
  %179 = load i32**, i32*** %178, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* %11, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i8*, i64, ...) @DBG_88E(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 0, i64 %176, i32 %184)
  %186 = load i64, i64* %11, align 8
  %187 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %188 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %187, i32 0, i32 3
  %189 = load i32**, i32*** %188, align 8
  %190 = getelementptr inbounds i32*, i32** %189, i64 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, i64, ...) @DBG_88E(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 0, i64 %186, i32 %194)
  %196 = load i64, i64* %11, align 8
  %197 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %198 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %197, i32 0, i32 2
  %199 = load i32**, i32*** %198, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* %11, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, i64, ...) @DBG_88E(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 0, i64 %196, i32 %204)
  br label %206

206:                                              ; preds = %107
  %207 = load i64, i64* %11, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %11, align 8
  br label %103

209:                                              ; preds = %103
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %232, label %212

212:                                              ; preds = %209
  %213 = load i64*, i64** %5, align 8
  %214 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %215 = getelementptr inbounds i64, i64* %213, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = and i64 %216, 7
  %218 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %219 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %218, i32 0, i32 1
  store i64 %217, i64* %219, align 8
  %220 = load i64*, i64** %5, align 8
  %221 = load i64, i64* @EEPROM_RF_BOARD_OPTION_88E, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 255
  br i1 %224, label %225, label %231

225:                                              ; preds = %212
  %226 = load i32, i32* @EEPROM_DEFAULT_BOARD_OPTION, align 4
  %227 = and i32 %226, 7
  %228 = sext i32 %227 to i64
  %229 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %230 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  br label %231

231:                                              ; preds = %225, %212
  br label %235

232:                                              ; preds = %209
  %233 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %234 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %233, i32 0, i32 1
  store i64 0, i64* %234, align 8
  br label %235

235:                                              ; preds = %232, %231
  %236 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %237 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = call i32 (i8*, i64, ...) @DBG_88E(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 %238)
  ret void
}

declare dso_local i32 @Hal_ReadPowerValueFromPROM_8188E(%struct.txpowerinfo24g*, i64*, i32) #1

declare dso_local i32 @Hal_GetChnlGroup88E(i64, i64*) #1

declare dso_local i32 @DBG_88E(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
