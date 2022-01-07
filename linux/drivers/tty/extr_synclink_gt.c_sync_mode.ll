; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_sync_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_sync_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@IRQ_ALL = common dso_local global i32 0, align 4
@IRQ_MASTER = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i16 0, align 2
@BIT15 = common dso_local global i16 0, align 2
@BIT13 = common dso_local global i16 0, align 2
@BIT14 = common dso_local global i16 0, align 2
@MGSL_INTERFACE_RTS_EN = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i16 0, align 2
@BIT10 = common dso_local global i16 0, align 2
@BIT11 = common dso_local global i16 0, align 2
@BIT12 = common dso_local global i16 0, align 2
@HDLC_CRC_MASK = common dso_local global i32 0, align 4
@BIT9 = common dso_local global i16 0, align 2
@BIT8 = common dso_local global i16 0, align 2
@HDLC_PREAMBLE_PATTERN_NONE = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i16 0, align 2
@BIT5 = common dso_local global i16 0, align 2
@BIT4 = common dso_local global i16 0, align 2
@HDLC_FLAG_AUTO_CTS = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i16 0, align 2
@TCR = common dso_local global i32 0, align 4
@TPR = common dso_local global i32 0, align 4
@HDLC_FLAG_AUTO_DCD = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_BRG = common dso_local global i32 0, align 4
@HDLC_FLAG_RXC_DPLL = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_DPLL = common dso_local global i32 0, align 4
@HDLC_FLAG_TXC_RXCPIN = common dso_local global i32 0, align 4
@HDLC_FLAG_RXC_BRG = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i16 0, align 2
@HDLC_FLAG_RXC_TXCPIN = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i16 0, align 2
@CCR = common dso_local global i32 0, align 4
@SCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @sync_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_mode(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = load i32, i32* @IRQ_ALL, align 4
  %6 = load i32, i32* @IRQ_MASTER, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @slgt_irq_off(%struct.slgt_info* %4, i32 %7)
  %9 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %10 = call i32 @tx_stop(%struct.slgt_info* %9)
  %11 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %12 = call i32 @rx_stop(%struct.slgt_info* %11)
  %13 = load i16, i16* @BIT2, align 2
  store i16 %13, i16* %3, align 2
  %14 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %15 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %52 [
    i32 128, label %18
    i32 130, label %28
    i32 131, label %38
    i32 129, label %45
  ]

18:                                               ; preds = %1
  %19 = load i16, i16* @BIT15, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @BIT13, align 2
  %22 = zext i16 %21 to i32
  %23 = add nsw i32 %20, %22
  %24 = load i16, i16* %3, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %3, align 2
  br label %52

28:                                               ; preds = %1
  %29 = load i16, i16* @BIT14, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @BIT13, align 2
  %32 = zext i16 %31 to i32
  %33 = add nsw i32 %30, %32
  %34 = load i16, i16* %3, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %3, align 2
  br label %52

38:                                               ; preds = %1
  %39 = load i16, i16* @BIT15, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* %3, align 2
  %42 = zext i16 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %3, align 2
  br label %52

45:                                               ; preds = %1
  %46 = load i16, i16* @BIT13, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* %3, align 2
  %49 = zext i16 %48 to i32
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %3, align 2
  br label %52

52:                                               ; preds = %1, %45, %38, %28, %18
  %53 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %54 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MGSL_INTERFACE_RTS_EN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i16, i16* @BIT7, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* %3, align 2
  %63 = zext i16 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %3, align 2
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %68 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %135 [
    i32 142, label %71
    i32 140, label %78
    i32 141, label %85
    i32 145, label %95
    i32 144, label %102
    i32 146, label %112
    i32 143, label %122
  ]

71:                                               ; preds = %66
  %72 = load i16, i16* @BIT10, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16, i16* %3, align 2
  %75 = zext i16 %74 to i32
  %76 = or i32 %75, %73
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %3, align 2
  br label %135

78:                                               ; preds = %66
  %79 = load i16, i16* @BIT11, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* %3, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %82, %80
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %3, align 2
  br label %135

85:                                               ; preds = %66
  %86 = load i16, i16* @BIT11, align 2
  %87 = zext i16 %86 to i32
  %88 = load i16, i16* @BIT10, align 2
  %89 = zext i16 %88 to i32
  %90 = add nsw i32 %87, %89
  %91 = load i16, i16* %3, align 2
  %92 = zext i16 %91 to i32
  %93 = or i32 %92, %90
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %3, align 2
  br label %135

95:                                               ; preds = %66
  %96 = load i16, i16* @BIT12, align 2
  %97 = zext i16 %96 to i32
  %98 = load i16, i16* %3, align 2
  %99 = zext i16 %98 to i32
  %100 = or i32 %99, %97
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %3, align 2
  br label %135

102:                                              ; preds = %66
  %103 = load i16, i16* @BIT12, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* @BIT10, align 2
  %106 = zext i16 %105 to i32
  %107 = add nsw i32 %104, %106
  %108 = load i16, i16* %3, align 2
  %109 = zext i16 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %3, align 2
  br label %135

112:                                              ; preds = %66
  %113 = load i16, i16* @BIT12, align 2
  %114 = zext i16 %113 to i32
  %115 = load i16, i16* @BIT11, align 2
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %114, %116
  %118 = load i16, i16* %3, align 2
  %119 = zext i16 %118 to i32
  %120 = or i32 %119, %117
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %3, align 2
  br label %135

122:                                              ; preds = %66
  %123 = load i16, i16* @BIT12, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, i16* @BIT11, align 2
  %126 = zext i16 %125 to i32
  %127 = add nsw i32 %124, %126
  %128 = load i16, i16* @BIT10, align 2
  %129 = zext i16 %128 to i32
  %130 = add nsw i32 %127, %129
  %131 = load i16, i16* %3, align 2
  %132 = zext i16 %131 to i32
  %133 = or i32 %132, %130
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %3, align 2
  br label %135

135:                                              ; preds = %66, %122, %112, %102, %95, %85, %78, %71
  %136 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %137 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @HDLC_CRC_MASK, align 4
  %141 = and i32 %139, %140
  switch i32 %141, label %159 [
    i32 148, label %142
    i32 147, label %149
  ]

142:                                              ; preds = %135
  %143 = load i16, i16* @BIT9, align 2
  %144 = zext i16 %143 to i32
  %145 = load i16, i16* %3, align 2
  %146 = zext i16 %145 to i32
  %147 = or i32 %146, %144
  %148 = trunc i32 %147 to i16
  store i16 %148, i16* %3, align 2
  br label %159

149:                                              ; preds = %135
  %150 = load i16, i16* @BIT9, align 2
  %151 = zext i16 %150 to i32
  %152 = load i16, i16* @BIT8, align 2
  %153 = zext i16 %152 to i32
  %154 = add nsw i32 %151, %153
  %155 = load i16, i16* %3, align 2
  %156 = zext i16 %155 to i32
  %157 = or i32 %156, %154
  %158 = trunc i32 %157 to i16
  store i16 %158, i16* %3, align 2
  br label %159

159:                                              ; preds = %135, %149, %142
  %160 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %161 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @HDLC_PREAMBLE_PATTERN_NONE, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load i16, i16* @BIT6, align 2
  %168 = zext i16 %167 to i32
  %169 = load i16, i16* %3, align 2
  %170 = zext i16 %169 to i32
  %171 = or i32 %170, %168
  %172 = trunc i32 %171 to i16
  store i16 %172, i16* %3, align 2
  br label %173

173:                                              ; preds = %166, %159
  %174 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %175 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %202 [
    i32 139, label %178
    i32 138, label %185
    i32 137, label %192
  ]

178:                                              ; preds = %173
  %179 = load i16, i16* @BIT5, align 2
  %180 = zext i16 %179 to i32
  %181 = load i16, i16* %3, align 2
  %182 = zext i16 %181 to i32
  %183 = or i32 %182, %180
  %184 = trunc i32 %183 to i16
  store i16 %184, i16* %3, align 2
  br label %202

185:                                              ; preds = %173
  %186 = load i16, i16* @BIT4, align 2
  %187 = zext i16 %186 to i32
  %188 = load i16, i16* %3, align 2
  %189 = zext i16 %188 to i32
  %190 = or i32 %189, %187
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %3, align 2
  br label %202

192:                                              ; preds = %173
  %193 = load i16, i16* @BIT5, align 2
  %194 = zext i16 %193 to i32
  %195 = load i16, i16* @BIT4, align 2
  %196 = zext i16 %195 to i32
  %197 = add nsw i32 %194, %196
  %198 = load i16, i16* %3, align 2
  %199 = zext i16 %198 to i32
  %200 = or i32 %199, %197
  %201 = trunc i32 %200 to i16
  store i16 %201, i16* %3, align 2
  br label %202

202:                                              ; preds = %173, %192, %185, %178
  %203 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %204 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @HDLC_FLAG_AUTO_CTS, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %202
  %211 = load i16, i16* @BIT0, align 2
  %212 = zext i16 %211 to i32
  %213 = load i16, i16* %3, align 2
  %214 = zext i16 %213 to i32
  %215 = or i32 %214, %212
  %216 = trunc i32 %215 to i16
  store i16 %216, i16* %3, align 2
  br label %217

217:                                              ; preds = %210, %202
  %218 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %219 = load i32, i32* @TCR, align 4
  %220 = load i16, i16* %3, align 2
  %221 = call i32 @wr_reg16(%struct.slgt_info* %218, i32 %219, i16 zeroext %220)
  %222 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %223 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  switch i32 %225, label %231 [
    i32 134, label %226
    i32 133, label %227
    i32 132, label %228
    i32 135, label %229
    i32 136, label %230
  ]

226:                                              ; preds = %217
  store i16 126, i16* %3, align 2
  br label %232

227:                                              ; preds = %217
  store i16 255, i16* %3, align 2
  br label %232

228:                                              ; preds = %217
  store i16 0, i16* %3, align 2
  br label %232

229:                                              ; preds = %217
  store i16 85, i16* %3, align 2
  br label %232

230:                                              ; preds = %217
  store i16 170, i16* %3, align 2
  br label %232

231:                                              ; preds = %217
  store i16 126, i16* %3, align 2
  br label %232

232:                                              ; preds = %231, %230, %229, %228, %227, %226
  %233 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %234 = load i32, i32* @TPR, align 4
  %235 = load i16, i16* %3, align 2
  %236 = trunc i16 %235 to i8
  %237 = call i32 @wr_reg8(%struct.slgt_info* %233, i32 %234, i8 zeroext %236)
  store i16 0, i16* %3, align 2
  %238 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %239 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  switch i32 %241, label %276 [
    i32 128, label %242
    i32 130, label %252
    i32 131, label %262
    i32 129, label %269
  ]

242:                                              ; preds = %232
  %243 = load i16, i16* @BIT15, align 2
  %244 = zext i16 %243 to i32
  %245 = load i16, i16* @BIT13, align 2
  %246 = zext i16 %245 to i32
  %247 = add nsw i32 %244, %246
  %248 = load i16, i16* %3, align 2
  %249 = zext i16 %248 to i32
  %250 = or i32 %249, %247
  %251 = trunc i32 %250 to i16
  store i16 %251, i16* %3, align 2
  br label %276

252:                                              ; preds = %232
  %253 = load i16, i16* @BIT14, align 2
  %254 = zext i16 %253 to i32
  %255 = load i16, i16* @BIT13, align 2
  %256 = zext i16 %255 to i32
  %257 = add nsw i32 %254, %256
  %258 = load i16, i16* %3, align 2
  %259 = zext i16 %258 to i32
  %260 = or i32 %259, %257
  %261 = trunc i32 %260 to i16
  store i16 %261, i16* %3, align 2
  br label %276

262:                                              ; preds = %232
  %263 = load i16, i16* @BIT15, align 2
  %264 = zext i16 %263 to i32
  %265 = load i16, i16* %3, align 2
  %266 = zext i16 %265 to i32
  %267 = or i32 %266, %264
  %268 = trunc i32 %267 to i16
  store i16 %268, i16* %3, align 2
  br label %276

269:                                              ; preds = %232
  %270 = load i16, i16* @BIT13, align 2
  %271 = zext i16 %270 to i32
  %272 = load i16, i16* %3, align 2
  %273 = zext i16 %272 to i32
  %274 = or i32 %273, %271
  %275 = trunc i32 %274 to i16
  store i16 %275, i16* %3, align 2
  br label %276

276:                                              ; preds = %232, %269, %262, %252, %242
  %277 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %278 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  switch i32 %280, label %345 [
    i32 142, label %281
    i32 140, label %288
    i32 141, label %295
    i32 145, label %305
    i32 144, label %312
    i32 146, label %322
    i32 143, label %332
  ]

281:                                              ; preds = %276
  %282 = load i16, i16* @BIT10, align 2
  %283 = zext i16 %282 to i32
  %284 = load i16, i16* %3, align 2
  %285 = zext i16 %284 to i32
  %286 = or i32 %285, %283
  %287 = trunc i32 %286 to i16
  store i16 %287, i16* %3, align 2
  br label %345

288:                                              ; preds = %276
  %289 = load i16, i16* @BIT11, align 2
  %290 = zext i16 %289 to i32
  %291 = load i16, i16* %3, align 2
  %292 = zext i16 %291 to i32
  %293 = or i32 %292, %290
  %294 = trunc i32 %293 to i16
  store i16 %294, i16* %3, align 2
  br label %345

295:                                              ; preds = %276
  %296 = load i16, i16* @BIT11, align 2
  %297 = zext i16 %296 to i32
  %298 = load i16, i16* @BIT10, align 2
  %299 = zext i16 %298 to i32
  %300 = add nsw i32 %297, %299
  %301 = load i16, i16* %3, align 2
  %302 = zext i16 %301 to i32
  %303 = or i32 %302, %300
  %304 = trunc i32 %303 to i16
  store i16 %304, i16* %3, align 2
  br label %345

305:                                              ; preds = %276
  %306 = load i16, i16* @BIT12, align 2
  %307 = zext i16 %306 to i32
  %308 = load i16, i16* %3, align 2
  %309 = zext i16 %308 to i32
  %310 = or i32 %309, %307
  %311 = trunc i32 %310 to i16
  store i16 %311, i16* %3, align 2
  br label %345

312:                                              ; preds = %276
  %313 = load i16, i16* @BIT12, align 2
  %314 = zext i16 %313 to i32
  %315 = load i16, i16* @BIT10, align 2
  %316 = zext i16 %315 to i32
  %317 = add nsw i32 %314, %316
  %318 = load i16, i16* %3, align 2
  %319 = zext i16 %318 to i32
  %320 = or i32 %319, %317
  %321 = trunc i32 %320 to i16
  store i16 %321, i16* %3, align 2
  br label %345

322:                                              ; preds = %276
  %323 = load i16, i16* @BIT12, align 2
  %324 = zext i16 %323 to i32
  %325 = load i16, i16* @BIT11, align 2
  %326 = zext i16 %325 to i32
  %327 = add nsw i32 %324, %326
  %328 = load i16, i16* %3, align 2
  %329 = zext i16 %328 to i32
  %330 = or i32 %329, %327
  %331 = trunc i32 %330 to i16
  store i16 %331, i16* %3, align 2
  br label %345

332:                                              ; preds = %276
  %333 = load i16, i16* @BIT12, align 2
  %334 = zext i16 %333 to i32
  %335 = load i16, i16* @BIT11, align 2
  %336 = zext i16 %335 to i32
  %337 = add nsw i32 %334, %336
  %338 = load i16, i16* @BIT10, align 2
  %339 = zext i16 %338 to i32
  %340 = add nsw i32 %337, %339
  %341 = load i16, i16* %3, align 2
  %342 = zext i16 %341 to i32
  %343 = or i32 %342, %340
  %344 = trunc i32 %343 to i16
  store i16 %344, i16* %3, align 2
  br label %345

345:                                              ; preds = %276, %332, %322, %312, %305, %295, %288, %281
  %346 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %347 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @HDLC_CRC_MASK, align 4
  %351 = and i32 %349, %350
  switch i32 %351, label %369 [
    i32 148, label %352
    i32 147, label %359
  ]

352:                                              ; preds = %345
  %353 = load i16, i16* @BIT9, align 2
  %354 = zext i16 %353 to i32
  %355 = load i16, i16* %3, align 2
  %356 = zext i16 %355 to i32
  %357 = or i32 %356, %354
  %358 = trunc i32 %357 to i16
  store i16 %358, i16* %3, align 2
  br label %369

359:                                              ; preds = %345
  %360 = load i16, i16* @BIT9, align 2
  %361 = zext i16 %360 to i32
  %362 = load i16, i16* @BIT8, align 2
  %363 = zext i16 %362 to i32
  %364 = add nsw i32 %361, %363
  %365 = load i16, i16* %3, align 2
  %366 = zext i16 %365 to i32
  %367 = or i32 %366, %364
  %368 = trunc i32 %367 to i16
  store i16 %368, i16* %3, align 2
  br label %369

369:                                              ; preds = %345, %359, %352
  %370 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %371 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @HDLC_FLAG_AUTO_DCD, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %369
  %378 = load i16, i16* @BIT0, align 2
  %379 = zext i16 %378 to i32
  %380 = load i16, i16* %3, align 2
  %381 = zext i16 %380 to i32
  %382 = or i32 %381, %379
  %383 = trunc i32 %382 to i16
  store i16 %383, i16* %3, align 2
  br label %384

384:                                              ; preds = %377, %369
  %385 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %386 = load i32, i32* @RCR, align 4
  %387 = load i16, i16* %3, align 2
  %388 = call i32 @wr_reg16(%struct.slgt_info* %385, i32 %386, i16 zeroext %387)
  store i16 0, i16* %3, align 2
  %389 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %390 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @HDLC_FLAG_TXC_BRG, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %422

396:                                              ; preds = %384
  %397 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %398 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %414

404:                                              ; preds = %396
  %405 = load i16, i16* @BIT6, align 2
  %406 = zext i16 %405 to i32
  %407 = load i16, i16* @BIT5, align 2
  %408 = zext i16 %407 to i32
  %409 = add nsw i32 %406, %408
  %410 = load i16, i16* %3, align 2
  %411 = zext i16 %410 to i32
  %412 = or i32 %411, %409
  %413 = trunc i32 %412 to i16
  store i16 %413, i16* %3, align 2
  br label %421

414:                                              ; preds = %396
  %415 = load i16, i16* @BIT6, align 2
  %416 = zext i16 %415 to i32
  %417 = load i16, i16* %3, align 2
  %418 = zext i16 %417 to i32
  %419 = or i32 %418, %416
  %420 = trunc i32 %419 to i16
  store i16 %420, i16* %3, align 2
  br label %421

421:                                              ; preds = %414, %404
  br label %454

422:                                              ; preds = %384
  %423 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %424 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %424, i32 0, i32 5
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @HDLC_FLAG_TXC_DPLL, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %437

430:                                              ; preds = %422
  %431 = load i16, i16* @BIT7, align 2
  %432 = zext i16 %431 to i32
  %433 = load i16, i16* %3, align 2
  %434 = zext i16 %433 to i32
  %435 = or i32 %434, %432
  %436 = trunc i32 %435 to i16
  store i16 %436, i16* %3, align 2
  br label %453

437:                                              ; preds = %422
  %438 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %439 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %439, i32 0, i32 5
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @HDLC_FLAG_TXC_RXCPIN, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %452

445:                                              ; preds = %437
  %446 = load i16, i16* @BIT5, align 2
  %447 = zext i16 %446 to i32
  %448 = load i16, i16* %3, align 2
  %449 = zext i16 %448 to i32
  %450 = or i32 %449, %447
  %451 = trunc i32 %450 to i16
  store i16 %451, i16* %3, align 2
  br label %452

452:                                              ; preds = %445, %437
  br label %453

453:                                              ; preds = %452, %430
  br label %454

454:                                              ; preds = %453, %421
  %455 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %456 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @HDLC_FLAG_RXC_BRG, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %469

462:                                              ; preds = %454
  %463 = load i16, i16* @BIT3, align 2
  %464 = zext i16 %463 to i32
  %465 = load i16, i16* %3, align 2
  %466 = zext i16 %465 to i32
  %467 = or i32 %466, %464
  %468 = trunc i32 %467 to i16
  store i16 %468, i16* %3, align 2
  br label %501

469:                                              ; preds = %454
  %470 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %471 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %471, i32 0, i32 5
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %484

477:                                              ; preds = %469
  %478 = load i16, i16* @BIT4, align 2
  %479 = zext i16 %478 to i32
  %480 = load i16, i16* %3, align 2
  %481 = zext i16 %480 to i32
  %482 = or i32 %481, %479
  %483 = trunc i32 %482 to i16
  store i16 %483, i16* %3, align 2
  br label %500

484:                                              ; preds = %469
  %485 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %486 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %486, i32 0, i32 5
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* @HDLC_FLAG_RXC_TXCPIN, align 4
  %490 = and i32 %488, %489
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %499

492:                                              ; preds = %484
  %493 = load i16, i16* @BIT2, align 2
  %494 = zext i16 %493 to i32
  %495 = load i16, i16* %3, align 2
  %496 = zext i16 %495 to i32
  %497 = or i32 %496, %494
  %498 = trunc i32 %497 to i16
  store i16 %498, i16* %3, align 2
  br label %499

499:                                              ; preds = %492, %484
  br label %500

500:                                              ; preds = %499, %477
  br label %501

501:                                              ; preds = %500, %462
  %502 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %503 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %503, i32 0, i32 6
  %505 = load i32, i32* %504, align 8
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %517

507:                                              ; preds = %501
  %508 = load i16, i16* @BIT1, align 2
  %509 = zext i16 %508 to i32
  %510 = load i16, i16* @BIT0, align 2
  %511 = zext i16 %510 to i32
  %512 = add nsw i32 %509, %511
  %513 = load i16, i16* %3, align 2
  %514 = zext i16 %513 to i32
  %515 = or i32 %514, %512
  %516 = trunc i32 %515 to i16
  store i16 %516, i16* %3, align 2
  br label %517

517:                                              ; preds = %507, %501
  %518 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %519 = load i32, i32* @CCR, align 4
  %520 = load i16, i16* %3, align 2
  %521 = trunc i16 %520 to i8
  %522 = call i32 @wr_reg8(%struct.slgt_info* %518, i32 %519, i8 zeroext %521)
  %523 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %524 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %524, i32 0, i32 5
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @HDLC_FLAG_TXC_DPLL, align 4
  %528 = load i32, i32* @HDLC_FLAG_RXC_DPLL, align 4
  %529 = add nsw i32 %527, %528
  %530 = and i32 %526, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %567

532:                                              ; preds = %517
  %533 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %534 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  switch i32 %536, label %546 [
    i32 145, label %537
    i32 144, label %537
    i32 146, label %539
    i32 143, label %539
  ]

537:                                              ; preds = %532, %532
  %538 = load i16, i16* @BIT7, align 2
  store i16 %538, i16* %3, align 2
  br label %548

539:                                              ; preds = %532, %532
  %540 = load i16, i16* @BIT7, align 2
  %541 = zext i16 %540 to i32
  %542 = load i16, i16* @BIT6, align 2
  %543 = zext i16 %542 to i32
  %544 = add nsw i32 %541, %543
  %545 = trunc i32 %544 to i16
  store i16 %545, i16* %3, align 2
  br label %548

546:                                              ; preds = %532
  %547 = load i16, i16* @BIT6, align 2
  store i16 %547, i16* %3, align 2
  br label %548

548:                                              ; preds = %546, %539, %537
  %549 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %550 = load i32, i32* @RCR, align 4
  %551 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %552 = load i32, i32* @RCR, align 4
  %553 = call zeroext i16 @rd_reg16(%struct.slgt_info* %551, i32 %552)
  %554 = zext i16 %553 to i32
  %555 = load i16, i16* %3, align 2
  %556 = zext i16 %555 to i32
  %557 = or i32 %554, %556
  %558 = trunc i32 %557 to i16
  %559 = call i32 @wr_reg16(%struct.slgt_info* %549, i32 %550, i16 zeroext %558)
  %560 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %561 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %562 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %562, i32 0, i32 6
  %564 = load i32, i32* %563, align 8
  %565 = mul nsw i32 %564, 16
  %566 = call i32 @set_rate(%struct.slgt_info* %560, i32 %565)
  br label %574

567:                                              ; preds = %517
  %568 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %569 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %570 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %570, i32 0, i32 6
  %572 = load i32, i32* %571, align 8
  %573 = call i32 @set_rate(%struct.slgt_info* %568, i32 %572)
  br label %574

574:                                              ; preds = %567, %548
  %575 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %576 = call i32 @tx_set_idle(%struct.slgt_info* %575)
  %577 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %578 = call i32 @msc_set_vcr(%struct.slgt_info* %577)
  %579 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %580 = load i32, i32* @SCR, align 4
  %581 = load i16, i16* @BIT15, align 2
  %582 = zext i16 %581 to i32
  %583 = load i16, i16* @BIT14, align 2
  %584 = zext i16 %583 to i32
  %585 = add nsw i32 %582, %584
  %586 = load i16, i16* @BIT0, align 2
  %587 = zext i16 %586 to i32
  %588 = add nsw i32 %585, %587
  %589 = trunc i32 %588 to i16
  %590 = call i32 @wr_reg16(%struct.slgt_info* %579, i32 %580, i16 zeroext %589)
  %591 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %592 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %592, i32 0, i32 7
  %594 = load i64, i64* %593, align 8
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %596, label %599

596:                                              ; preds = %574
  %597 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %598 = call i32 @enable_loopback(%struct.slgt_info* %597)
  br label %599

599:                                              ; preds = %596, %574
  ret void
}

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i32) #1

declare dso_local i32 @tx_stop(%struct.slgt_info*) #1

declare dso_local i32 @rx_stop(%struct.slgt_info*) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @wr_reg8(%struct.slgt_info*, i32, i8 zeroext) #1

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @set_rate(%struct.slgt_info*, i32) #1

declare dso_local i32 @tx_set_idle(%struct.slgt_info*) #1

declare dso_local i32 @msc_set_vcr(%struct.slgt_info*) #1

declare dso_local i32 @enable_loopback(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
