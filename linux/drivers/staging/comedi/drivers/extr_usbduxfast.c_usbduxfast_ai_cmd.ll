; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxfast_private* }
%struct.usbduxfast_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i64, i32* }

@EBUSY = common dso_local global i32 0, align 4
@PACKETS_TO_IGNORE = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@MIN_SAMPLING_PERIOD = common dso_local global i64 0, align 8
@SENDADCOMMANDS = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i64 0, align 8
@usbduxfast_ai_inttrig = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbduxfast_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxfast_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.usbduxfast_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %14, align 8
  store %struct.usbduxfast_private* %15, %struct.usbduxfast_private** %5, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %6, align 8
  store i32 255, i32* %7, align 4
  %20 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %5, align 8
  %21 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %5, align 8
  %24 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %359

30:                                               ; preds = %2
  %31 = load i32, i32* @PACKETS_TO_IGNORE, align 4
  %32 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %5, align 8
  %33 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 30
  %38 = sdiv i32 %37, 1000
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %10, align 8
  %40 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %318 [
    i32 1, label %43
    i32 2, label %110
    i32 3, label %184
    i32 16, label %268
  ]

43:                                               ; preds = %30
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CR_RANGE(i32 %48)
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 251, i32* %7, align 4
  br label %53

52:                                               ; preds = %43
  store i32 255, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TRIG_EXT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %60, i32 0, i32 1, i32 1, i32 %61, i32 0)
  br label %67

63:                                               ; preds = %53
  %64 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %64, i32 0, i32 1, i32 0, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @MIN_SAMPLING_PERIOD, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i64, i64* %10, align 8
  %73 = icmp sle i64 %72, 1
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %75, i32 1, i32 137, i32 3, i32 %76, i32 255)
  br label %88

78:                                               ; preds = %71
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = load i64, i64* %10, align 8
  %81 = sub nsw i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %79, i32 1, i32 %82, i32 2, i32 %83, i32 0)
  %85 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %85, i32 2, i32 9, i32 1, i32 %86, i32 255)
  br label %88

88:                                               ; preds = %78, %74
  br label %109

89:                                               ; preds = %67
  %90 = load i64, i64* %10, align 8
  %91 = sub nsw i64 %90, 1
  store i64 %91, i64* %10, align 8
  %92 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %93 = load i64, i64* %10, align 8
  %94 = sdiv i64 %93, 2
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %92, i32 1, i32 %95, i32 0, i32 %96, i32 0)
  %98 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %10, align 8
  %101 = sdiv i64 %100, 2
  %102 = sub nsw i64 %99, %101
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %98, i32 2, i32 %103, i32 0, i32 %104, i32 0)
  %106 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %106, i32 3, i32 9, i32 3, i32 %107, i32 255)
  br label %109

109:                                              ; preds = %89, %88
  br label %318

110:                                              ; preds = %30
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @CR_RANGE(i32 %115)
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i32 251, i32* %7, align 4
  br label %120

119:                                              ; preds = %110
  store i32 255, i32* %7, align 4
  br label %120

120:                                              ; preds = %119, %118
  %121 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %121, i32 0, i32 1, i32 2, i32 %122, i32 0)
  %124 = load i64, i64* %10, align 8
  %125 = sub nsw i64 %124, 1
  store i64 %125, i64* %11, align 8
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @CR_RANGE(i32 %130)
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  store i32 251, i32* %7, align 4
  br label %135

134:                                              ; preds = %120
  store i32 255, i32* %7, align 4
  br label %135

135:                                              ; preds = %134, %133
  %136 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %137 = load i64, i64* %11, align 8
  %138 = sdiv i64 %137, 2
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* %7, align 4
  %141 = and i32 254, %140
  %142 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %136, i32 1, i32 %139, i32 0, i32 %141, i32 0)
  %143 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* %11, align 8
  %146 = sdiv i64 %145, 2
  %147 = sub nsw i64 %144, %146
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %143, i32 2, i32 %148, i32 0, i32 %149, i32 0)
  %151 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %151, i32 3, i32 1, i32 2, i32 %152, i32 0)
  %154 = load i64, i64* %10, align 8
  %155 = sub nsw i64 %154, 2
  store i64 %155, i64* %11, align 8
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @CR_RANGE(i32 %160)
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %135
  store i32 251, i32* %7, align 4
  br label %165

164:                                              ; preds = %135
  store i32 255, i32* %7, align 4
  br label %165

165:                                              ; preds = %164, %163
  %166 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %167 = load i64, i64* %11, align 8
  %168 = sdiv i64 %167, 2
  %169 = trunc i64 %168 to i32
  %170 = load i32, i32* %7, align 4
  %171 = and i32 253, %170
  %172 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %166, i32 4, i32 %169, i32 0, i32 %171, i32 0)
  %173 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* %11, align 8
  %176 = sdiv i64 %175, 2
  %177 = sub nsw i64 %174, %176
  %178 = trunc i64 %177 to i32
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %173, i32 5, i32 %178, i32 0, i32 %179, i32 0)
  %181 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %181, i32 6, i32 1, i32 0, i32 %182, i32 0)
  br label %318

184:                                              ; preds = %30
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %234, %184
  %186 = load i32, i32* %8, align 4
  %187 = icmp slt i32 %186, 1
  br i1 %187, label %188, label %237

188:                                              ; preds = %185
  %189 = load i32, i32* %8, align 4
  %190 = mul nsw i32 %189, 2
  store i32 %190, i32* %12, align 4
  %191 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %192 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @CR_RANGE(i32 %197)
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %188
  store i32 251, i32* %7, align 4
  br label %202

201:                                              ; preds = %188
  store i32 255, i32* %7, align 4
  br label %202

202:                                              ; preds = %201, %200
  %203 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load i64, i64* %10, align 8
  %206 = sdiv i64 %205, 2
  %207 = trunc i64 %206 to i32
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %203, i32 %204, i32 %207, i32 2, i32 %208, i32 0)
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @CR_RANGE(i32 %217)
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %202
  store i32 251, i32* %7, align 4
  br label %222

221:                                              ; preds = %202
  store i32 255, i32* %7, align 4
  br label %222

222:                                              ; preds = %221, %220
  %223 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %224, 1
  %226 = load i64, i64* %10, align 8
  %227 = load i64, i64* %10, align 8
  %228 = sdiv i64 %227, 2
  %229 = sub nsw i64 %226, %228
  %230 = trunc i64 %229 to i32
  %231 = load i32, i32* %7, align 4
  %232 = and i32 254, %231
  %233 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %223, i32 %225, i32 %230, i32 0, i32 %232, i32 0)
  br label %234

234:                                              ; preds = %222
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %185

237:                                              ; preds = %185
  %238 = load i64, i64* %10, align 8
  %239 = sub nsw i64 %238, 2
  store i64 %239, i64* %11, align 8
  %240 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %241 = load i64, i64* %11, align 8
  %242 = sdiv i64 %241, 2
  %243 = trunc i64 %242 to i32
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %240, i32 4, i32 %243, i32 2, i32 %244, i32 0)
  %246 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %247 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @CR_RANGE(i32 %250)
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %237
  store i32 251, i32* %7, align 4
  br label %255

254:                                              ; preds = %237
  store i32 255, i32* %7, align 4
  br label %255

255:                                              ; preds = %254, %253
  %256 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %257 = load i64, i64* %11, align 8
  %258 = load i64, i64* %11, align 8
  %259 = sdiv i64 %258, 2
  %260 = sub nsw i64 %257, %259
  %261 = trunc i64 %260 to i32
  %262 = load i32, i32* %7, align 4
  %263 = and i32 253, %262
  %264 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %256, i32 5, i32 %261, i32 0, i32 %263, i32 0)
  %265 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %266 = load i32, i32* %7, align 4
  %267 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %265, i32 6, i32 1, i32 0, i32 %266, i32 0)
  br label %318

268:                                              ; preds = %30
  %269 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %270 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %269, i32 0, i32 3
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @CR_RANGE(i32 %273)
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %268
  store i32 251, i32* %7, align 4
  br label %278

277:                                              ; preds = %268
  store i32 255, i32* %7, align 4
  br label %278

278:                                              ; preds = %277, %276
  %279 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %280 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @TRIG_EXT, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %278
  %285 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %286 = load i32, i32* %7, align 4
  %287 = and i32 253, %286
  %288 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %285, i32 0, i32 1, i32 1, i32 %287, i32 0)
  br label %294

289:                                              ; preds = %278
  %290 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %291 = load i32, i32* %7, align 4
  %292 = and i32 253, %291
  %293 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %290, i32 0, i32 255, i32 0, i32 %292, i32 0)
  br label %294

294:                                              ; preds = %289, %284
  %295 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %296 = load i32, i32* %7, align 4
  %297 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %295, i32 1, i32 1, i32 2, i32 %296, i32 0)
  %298 = load i64, i64* %10, align 8
  %299 = sub nsw i64 %298, 2
  store i64 %299, i64* %10, align 8
  %300 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %301 = load i64, i64* %10, align 8
  %302 = sdiv i64 %301, 2
  %303 = trunc i64 %302 to i32
  %304 = load i32, i32* %7, align 4
  %305 = and i32 254, %304
  %306 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %300, i32 2, i32 %303, i32 0, i32 %305, i32 0)
  %307 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %308 = load i64, i64* %10, align 8
  %309 = load i64, i64* %10, align 8
  %310 = sdiv i64 %309, 2
  %311 = sub nsw i64 %308, %310
  %312 = trunc i64 %311 to i32
  %313 = load i32, i32* %7, align 4
  %314 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %307, i32 3, i32 %312, i32 0, i32 %313, i32 0)
  %315 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %316 = load i32, i32* %7, align 4
  %317 = call i32 @usbduxfast_cmd_data(%struct.comedi_device* %315, i32 4, i32 9, i32 1, i32 %316, i32 255)
  br label %318

318:                                              ; preds = %30, %294, %255, %165, %109
  %319 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %320 = load i32, i32* @SENDADCOMMANDS, align 4
  %321 = call i32 @usbduxfast_send_cmd(%struct.comedi_device* %319, i32 %320)
  store i32 %321, i32* %9, align 4
  %322 = load i32, i32* %9, align 4
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %318
  br label %359

325:                                              ; preds = %318
  %326 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %327 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @TRIG_NOW, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %337, label %331

331:                                              ; preds = %325
  %332 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %333 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @TRIG_EXT, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %352

337:                                              ; preds = %331, %325
  %338 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %5, align 8
  %339 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %338, i32 0, i32 0
  store i32 1, i32* %339, align 4
  %340 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %341 = call i32 @usbduxfast_submit_urb(%struct.comedi_device* %340)
  store i32 %341, i32* %9, align 4
  %342 = load i32, i32* %9, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %337
  %345 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %5, align 8
  %346 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %345, i32 0, i32 0
  store i32 0, i32* %346, align 4
  br label %359

347:                                              ; preds = %337
  %348 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %349 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %348, i32 0, i32 0
  %350 = load %struct.TYPE_2__*, %struct.TYPE_2__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 0
  store i32* null, i32** %351, align 8
  br label %358

352:                                              ; preds = %331
  %353 = load i32*, i32** @usbduxfast_ai_inttrig, align 8
  %354 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %355 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %354, i32 0, i32 0
  %356 = load %struct.TYPE_2__*, %struct.TYPE_2__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i32 0, i32 0
  store i32* %353, i32** %357, align 8
  br label %358

358:                                              ; preds = %352, %347
  br label %359

359:                                              ; preds = %358, %344, %324, %27
  %360 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %5, align 8
  %361 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %360, i32 0, i32 1
  %362 = call i32 @mutex_unlock(i32* %361)
  %363 = load i32, i32* %9, align 4
  ret i32 %363
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @usbduxfast_cmd_data(%struct.comedi_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usbduxfast_send_cmd(%struct.comedi_device*, i32) #1

declare dso_local i32 @usbduxfast_submit_urb(%struct.comedi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
