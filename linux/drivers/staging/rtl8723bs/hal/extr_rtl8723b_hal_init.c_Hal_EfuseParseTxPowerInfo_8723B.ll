; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_EfuseParseTxPowerInfo_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_EfuseParseTxPowerInfo_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32, i32**, i32**, i32**, i32**, i32**, i32** }
%struct.TxPowerInfo24G = type { i32**, i32**, i32**, i32**, i32**, i32** }

@MAX_RF_PATH = common dso_local global i32 0, align 4
@CHANNEL_MAX_NUMBER = common dso_local global i32 0, align 4
@MAX_TX_COUNT = common dso_local global i32 0, align 4
@EEPROM_RF_BOARD_OPTION_8723B = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_BOARD_OPTION = common dso_local global i32 0, align 4
@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EEPROMRegulatory = 0x%x\0A\00", align 1
@_drv_info_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_EfuseParseTxPowerInfo_8723B(%struct.adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal_com_data*, align 8
  %8 = alloca %struct.TxPowerInfo24G, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %13)
  store %struct.hal_com_data* %14, %struct.hal_com_data** %7, align 8
  store i32 1, i32* %11, align 4
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @Hal_ReadPowerValueFromPROM_8723B(%struct.adapter* %15, %struct.TxPowerInfo24G* %8, i32* %16, i32 %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %208, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @MAX_RF_PATH, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %211

23:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %115, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @CHANNEL_MAX_NUMBER, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %118

28:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @Hal_GetChnlGroup8723B(i32 %30, i32* %12)
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %34, label %73

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.TxPowerInfo24G, %struct.TxPowerInfo24G* %8, i32 0, i32 5
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %44 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %43, i32 0, i32 6
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %42, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TxPowerInfo24G, %struct.TxPowerInfo24G* %8, i32 0, i32 4
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %64 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %63, i32 0, i32 5
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %62, i32* %72, align 4
  br label %114

73:                                               ; preds = %28
  %74 = getelementptr inbounds %struct.TxPowerInfo24G, %struct.TxPowerInfo24G* %8, i32 0, i32 5
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %85 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %84, i32 0, i32 6
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %83, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TxPowerInfo24G, %struct.TxPowerInfo24G* %8, i32 0, i32 4
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %105 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %104, i32 0, i32 5
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %103, i32* %113, align 4
  br label %114

114:                                              ; preds = %73, %34
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %24

118:                                              ; preds = %24
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %204, %118
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @MAX_TX_COUNT, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %207

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.TxPowerInfo24G, %struct.TxPowerInfo24G* %8, i32 0, i32 3
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %135 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %134, i32 0, i32 4
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %133, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TxPowerInfo24G, %struct.TxPowerInfo24G* %8, i32 0, i32 2
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %155 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %154, i32 0, i32 3
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %153, i32* %163, align 4
  %164 = getelementptr inbounds %struct.TxPowerInfo24G, %struct.TxPowerInfo24G* %8, i32 0, i32 1
  %165 = load i32**, i32*** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %175 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %174, i32 0, i32 2
  %176 = load i32**, i32*** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %173, i32* %183, align 4
  %184 = getelementptr inbounds %struct.TxPowerInfo24G, %struct.TxPowerInfo24G* %8, i32 0, i32 0
  %185 = load i32**, i32*** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %195 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %194, i32 0, i32 1
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %193, i32* %203, align 4
  br label %204

204:                                              ; preds = %123
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %119

207:                                              ; preds = %119
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %19

211:                                              ; preds = %19
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %233, label %214

214:                                              ; preds = %211
  %215 = load i32*, i32** %5, align 8
  %216 = load i64, i64* @EEPROM_RF_BOARD_OPTION_8723B, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, 7
  %220 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %221 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load i32*, i32** %5, align 8
  %223 = load i64, i64* @EEPROM_RF_BOARD_OPTION_8723B, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 255
  br i1 %226, label %227, label %232

227:                                              ; preds = %214
  %228 = load i32, i32* @EEPROM_DEFAULT_BOARD_OPTION, align 4
  %229 = and i32 %228, 7
  %230 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %231 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %227, %214
  br label %236

233:                                              ; preds = %211
  %234 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %235 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %234, i32 0, i32 0
  store i32 0, i32* %235, align 8
  br label %236

236:                                              ; preds = %233, %232
  %237 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %238 = load i32, i32* @_drv_notice_, align 4
  %239 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %240 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to i8*
  %244 = call i32 @RT_TRACE(i32 %237, i32 %238, i8* %243)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @Hal_ReadPowerValueFromPROM_8723B(%struct.adapter*, %struct.TxPowerInfo24G*, i32*, i32) #1

declare dso_local i32 @Hal_GetChnlGroup8723B(i32, i32*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
