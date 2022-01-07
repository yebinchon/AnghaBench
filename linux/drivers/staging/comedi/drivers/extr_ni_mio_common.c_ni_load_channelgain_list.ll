; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_load_channelgain_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_load_channelgain_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private*, %struct.ni_board_struct* }
%struct.ni_private = type { i32, i32, i32, i32, i32*, i64, i64, i64 }
%struct.ni_board_struct = type { i64 }
%struct.comedi_subdevice = type { i32 }

@NISTC_CFG_MEM_CLR_REG = common dso_local global i32 0, align 4
@CR_ALT_SOURCE = common dso_local global i32 0, align 4
@NI6143_CALIB_CHAN_RELAY_ON = common dso_local global i32 0, align 4
@NI6143_CALIB_CHAN_REG = common dso_local global i32 0, align 4
@NI6143_CALIB_CHAN_RELAY_OFF = common dso_local global i32 0, align 4
@CR_ALT_FILTER = common dso_local global i32 0, align 4
@ni_gainlkup = common dso_local global i32** null, align 8
@NI611X_CALIB_CHAN_SEL_REG = common dso_local global i32 0, align 4
@NI_E_AI_CFG_HI_TYPE_DIFF = common dso_local global i32 0, align 4
@NI_E_AI_CFG_HI_TYPE_COMMON = common dso_local global i32 0, align 4
@NI_E_AI_CFG_HI_TYPE_GROUND = common dso_local global i32 0, align 4
@NI_E_AI_CFG_HI_REG = common dso_local global i32 0, align 4
@NI_E_AI_CFG_LO_LAST_CHAN = common dso_local global i32 0, align 4
@NI_E_AI_CFG_LO_DITHER = common dso_local global i32 0, align 4
@NI_E_AI_CFG_LO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*)* @ni_load_channelgain_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_load_channelgain_list(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ni_board_struct*, align 8
  %10 = alloca %struct.ni_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 1
  %21 = load %struct.ni_board_struct*, %struct.ni_board_struct** %20, align 8
  store %struct.ni_board_struct* %21, %struct.ni_board_struct** %9, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load %struct.ni_private*, %struct.ni_private** %23, align 8
  store %struct.ni_private* %24, %struct.ni_private** %10, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %11, align 4
  %30 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %31 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @ni_m_series_load_channelgain_list(%struct.comedi_device* %35, i32 %36, i32* %37)
  br label %344

39:                                               ; preds = %4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %74

42:                                               ; preds = %39
  %43 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %44 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %74, label %47

47:                                               ; preds = %42
  %48 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %49 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %47
  %53 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %54 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %59 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %344

66:                                               ; preds = %57, %52
  %67 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %68 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %73 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %77

74:                                               ; preds = %47, %42, %39
  %75 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %76 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %66
  %78 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %79 = load i32, i32* @NISTC_CFG_MEM_CLR_REG, align 4
  %80 = call i32 @ni_stc_writew(%struct.comedi_device* %78, i32 1, i32 %79)
  %81 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %82 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %147

85:                                               ; preds = %77
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CR_ALT_SOURCE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %85
  %93 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %94 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %115, label %97

97:                                               ; preds = %92
  %98 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %99 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %100 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NI6143_CALIB_CHAN_RELAY_ON, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @NI6143_CALIB_CHAN_REG, align 4
  %105 = call i32 @ni_writew(%struct.comedi_device* %98, i32 %103, i32 %104)
  %106 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %107 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %108 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NI6143_CALIB_CHAN_REG, align 4
  %111 = call i32 @ni_writew(%struct.comedi_device* %106, i32 %109, i32 %110)
  %112 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %113 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  %114 = call i32 @msleep_interruptible(i32 100)
  br label %146

115:                                              ; preds = %92, %85
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CR_ALT_SOURCE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %145, label %122

122:                                              ; preds = %115
  %123 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %124 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %122
  %128 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %129 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %130 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @NI6143_CALIB_CHAN_RELAY_OFF, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @NI6143_CALIB_CHAN_REG, align 4
  %135 = call i32 @ni_writew(%struct.comedi_device* %128, i32 %133, i32 %134)
  %136 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %137 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %138 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @NI6143_CALIB_CHAN_REG, align 4
  %141 = call i32 @ni_writew(%struct.comedi_device* %136, i32 %139, i32 %140)
  %142 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %143 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %142, i32 0, i32 2
  store i32 0, i32* %143, align 8
  %144 = call i32 @msleep_interruptible(i32 100)
  br label %145

145:                                              ; preds = %127, %122, %115
  br label %146

146:                                              ; preds = %145, %97
  br label %147

147:                                              ; preds = %146, %77
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %328, %147
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %331

152:                                              ; preds = %148
  %153 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %154 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %170, label %157

157:                                              ; preds = %152
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %15, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @CR_ALT_SOURCE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %168 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %12, align 4
  br label %177

170:                                              ; preds = %157, %152
  %171 = load i32*, i32** %8, align 8
  %172 = load i32, i32* %15, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @CR_CHAN(i32 %175)
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %170, %166
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %15, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @CR_AREF(i32 %182)
  store i32 %183, i32* %14, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %15, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @CR_RANGE(i32 %188)
  store i32 %189, i32* %13, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %15, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @CR_ALT_FILTER, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %18, align 4
  %199 = load i32**, i32*** @ni_gainlkup, align 8
  %200 = load %struct.ni_board_struct*, %struct.ni_board_struct** %9, align 8
  %201 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds i32*, i32** %199, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %13, align 4
  %209 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %210 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %177
  %214 = load i32, i32* %11, align 4
  %215 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %216 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %214, i32* %220, align 4
  br label %236

221:                                              ; preds = %177
  %222 = load i32, i32* %13, align 4
  %223 = and i32 %222, 256
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %228

226:                                              ; preds = %221
  %227 = load i32, i32* %11, align 4
  br label %228

228:                                              ; preds = %226, %225
  %229 = phi i32 [ 0, %225 ], [ %227, %226 ]
  %230 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %231 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %15, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %229, i32* %235, align 4
  br label %236

236:                                              ; preds = %228, %213
  store i32 0, i32* %16, align 4
  %237 = load i32*, i32** %8, align 8
  %238 = load i32, i32* %15, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @CR_ALT_SOURCE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %262

245:                                              ; preds = %236
  %246 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %247 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %245
  %251 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %252 = load i32*, i32** %8, align 8
  %253 = load i32, i32* %15, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @CR_CHAN(i32 %256)
  %258 = and i32 %257, 3
  %259 = load i32, i32* @NI611X_CALIB_CHAN_SEL_REG, align 4
  %260 = call i32 @ni_writew(%struct.comedi_device* %251, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %250, %245
  br label %291

262:                                              ; preds = %236
  %263 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %264 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %263, i32 0, i32 6
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  store i32 130, i32* %14, align 4
  br label %275

268:                                              ; preds = %262
  %269 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %270 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %269, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  store i32 128, i32* %14, align 4
  br label %274

274:                                              ; preds = %273, %268
  br label %275

275:                                              ; preds = %274, %267
  %276 = load i32, i32* %14, align 4
  switch i32 %276, label %290 [
    i32 130, label %277
    i32 131, label %281
    i32 129, label %285
    i32 128, label %289
  ]

277:                                              ; preds = %275
  %278 = load i32, i32* @NI_E_AI_CFG_HI_TYPE_DIFF, align 4
  %279 = load i32, i32* %16, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %16, align 4
  br label %290

281:                                              ; preds = %275
  %282 = load i32, i32* @NI_E_AI_CFG_HI_TYPE_COMMON, align 4
  %283 = load i32, i32* %16, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %16, align 4
  br label %290

285:                                              ; preds = %275
  %286 = load i32, i32* @NI_E_AI_CFG_HI_TYPE_GROUND, align 4
  %287 = load i32, i32* %16, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %16, align 4
  br label %290

289:                                              ; preds = %275
  br label %290

290:                                              ; preds = %275, %289, %285, %281, %277
  br label %291

291:                                              ; preds = %290, %261
  %292 = load i32, i32* %12, align 4
  %293 = call i32 @NI_E_AI_CFG_HI_CHAN(i32 %292)
  %294 = load i32, i32* %16, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %16, align 4
  %296 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %297 = load i32, i32* %16, align 4
  %298 = load i32, i32* @NI_E_AI_CFG_HI_REG, align 4
  %299 = call i32 @ni_writew(%struct.comedi_device* %296, i32 %297, i32 %298)
  %300 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %301 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %300, i32 0, i32 5
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %327, label %304

304:                                              ; preds = %291
  %305 = load i32, i32* %13, align 4
  %306 = call i32 @NI_E_AI_CFG_LO_GAIN(i32 %305)
  store i32 %306, i32* %17, align 4
  %307 = load i32, i32* %15, align 4
  %308 = load i32, i32* %7, align 4
  %309 = sub i32 %308, 1
  %310 = icmp eq i32 %307, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %304
  %312 = load i32, i32* @NI_E_AI_CFG_LO_LAST_CHAN, align 4
  %313 = load i32, i32* %17, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %17, align 4
  br label %315

315:                                              ; preds = %311, %304
  %316 = load i32, i32* %18, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load i32, i32* @NI_E_AI_CFG_LO_DITHER, align 4
  %320 = load i32, i32* %17, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %17, align 4
  br label %322

322:                                              ; preds = %318, %315
  %323 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %324 = load i32, i32* %17, align 4
  %325 = load i32, i32* @NI_E_AI_CFG_LO_REG, align 4
  %326 = call i32 @ni_writew(%struct.comedi_device* %323, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %322, %291
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %15, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %15, align 4
  br label %148

331:                                              ; preds = %148
  %332 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %333 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %332, i32 0, i32 6
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %344, label %336

336:                                              ; preds = %331
  %337 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %338 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %337, i32 0, i32 5
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %336
  %342 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %343 = call i32 @ni_prime_channelgain_list(%struct.comedi_device* %342)
  br label %344

344:                                              ; preds = %34, %65, %341, %336, %331
  ret void
}

declare dso_local i32 @ni_m_series_load_channelgain_list(%struct.comedi_device*, i32, i32*) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @NI_E_AI_CFG_HI_CHAN(i32) #1

declare dso_local i32 @NI_E_AI_CFG_LO_GAIN(i32) #1

declare dso_local i32 @ni_prime_channelgain_list(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
