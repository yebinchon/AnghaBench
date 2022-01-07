; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.das1800_private* }
%struct.das1800_private = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32, i32, i64, i64, i32, i32, i32* }

@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@CMDF_PRIORITY = common dso_local global i32 0, align 4
@DMA_ENABLED = common dso_local global i32 0, align 4
@FIMD = common dso_local global i32 0, align 4
@FFEN = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@ATEN = common dso_local global i32 0, align 4
@TGEN = common dso_local global i32 0, align 4
@CGSL = common dso_local global i32 0, align 4
@CGEN = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@TGPL = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@IPCLK = common dso_local global i32 0, align 4
@XPCLK = common dso_local global i32 0, align 4
@BMDE = common dso_local global i32 0, align 4
@I8254_MODE0 = common dso_local global i32 0, align 4
@I8254_BINARY = common dso_local global i32 0, align 4
@DAS1800_CONTROL_C = common dso_local global i64 0, align 8
@DAS1800_BURST_RATE = common dso_local global i64 0, align 8
@DAS1800_BURST_LENGTH = common dso_local global i64 0, align 8
@DAS1800_CONTROL_B = common dso_local global i64 0, align 8
@DAS1800_CONTROL_A = common dso_local global i64 0, align 8
@CVEN = common dso_local global i32 0, align 4
@DAS1800_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das1800_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.das1800_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 2
  %13 = load %struct.das1800_private*, %struct.das1800_private** %12, align 8
  store %struct.das1800_private* %13, %struct.das1800_private** %5, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load %struct.comedi_async*, %struct.comedi_async** %15, align 8
  store %struct.comedi_async* %16, %struct.comedi_async** %8, align 8
  %17 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 0
  store %struct.comedi_cmd* %18, %struct.comedi_cmd** %9, align 8
  %19 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %20 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %19, i32 0, i32 9
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_RANGE(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %29 = load i32, i32* @CMDF_PRIORITY, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load i32, i32* @DMA_ENABLED, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %37 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %42 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %45 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32, i32* @FIMD, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %59 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %68

62:                                               ; preds = %48
  %63 = load i32, i32* @FIMD, align 4
  %64 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %65 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %71 = call i32 @das1800_ai_cancel(%struct.comedi_device* %69, %struct.comedi_subdevice* %70)
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @comedi_range_is_unipolar(%struct.comedi_subdevice* %72, i32 %73)
  %75 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %76 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @FFEN, align 4
  store i32 %77, i32* %6, align 4
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TRIG_EXT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %68
  %84 = load i32, i32* @ATEN, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %68
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TRIG_EXT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* @TGEN, align 4
  %95 = load i32, i32* @CGSL, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %103

99:                                               ; preds = %87
  %100 = load i32, i32* @CGEN, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99, %93
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @ATEN, align 4
  %106 = load i32, i32* @TGEN, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %103
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CR_INVERT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %119 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CR_INVERT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117, %110
  %125 = load i32, i32* @TGPL, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %117
  br label %129

129:                                              ; preds = %128, %103
  %130 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 9
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @das1800_ai_chanspec_bits(%struct.comedi_subdevice* %130, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @TRIG_FOLLOW, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %129
  %143 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %144 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TRIG_TIMER, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32, i32* @IPCLK, align 4
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %7, align 4
  br label %156

152:                                              ; preds = %142
  %153 = load i32, i32* @XPCLK, align 4
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %152, %148
  br label %176

157:                                              ; preds = %129
  %158 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %159 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TRIG_TIMER, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i32, i32* @BMDE, align 4
  %165 = load i32, i32* @IPCLK, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* %7, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %7, align 4
  br label %175

169:                                              ; preds = %157
  %170 = load i32, i32* @BMDE, align 4
  %171 = load i32, i32* @XPCLK, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* %7, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %169, %163
  br label %176

176:                                              ; preds = %175, %156
  %177 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 9
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %182 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @das1800_ai_set_chanlist(%struct.comedi_device* %177, i32* %180, i32 %183)
  %185 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %186 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @TRIG_FOLLOW, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %176
  %191 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %192 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @TRIG_TIMER, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %190, %176
  %197 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %198 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @TRIG_TIMER, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %196
  %203 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %204 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @comedi_8254_update_divisors(i32 %205)
  %207 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %208 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @comedi_8254_pacer_enable(i32 %209, i32 1, i32 2, i32 1)
  br label %211

211:                                              ; preds = %202, %196, %190
  %212 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %213 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @TRIG_EXT, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %211
  %218 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %219 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @I8254_MODE0, align 4
  %222 = load i32, i32* @I8254_BINARY, align 4
  %223 = or i32 %221, %222
  %224 = call i32 @comedi_8254_load(i32 %220, i32 0, i32 1, i32 %223)
  br label %225

225:                                              ; preds = %217, %211
  %226 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %227 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %228 = call i32 @das1800_ai_setup_dma(%struct.comedi_device* %226, %struct.comedi_subdevice* %227)
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %231 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @DAS1800_CONTROL_C, align 8
  %234 = add nsw i64 %232, %233
  %235 = call i32 @outb(i32 %229, i64 %234)
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @BMDE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %262

240:                                              ; preds = %225
  %241 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %242 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 4
  %244 = sdiv i32 %243, 1000
  %245 = sub nsw i32 %244, 1
  %246 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %247 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @DAS1800_BURST_RATE, align 8
  %250 = add nsw i64 %248, %249
  %251 = call i32 @outb(i32 %245, i64 %250)
  %252 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %253 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %254, 1
  %256 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %257 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @DAS1800_BURST_LENGTH, align 8
  %260 = add nsw i64 %258, %259
  %261 = call i32 @outb(i32 %255, i64 %260)
  br label %262

262:                                              ; preds = %240, %225
  %263 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %264 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %267 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @DAS1800_CONTROL_B, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i32 @outb(i32 %265, i64 %270)
  %272 = load i32, i32* %6, align 4
  %273 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %274 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @DAS1800_CONTROL_A, align 8
  %277 = add nsw i64 %275, %276
  %278 = call i32 @outb(i32 %272, i64 %277)
  %279 = load i32, i32* @CVEN, align 4
  %280 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %281 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @DAS1800_STATUS, align 8
  %284 = add nsw i64 %282, %283
  %285 = call i32 @outb(i32 %279, i64 %284)
  ret i32 0
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @das1800_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_range_is_unipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @das1800_ai_chanspec_bits(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @das1800_ai_set_chanlist(%struct.comedi_device*, i32*, i32) #1

declare dso_local i32 @comedi_8254_update_divisors(i32) #1

declare dso_local i32 @comedi_8254_pacer_enable(i32, i32, i32, i32) #1

declare dso_local i32 @comedi_8254_load(i32, i32, i32, i32) #1

declare dso_local i32 @das1800_ai_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
