; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.rtd_private* }
%struct.rtd_private = type { i32, i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LAS0_PACER_STOP = common dso_local global i64 0, align 8
@LAS0_PACER = common dso_local global i64 0, align 8
@LAS0_ADC_CONVERSION = common dso_local global i64 0, align 8
@LAS0_IT = common dso_local global i64 0, align 8
@LAS0_ADC_FIFO_CLEAR = common dso_local global i64 0, align 8
@LAS0_OVERRUN = common dso_local global i64 0, align 8
@LAS0_PACER_START = common dso_local global i64 0, align 8
@LAS0_BURST_START = common dso_local global i64 0, align 8
@LAS0_ACNT = common dso_local global i64 0, align 8
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@SEND_EOS = common dso_local global i32 0, align 4
@TRANS_TARGET_PERIOD = common dso_local global i32 0, align 4
@LAS0_PACER_SELECT = common dso_local global i64 0, align 8
@LAS0_ACNT_STOP_ENABLE = common dso_local global i64 0, align 8
@CMDF_ROUND_NEAREST = common dso_local global i32 0, align 4
@LAS0_PCLK = common dso_local global i64 0, align 8
@LAS0_BCLK = common dso_local global i64 0, align 8
@LAS0_CLEAR = common dso_local global i64 0, align 8
@IRQM_ADC_ABOUT_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @rtd_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.rtd_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.rtd_private*, %struct.rtd_private** %9, align 8
  store %struct.rtd_private* %10, %struct.rtd_private** %5, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %6, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LAS0_PACER_STOP, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 0, i64 %19)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LAS0_PACER, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 0, i64 %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LAS0_ADC_CONVERSION, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 0, i64 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LAS0_IT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writew(i32 0, i64 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LAS0_ADC_FIFO_CLEAR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 0, i64 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LAS0_OVERRUN, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 0, i64 %49)
  %51 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rtd_load_channelgain_list(%struct.comedi_device* %51, i32 %54, i32 %57)
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %82

63:                                               ; preds = %2
  %64 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LAS0_PACER_START, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 0, i64 %68)
  %70 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LAS0_BURST_START, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 1, i64 %74)
  %76 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @LAS0_ADC_CONVERSION, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 2, i64 %80)
  br label %95

82:                                               ; preds = %2
  %83 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @LAS0_PACER_START, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 0, i64 %87)
  %89 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @LAS0_ADC_CONVERSION, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 1, i64 %93)
  br label %95

95:                                               ; preds = %82, %63
  %96 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %97 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %98, 2
  %100 = sub nsw i32 %99, 1
  %101 = and i32 %100, 65535
  %102 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %103 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @LAS0_ACNT, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %101, i64 %106)
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 128
  br i1 %111, label %112, label %209

112:                                              ; preds = %95
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %112
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %124 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @SEND_EOS, align 4
  %126 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %127 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %178

130:                                              ; preds = %112
  %131 = load i32, i32* @TRANS_TARGET_PERIOD, align 4
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %131, %134
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %135, %138
  %140 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %141 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %143 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %130
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %154 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %172

155:                                              ; preds = %130
  %156 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %157 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @DIV_ROUND_UP(i32 %158, i32 %161)
  %163 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %164 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %169 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %155, %149
  %173 = load i32, i32* @SEND_EOS, align 4
  %174 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %175 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %119
  %179 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %180 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %183 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sdiv i32 %184, 2
  %186 = icmp sge i32 %181, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %178
  %188 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %189 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %188, i32 0, i32 1
  store i32 0, i32* %189, align 4
  %190 = load i32, i32* @SEND_EOS, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %193 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %208

196:                                              ; preds = %178
  %197 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %198 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, 1
  %201 = and i32 %200, 65535
  %202 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %203 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @LAS0_ACNT, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @writel(i32 %201, i64 %206)
  br label %208

208:                                              ; preds = %196, %187
  br label %218

209:                                              ; preds = %95
  %210 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %211 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %210, i32 0, i32 1
  store i32 0, i32* %211, align 4
  %212 = load i32, i32* @SEND_EOS, align 4
  %213 = xor i32 %212, -1
  %214 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %215 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, %213
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %209, %208
  %219 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %220 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @LAS0_PACER_SELECT, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @writel(i32 1, i64 %223)
  %225 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %226 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @LAS0_ACNT_STOP_ENABLE, align 8
  %229 = add nsw i64 %227, %228
  %230 = call i32 @writel(i32 1, i64 %229)
  %231 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %232 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  switch i32 %233, label %266 [
    i32 131, label %234
    i32 129, label %263
  ]

234:                                              ; preds = %218
  %235 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %236 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %239 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %237, %240
  %242 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %243 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 4
  %244 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %245 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %234
  %249 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %250 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %253 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = icmp sgt i32 %251, %254
  br i1 %255, label %256, label %262

256:                                              ; preds = %248
  %257 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %258 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %261 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %256, %248, %234
  br label %266

263:                                              ; preds = %218
  %264 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  %265 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %264, i32 0, i32 2
  store i32 -1, i32* %265, align 4
  br label %266

266:                                              ; preds = %218, %263, %262
  %267 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %268 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  switch i32 %269, label %290 [
    i32 128, label %270
    i32 130, label %283
  ]

270:                                              ; preds = %266
  %271 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %272 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %271, i32 0, i32 3
  %273 = load i32, i32* @CMDF_ROUND_NEAREST, align 4
  %274 = call i32 @rtd_ns_to_timer(i32* %272, i32 %273)
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %7, align 4
  %276 = and i32 %275, 16777215
  %277 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %278 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @LAS0_PCLK, align 8
  %281 = add nsw i64 %279, %280
  %282 = call i32 @writel(i32 %276, i64 %281)
  br label %290

283:                                              ; preds = %266
  %284 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %285 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @LAS0_PACER_START, align 8
  %288 = add nsw i64 %286, %287
  %289 = call i32 @writel(i32 1, i64 %288)
  br label %290

290:                                              ; preds = %266, %283, %270
  %291 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %292 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  switch i32 %293, label %320 [
    i32 128, label %294
    i32 130, label %313
  ]

294:                                              ; preds = %290
  %295 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %296 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp sgt i32 %297, 1
  br i1 %298, label %299, label %312

299:                                              ; preds = %294
  %300 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %301 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %300, i32 0, i32 7
  %302 = load i32, i32* @CMDF_ROUND_NEAREST, align 4
  %303 = call i32 @rtd_ns_to_timer(i32* %301, i32 %302)
  store i32 %303, i32* %7, align 4
  %304 = load i32, i32* %7, align 4
  %305 = and i32 %304, 1023
  %306 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %307 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @LAS0_BCLK, align 8
  %310 = add nsw i64 %308, %309
  %311 = call i32 @writel(i32 %305, i64 %310)
  br label %312

312:                                              ; preds = %299, %294
  br label %320

313:                                              ; preds = %290
  %314 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %315 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @LAS0_BURST_START, align 8
  %318 = add nsw i64 %316, %317
  %319 = call i32 @writel(i32 2, i64 %318)
  br label %320

320:                                              ; preds = %290, %313, %312
  %321 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %322 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @LAS0_CLEAR, align 8
  %325 = add nsw i64 %323, %324
  %326 = call i32 @writew(i32 -1, i64 %325)
  %327 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %328 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @LAS0_CLEAR, align 8
  %331 = add nsw i64 %329, %330
  %332 = call i32 @readw(i64 %331)
  %333 = load i32, i32* @IRQM_ADC_ABOUT_CNT, align 4
  %334 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %335 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @LAS0_IT, align 8
  %338 = add nsw i64 %336, %337
  %339 = call i32 @writew(i32 %333, i64 %338)
  %340 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %341 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @LAS0_PACER, align 8
  %344 = add nsw i64 %342, %343
  %345 = call i32 @readl(i64 %344)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @rtd_load_channelgain_list(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @rtd_ns_to_timer(i32*, i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
