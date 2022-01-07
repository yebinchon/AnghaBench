; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.pcidas64_private = type { i32, i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pcidas64_board = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32*, i32, i64, i32, i64, i32 }

@CALIBRATION_REG = common dso_local global i64 0, align 8
@ADC_SW_GATE_BIT = common dso_local global i32 0, align 4
@ADC_DITHER_BIT = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@ADC_MODE_MASK = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@CHANNEL_MODE_4020_MASK = common dso_local global i32 0, align 4
@FOUR_CHANNEL_4020_BITS = common dso_local global i32 0, align 4
@TWO_CHANNEL_4020_BITS = common dso_local global i32 0, align 4
@ADC_LO_CHANNEL_4020_MASK = common dso_local global i32 0, align 4
@ADC_HI_CHANNEL_4020_MASK = common dso_local global i32 0, align 4
@ADC_CONTROL1_REG = common dso_local global i64 0, align 8
@ADC_BUFFER_CLEAR_REG = common dso_local global i64 0, align 8
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@PLX_DMADPR_DESCPCI = common dso_local global i32 0, align 4
@PLX_DMADPR_TCINTR = common dso_local global i32 0, align 4
@PLX_DMADPR_XFERL2P = common dso_local global i32 0, align 4
@EXT_START_TRIG_BNC_BIT = common dso_local global i32 0, align 4
@EXT_STOP_TRIG_BNC_BIT = common dso_local global i32 0, align 4
@DAQ_ATRIG_LOW_4020_REG = common dso_local global i64 0, align 8
@ADC_ENABLE_BIT = common dso_local global i32 0, align 4
@ADC_SOFT_GATE_BITS = common dso_local global i32 0, align 4
@ADC_GATE_LEVEL_BIT = common dso_local global i32 0, align 4
@ADC_DMA_DISABLE_BIT = common dso_local global i32 0, align 4
@ADC_START_TRIG_EXT_BITS = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@ADC_START_TRIG_FALLING_BIT = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i64 0, align 8
@ADC_START_TRIG_SOFT_BITS = common dso_local global i32 0, align 4
@ADC_SAMPLE_COUNTER_EN_BIT = common dso_local global i32 0, align 4
@ADC_CONTROL0_REG = common dso_local global i64 0, align 8
@ADC_START_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pcidas64_board*, align 8
  %7 = alloca %struct.pcidas64_private*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 2
  %16 = load %struct.pcidas64_board*, %struct.pcidas64_board** %15, align 8
  store %struct.pcidas64_board* %16, %struct.pcidas64_board** %6, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load %struct.pcidas64_private*, %struct.pcidas64_private** %18, align 8
  store %struct.pcidas64_private* %19, %struct.pcidas64_private** %7, align 8
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  %22 = load %struct.comedi_async*, %struct.comedi_async** %21, align 8
  store %struct.comedi_async* %22, %struct.comedi_async** %8, align 8
  %23 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 0
  store %struct.comedi_cmd* %24, %struct.comedi_cmd** %9, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = call i32 @disable_ai_pacing(%struct.comedi_device* %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = call i32 @abort_dma(%struct.comedi_device* %27, i32 1)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %31 = call i32 @setup_channel_queue(%struct.comedi_device* %29, %struct.comedi_cmd* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %3, align 4
  br label %370

36:                                               ; preds = %2
  %37 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %38 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CALIBRATION_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writew(i32 0, i64 %41)
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %45 = call i32 @set_ai_pacing(%struct.comedi_device* %43, %struct.comedi_cmd* %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %48 = call i32 @setup_sample_counters(%struct.comedi_device* %46, %struct.comedi_cmd* %47)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %51 = call i32 @enable_ai_interrupts(%struct.comedi_device* %49, %struct.comedi_cmd* %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load i32, i32* @ADC_SW_GATE_BIT, align 4
  %57 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %58 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @ADC_DITHER_BIT, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %64 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.pcidas64_board*, %struct.pcidas64_board** %6, align 8
  %68 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LAYOUT_4020, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %36
  %73 = load i32, i32* @ADC_MODE_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %76 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TRIG_EXT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = call i32 @adc_mode_bits(i32 13)
  %86 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %87 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %96

90:                                               ; preds = %72
  %91 = call i32 @adc_mode_bits(i32 8)
  %92 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %93 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %84
  br label %166

97:                                               ; preds = %36
  %98 = load i32, i32* @CHANNEL_MODE_4020_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %101 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %114

108:                                              ; preds = %97
  %109 = load i32, i32* @FOUR_CHANNEL_4020_BITS, align 4
  %110 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %111 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %126

114:                                              ; preds = %97
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32, i32* @TWO_CHANNEL_4020_BITS, align 4
  %121 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %122 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %114
  br label %126

126:                                              ; preds = %125, %108
  %127 = load i32, i32* @ADC_LO_CHANNEL_4020_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %130 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %134 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @CR_CHAN(i32 %137)
  %139 = call i32 @adc_lo_chan_4020_bits(i64 %138)
  %140 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %141 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* @ADC_HI_CHANNEL_4020_MASK, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %147 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %154 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @CR_CHAN(i32 %159)
  %161 = call i32 @adc_hi_chan_4020_bits(i64 %160)
  %162 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %163 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %126, %96
  %167 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %168 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %171 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @ADC_CONTROL1_REG, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writew(i32 %169, i64 %174)
  %176 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %177 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %176, i32 0, i32 0
  %178 = load i64, i64* %12, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  %180 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %181 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @ADC_BUFFER_CLEAR_REG, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writew(i32 0, i64 %184)
  %186 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %187 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %190 = and i32 %188, %189
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %166
  %193 = load %struct.pcidas64_board*, %struct.pcidas64_board** %6, align 8
  %194 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @LAYOUT_4020, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %237

198:                                              ; preds = %192, %166
  %199 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %200 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %199, i32 0, i32 5
  store i64 0, i64* %200, align 8
  store i32 0, i32* %11, align 4
  br label %201

201:                                              ; preds = %220, %198
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.pcidas64_board*, %struct.pcidas64_board** %6, align 8
  %204 = call i32 @ai_dma_ring_count(%struct.pcidas64_board* %203)
  %205 = icmp ult i32 %202, %204
  br i1 %205, label %206, label %223

206:                                              ; preds = %201
  %207 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %208 = call i32 @dma_transfer_size(%struct.comedi_device* %207)
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 4
  %211 = trunc i64 %210 to i32
  %212 = call i32 @cpu_to_le32(i32 %211)
  %213 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %214 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %213, i32 0, i32 4
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  store i32 %212, i32* %219, align 4
  br label %220

220:                                              ; preds = %206
  %221 = load i32, i32* %11, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %201

223:                                              ; preds = %201
  %224 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %225 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %226 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @PLX_DMADPR_DESCPCI, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @PLX_DMADPR_TCINTR, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @PLX_DMADPR_XFERL2P, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @load_first_dma_descriptor(%struct.comedi_device* %224, i32 1, i32 %233)
  %235 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %236 = call i32 @dma_start_sync(%struct.comedi_device* %235, i32 1)
  br label %237

237:                                              ; preds = %223, %192
  %238 = load %struct.pcidas64_board*, %struct.pcidas64_board** %6, align 8
  %239 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @LAYOUT_4020, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %283

243:                                              ; preds = %237
  store i32 0, i32* %10, align 4
  %244 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %245 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @TRIG_EXT, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %259

249:                                              ; preds = %243
  %250 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %251 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = call i64 @CR_CHAN(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %249
  %256 = load i32, i32* @EXT_START_TRIG_BNC_BIT, align 4
  %257 = load i32, i32* %10, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %10, align 4
  br label %259

259:                                              ; preds = %255, %249, %243
  %260 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %261 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %260, i32 0, i32 6
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @TRIG_EXT, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %259
  %266 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %267 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @CR_CHAN(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = load i32, i32* @EXT_STOP_TRIG_BNC_BIT, align 4
  %273 = load i32, i32* %10, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %10, align 4
  br label %275

275:                                              ; preds = %271, %265, %259
  %276 = load i32, i32* %10, align 4
  %277 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %278 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @DAQ_ATRIG_LOW_4020_REG, align 8
  %281 = add nsw i64 %279, %280
  %282 = call i32 @writew(i32 %276, i64 %281)
  br label %283

283:                                              ; preds = %275, %237
  %284 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %285 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %284, i32 0, i32 0
  %286 = load i64, i64* %12, align 8
  %287 = call i32 @spin_lock_irqsave(i32* %285, i64 %286)
  %288 = load i32, i32* @ADC_ENABLE_BIT, align 4
  %289 = load i32, i32* @ADC_SOFT_GATE_BITS, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* @ADC_GATE_LEVEL_BIT, align 4
  %292 = or i32 %290, %291
  store i32 %292, i32* %10, align 4
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %283
  %300 = load i32, i32* @ADC_DMA_DISABLE_BIT, align 4
  %301 = load i32, i32* %10, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %10, align 4
  br label %303

303:                                              ; preds = %299, %283
  %304 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %305 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @TRIG_EXT, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %324

309:                                              ; preds = %303
  %310 = load i32, i32* @ADC_START_TRIG_EXT_BITS, align 4
  %311 = load i32, i32* %10, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %10, align 4
  %313 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %314 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @CR_INVERT, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %309
  %320 = load i32, i32* @ADC_START_TRIG_FALLING_BIT, align 4
  %321 = load i32, i32* %10, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %10, align 4
  br label %323

323:                                              ; preds = %319, %309
  br label %335

324:                                              ; preds = %303
  %325 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %326 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %325, i32 0, i32 4
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @TRIG_NOW, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %334

330:                                              ; preds = %324
  %331 = load i32, i32* @ADC_START_TRIG_SOFT_BITS, align 4
  %332 = load i32, i32* %10, align 4
  %333 = or i32 %332, %331
  store i32 %333, i32* %10, align 4
  br label %334

334:                                              ; preds = %330, %324
  br label %335

335:                                              ; preds = %334, %323
  %336 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %337 = call i64 @use_hw_sample_counter(%struct.comedi_cmd* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %335
  %340 = load i32, i32* @ADC_SAMPLE_COUNTER_EN_BIT, align 4
  %341 = load i32, i32* %10, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %10, align 4
  br label %343

343:                                              ; preds = %339, %335
  %344 = load i32, i32* %10, align 4
  %345 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %346 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %345, i32 0, i32 3
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @ADC_CONTROL0_REG, align 8
  %349 = add nsw i64 %347, %348
  %350 = call i32 @writew(i32 %344, i64 %349)
  %351 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %352 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %351, i32 0, i32 2
  store i32 1, i32* %352, align 8
  %353 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %354 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %353, i32 0, i32 0
  %355 = load i64, i64* %12, align 8
  %356 = call i32 @spin_unlock_irqrestore(i32* %354, i64 %355)
  %357 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %358 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %357, i32 0, i32 4
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @TRIG_NOW, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %369

362:                                              ; preds = %343
  %363 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %364 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @ADC_START_REG, align 8
  %367 = add nsw i64 %365, %366
  %368 = call i32 @writew(i32 0, i64 %367)
  br label %369

369:                                              ; preds = %362, %343
  store i32 0, i32* %3, align 4
  br label %370

370:                                              ; preds = %369, %34
  %371 = load i32, i32* %3, align 4
  ret i32 %371
}

declare dso_local i32 @disable_ai_pacing(%struct.comedi_device*) #1

declare dso_local i32 @abort_dma(%struct.comedi_device*, i32) #1

declare dso_local i32 @setup_channel_queue(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @set_ai_pacing(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @setup_sample_counters(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @enable_ai_interrupts(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @adc_mode_bits(i32) #1

declare dso_local i32 @adc_lo_chan_4020_bits(i64) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @adc_hi_chan_4020_bits(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ai_dma_ring_count(%struct.pcidas64_board*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dma_transfer_size(%struct.comedi_device*) #1

declare dso_local i32 @load_first_dma_descriptor(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @dma_start_sync(%struct.comedi_device*, i32) #1

declare dso_local i64 @use_hw_sample_counter(%struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
