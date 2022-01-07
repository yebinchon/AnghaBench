; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_set_channel_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse }
%struct.rtw_efuse = type { i32 }

@REG_RXPSEL = common dso_local global i32 0, align 4
@REG_CCK_CHECK = common dso_local global i32 0, align 4
@REG_ENTXCCK = common dso_local global i32 0, align 4
@REG_RXCCAMSK = common dso_local global i32 0, align 4
@REG_ACGG2TBL = common dso_local global i32 0, align 4
@REG_CLKTRK = common dso_local global i32 0, align 4
@REG_TXSF2 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@REG_TXSF6 = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@REG_RFEINV = common dso_local global i32 0, align 4
@REG_ADCCLK = common dso_local global i32 0, align 4
@REG_ADC160 = common dso_local global i32 0, align 4
@REG_RXSB = common dso_local global i32 0, align 4
@REG_L1PKWT = common dso_local global i32 0, align 4
@REG_ADC40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32)* @rtw8822b_set_channel_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_set_channel_bb(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtw_efuse*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 0
  store %struct.rtw_efuse* %13, %struct.rtw_efuse** %9, align 8
  %14 = load %struct.rtw_efuse*, %struct.rtw_efuse** %9, align 8
  %15 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 14
  br i1 %18, label %19, label %65

19:                                               ; preds = %4
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %21 = load i32, i32* @REG_RXPSEL, align 4
  %22 = call i32 @BIT(i32 28)
  %23 = call i32 @rtw_write32_mask(%struct.rtw_dev* %20, i32 %21, i32 %22, i32 1)
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %25 = load i32, i32* @REG_CCK_CHECK, align 4
  %26 = call i32 @BIT(i32 7)
  %27 = call i32 @rtw_write32_mask(%struct.rtw_dev* %24, i32 %25, i32 %26, i32 0)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %29 = load i32, i32* @REG_ENTXCCK, align 4
  %30 = call i32 @BIT(i32 18)
  %31 = call i32 @rtw_write32_mask(%struct.rtw_dev* %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %33 = load i32, i32* @REG_RXCCAMSK, align 4
  %34 = call i32 @rtw_write32_mask(%struct.rtw_dev* %32, i32 %33, i32 64512, i32 15)
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %36 = load i32, i32* @REG_ACGG2TBL, align 4
  %37 = call i32 @rtw_write32_mask(%struct.rtw_dev* %35, i32 %36, i32 31, i32 0)
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %39 = load i32, i32* @REG_CLKTRK, align 4
  %40 = call i32 @rtw_write32_mask(%struct.rtw_dev* %38, i32 %39, i32 536739840, i32 2410)
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 14
  br i1 %42, label %43, label %52

43:                                               ; preds = %19
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %45 = load i32, i32* @REG_TXSF2, align 4
  %46 = load i32, i32* @MASKDWORD, align 4
  %47 = call i32 @rtw_write32_mask(%struct.rtw_dev* %44, i32 %45, i32 %46, i32 25975)
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %49 = load i32, i32* @REG_TXSF6, align 4
  %50 = load i32, i32* @MASKLWORD, align 4
  %51 = call i32 @rtw_write32_mask(%struct.rtw_dev* %48, i32 %49, i32 %50, i32 0)
  br label %61

52:                                               ; preds = %19
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %54 = load i32, i32* @REG_TXSF2, align 4
  %55 = load i32, i32* @MASKDWORD, align 4
  %56 = call i32 @rtw_write32_mask(%struct.rtw_dev* %53, i32 %54, i32 %55, i32 944727415)
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %58 = load i32, i32* @REG_TXSF6, align 4
  %59 = load i32, i32* @MASKLWORD, align 4
  %60 = call i32 @rtw_write32_mask(%struct.rtw_dev* %57, i32 %58, i32 %59, i32 5413)
  br label %61

61:                                               ; preds = %52, %43
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %63 = load i32, i32* @REG_RFEINV, align 4
  %64 = call i32 @rtw_write32_mask(%struct.rtw_dev* %62, i32 %63, i32 768, i32 2)
  br label %159

65:                                               ; preds = %4
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %66, 35
  br i1 %67, label %68, label %158

68:                                               ; preds = %65
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %70 = load i32, i32* @REG_ENTXCCK, align 4
  %71 = call i32 @BIT(i32 18)
  %72 = call i32 @rtw_write32_mask(%struct.rtw_dev* %69, i32 %70, i32 %71, i32 1)
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %74 = load i32, i32* @REG_CCK_CHECK, align 4
  %75 = call i32 @BIT(i32 7)
  %76 = call i32 @rtw_write32_mask(%struct.rtw_dev* %73, i32 %74, i32 %75, i32 1)
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %78 = load i32, i32* @REG_RXPSEL, align 4
  %79 = call i32 @BIT(i32 28)
  %80 = call i32 @rtw_write32_mask(%struct.rtw_dev* %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %82 = load i32, i32* @REG_RXCCAMSK, align 4
  %83 = call i32 @rtw_write32_mask(%struct.rtw_dev* %81, i32 %82, i32 64512, i32 34)
  %84 = load i32, i32* %6, align 4
  %85 = icmp sge i32 %84, 36
  br i1 %85, label %86, label %93

86:                                               ; preds = %68
  %87 = load i32, i32* %6, align 4
  %88 = icmp sle i32 %87, 64
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %91 = load i32, i32* @REG_ACGG2TBL, align 4
  %92 = call i32 @rtw_write32_mask(%struct.rtw_dev* %90, i32 %91, i32 31, i32 1)
  br label %112

93:                                               ; preds = %86, %68
  %94 = load i32, i32* %6, align 4
  %95 = icmp sge i32 %94, 100
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = icmp sle i32 %97, 144
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %101 = load i32, i32* @REG_ACGG2TBL, align 4
  %102 = call i32 @rtw_write32_mask(%struct.rtw_dev* %100, i32 %101, i32 31, i32 2)
  br label %111

103:                                              ; preds = %96, %93
  %104 = load i32, i32* %6, align 4
  %105 = icmp sge i32 %104, 149
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %108 = load i32, i32* @REG_ACGG2TBL, align 4
  %109 = call i32 @rtw_write32_mask(%struct.rtw_dev* %107, i32 %108, i32 31, i32 3)
  br label %110

110:                                              ; preds = %106, %103
  br label %111

111:                                              ; preds = %110, %99
  br label %112

112:                                              ; preds = %111, %89
  %113 = load i32, i32* %6, align 4
  %114 = icmp sge i32 %113, 36
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  %117 = icmp sle i32 %116, 48
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %120 = load i32, i32* @REG_CLKTRK, align 4
  %121 = call i32 @rtw_write32_mask(%struct.rtw_dev* %119, i32 %120, i32 536739840, i32 1172)
  br label %155

122:                                              ; preds = %115, %112
  %123 = load i32, i32* %6, align 4
  %124 = icmp sge i32 %123, 52
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = icmp sle i32 %126, 64
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %130 = load i32, i32* @REG_CLKTRK, align 4
  %131 = call i32 @rtw_write32_mask(%struct.rtw_dev* %129, i32 %130, i32 536739840, i32 1107)
  br label %154

132:                                              ; preds = %125, %122
  %133 = load i32, i32* %6, align 4
  %134 = icmp sge i32 %133, 100
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = icmp sle i32 %136, 116
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %140 = load i32, i32* @REG_CLKTRK, align 4
  %141 = call i32 @rtw_write32_mask(%struct.rtw_dev* %139, i32 %140, i32 536739840, i32 1106)
  br label %153

142:                                              ; preds = %135, %132
  %143 = load i32, i32* %6, align 4
  %144 = icmp sge i32 %143, 118
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = icmp sle i32 %146, 177
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %150 = load i32, i32* @REG_CLKTRK, align 4
  %151 = call i32 @rtw_write32_mask(%struct.rtw_dev* %149, i32 %150, i32 536739840, i32 1042)
  br label %152

152:                                              ; preds = %148, %145, %142
  br label %153

153:                                              ; preds = %152, %138
  br label %154

154:                                              ; preds = %153, %128
  br label %155

155:                                              ; preds = %154, %118
  %156 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %157 = call i32 @rtw_write32_mask(%struct.rtw_dev* %156, i32 3260, i32 768, i32 1)
  br label %158

158:                                              ; preds = %155, %65
  br label %159

159:                                              ; preds = %158, %61
  %160 = load i32, i32* %7, align 4
  switch i32 %160, label %162 [
    i32 131, label %161
    i32 130, label %180
    i32 128, label %215
    i32 129, label %248
    i32 132, label %272
  ]

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %159, %161
  %163 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %164 = load i32, i32* @REG_ADCCLK, align 4
  %165 = load i32, i32* @MASKDWORD, align 4
  %166 = call i32 @rtw_read32_mask(%struct.rtw_dev* %163, i32 %164, i32 %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = and i32 %167, -3146752
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = or i32 %169, 131
  store i32 %170, i32* %11, align 4
  %171 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %172 = load i32, i32* @REG_ADCCLK, align 4
  %173 = load i32, i32* @MASKDWORD, align 4
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @rtw_write32_mask(%struct.rtw_dev* %171, i32 %172, i32 %173, i32 %174)
  %176 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %177 = load i32, i32* @REG_ADC160, align 4
  %178 = call i32 @BIT(i32 30)
  %179 = call i32 @rtw_write32_mask(%struct.rtw_dev* %176, i32 %177, i32 %178, i32 1)
  br label %296

180:                                              ; preds = %159
  %181 = load i32, i32* %8, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %185 = load i32, i32* @REG_RXSB, align 4
  %186 = call i32 @BIT(i32 4)
  %187 = call i32 @rtw_write32_set(%struct.rtw_dev* %184, i32 %185, i32 %186)
  br label %193

188:                                              ; preds = %180
  %189 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %190 = load i32, i32* @REG_RXSB, align 4
  %191 = call i32 @BIT(i32 4)
  %192 = call i32 @rtw_write32_clr(%struct.rtw_dev* %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %188, %183
  %194 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %195 = load i32, i32* @REG_ADCCLK, align 4
  %196 = load i32, i32* @MASKDWORD, align 4
  %197 = call i32 @rtw_read32_mask(%struct.rtw_dev* %194, i32 %195, i32 %196)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = and i32 %198, -12586240
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %8, align 4
  %201 = and i32 %200, 15
  %202 = shl i32 %201, 2
  %203 = or i32 %202, 130
  %204 = load i32, i32* %11, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %11, align 4
  %206 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %207 = load i32, i32* @REG_ADCCLK, align 4
  %208 = load i32, i32* @MASKDWORD, align 4
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @rtw_write32_mask(%struct.rtw_dev* %206, i32 %207, i32 %208, i32 %209)
  %211 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %212 = load i32, i32* @REG_ADC160, align 4
  %213 = call i32 @BIT(i32 30)
  %214 = call i32 @rtw_write32_mask(%struct.rtw_dev* %211, i32 %212, i32 %213, i32 1)
  br label %296

215:                                              ; preds = %159
  %216 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %217 = load i32, i32* @REG_ADCCLK, align 4
  %218 = load i32, i32* @MASKDWORD, align 4
  %219 = call i32 @rtw_read32_mask(%struct.rtw_dev* %216, i32 %217, i32 %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = and i32 %220, -51392768
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %8, align 4
  %223 = and i32 %222, 15
  %224 = shl i32 %223, 2
  %225 = or i32 %224, 128
  %226 = load i32, i32* %11, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %11, align 4
  %228 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %229 = load i32, i32* @REG_ADCCLK, align 4
  %230 = load i32, i32* @MASKDWORD, align 4
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @rtw_write32_mask(%struct.rtw_dev* %228, i32 %229, i32 %230, i32 %231)
  %233 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %234 = load i32, i32* @REG_ADC160, align 4
  %235 = call i32 @BIT(i32 30)
  %236 = call i32 @rtw_write32_mask(%struct.rtw_dev* %233, i32 %234, i32 %235, i32 1)
  %237 = load i32, i32* %10, align 4
  %238 = icmp eq i32 %237, 2
  br i1 %238, label %239, label %247

239:                                              ; preds = %215
  %240 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %241 = load i32, i32* @REG_L1PKWT, align 4
  %242 = call i32 @rtw_write32_mask(%struct.rtw_dev* %240, i32 %241, i32 61440, i32 6)
  %243 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %244 = load i32, i32* @REG_ADC40, align 4
  %245 = call i32 @BIT(i32 10)
  %246 = call i32 @rtw_write32_mask(%struct.rtw_dev* %243, i32 %244, i32 %245, i32 1)
  br label %247

247:                                              ; preds = %239, %215
  br label %296

248:                                              ; preds = %159
  %249 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %250 = load i32, i32* @REG_ADCCLK, align 4
  %251 = load i32, i32* @MASKDWORD, align 4
  %252 = call i32 @rtw_read32_mask(%struct.rtw_dev* %249, i32 %250, i32 %251)
  store i32 %252, i32* %11, align 4
  %253 = load i32, i32* %11, align 4
  %254 = and i32 %253, -269550080
  store i32 %254, i32* %11, align 4
  %255 = call i32 @BIT(i32 6)
  %256 = or i32 %255, 131
  %257 = load i32, i32* %11, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %11, align 4
  %259 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %260 = load i32, i32* @REG_ADCCLK, align 4
  %261 = load i32, i32* @MASKDWORD, align 4
  %262 = load i32, i32* %11, align 4
  %263 = call i32 @rtw_write32_mask(%struct.rtw_dev* %259, i32 %260, i32 %261, i32 %262)
  %264 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %265 = load i32, i32* @REG_ADC160, align 4
  %266 = call i32 @BIT(i32 30)
  %267 = call i32 @rtw_write32_mask(%struct.rtw_dev* %264, i32 %265, i32 %266, i32 0)
  %268 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %269 = load i32, i32* @REG_ADC40, align 4
  %270 = call i32 @BIT(i32 31)
  %271 = call i32 @rtw_write32_mask(%struct.rtw_dev* %268, i32 %269, i32 %270, i32 1)
  br label %296

272:                                              ; preds = %159
  %273 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %274 = load i32, i32* @REG_ADCCLK, align 4
  %275 = load i32, i32* @MASKDWORD, align 4
  %276 = call i32 @rtw_read32_mask(%struct.rtw_dev* %273, i32 %274, i32 %275)
  store i32 %276, i32* %11, align 4
  %277 = load i32, i32* %11, align 4
  %278 = and i32 %277, -268501248
  store i32 %278, i32* %11, align 4
  %279 = call i32 @BIT(i32 7)
  %280 = or i32 %279, 131
  %281 = load i32, i32* %11, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %11, align 4
  %283 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %284 = load i32, i32* @REG_ADCCLK, align 4
  %285 = load i32, i32* @MASKDWORD, align 4
  %286 = load i32, i32* %11, align 4
  %287 = call i32 @rtw_write32_mask(%struct.rtw_dev* %283, i32 %284, i32 %285, i32 %286)
  %288 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %289 = load i32, i32* @REG_ADC160, align 4
  %290 = call i32 @BIT(i32 30)
  %291 = call i32 @rtw_write32_mask(%struct.rtw_dev* %288, i32 %289, i32 %290, i32 0)
  %292 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %293 = load i32, i32* @REG_ADC40, align 4
  %294 = call i32 @BIT(i32 31)
  %295 = call i32 @rtw_write32_mask(%struct.rtw_dev* %292, i32 %293, i32 %294, i32 1)
  br label %296

296:                                              ; preds = %272, %248, %247, %193, %162
  ret void
}

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_clr(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
