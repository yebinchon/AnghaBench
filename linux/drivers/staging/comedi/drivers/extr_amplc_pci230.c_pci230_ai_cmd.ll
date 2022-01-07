; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.pci230_private* }
%struct.pci230_private = type { i64, i32, i16, i64, i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i64, i32, i32, i32, i64, i32, i32* }

@RES_Z2CT2 = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@RES_Z2CT0 = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@RES_Z2CT1 = common dso_local global i32 0, align 4
@OWNER_AICMD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PCI230_ADC_FIFO_EN = common dso_local global i16 0, align 2
@AREF_DIFF = common dso_local global i64 0, align 8
@PCI230_ADC_IM_DIF = common dso_local global i16 0, align 2
@PCI230_ADC_IM_SE = common dso_local global i16 0, align 2
@PCI230_ADC_IR_BIP = common dso_local global i16 0, align 2
@PCI230_ADC_IR_UNI = common dso_local global i16 0, align 2
@pci230_ai_gain = common dso_local global i32* null, align 8
@PCI230_ADCEN = common dso_local global i64 0, align 8
@PCI230_ADCG = common dso_local global i64 0, align 8
@I8254_MODE1 = common dso_local global i32 0, align 4
@PCI230_ADC_INT_FIFO_FULL = common dso_local global i16 0, align 2
@PCI230_ADC_TRIG_Z2CT2 = common dso_local global i16 0, align 2
@PCI230_ADC_FIFO_RESET = common dso_local global i16 0, align 2
@PCI230_ADCCON = common dso_local global i64 0, align 8
@GAT_GND = common dso_local global i32 0, align 4
@PCI230_ZGAT_SCE = common dso_local global i64 0, align 8
@I8254_MODE3 = common dso_local global i32 0, align 4
@GAT_VCC = common dso_local global i32 0, align 4
@CMDF_ROUND_UP = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i64 0, align 8
@pci230_ai_inttrig_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.pci230_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i8, align 1
  %15 = alloca %struct.comedi_async*, align 8
  %16 = alloca %struct.comedi_cmd*, align 8
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 2
  %20 = load %struct.pci230_private*, %struct.pci230_private** %19, align 8
  store %struct.pci230_private* %20, %struct.pci230_private** %6, align 8
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 0
  %23 = load %struct.comedi_async*, %struct.comedi_async** %22, align 8
  store %struct.comedi_async* %23, %struct.comedi_async** %15, align 8
  %24 = load %struct.comedi_async*, %struct.comedi_async** %15, align 8
  %25 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %24, i32 0, i32 1
  store %struct.comedi_cmd* %25, %struct.comedi_cmd** %16, align 8
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* @RES_Z2CT2, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TRIG_FOLLOW, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %2
  %35 = load i32, i32* @RES_Z2CT0, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TRIG_TIMER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @RES_Z2CT1, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %34
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @OWNER_AICMD, align 4
  %52 = call i32 @pci230_claim_shared(%struct.comedi_device* %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %342

57:                                               ; preds = %48
  %58 = load i16, i16* @PCI230_ADC_FIFO_EN, align 2
  store i16 %58, i16* %12, align 2
  store i16 0, i16* %13, align 2
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @CR_AREF(i32 %63)
  %65 = load i64, i64* @AREF_DIFF, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  store i32 1, i32* %10, align 4
  %68 = load i16, i16* @PCI230_ADC_IM_DIF, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* %12, align 2
  %71 = zext i16 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %12, align 2
  br label %81

74:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  %75 = load i16, i16* @PCI230_ADC_IM_SE, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* %12, align 2
  %78 = zext i16 %77 to i32
  %79 = or i32 %78, %76
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %12, align 2
  br label %81

81:                                               ; preds = %74, %67
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 8
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @CR_RANGE(i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %88, i32 %89)
  %91 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %92 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %94 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %81
  %98 = load i16, i16* @PCI230_ADC_IR_BIP, align 2
  %99 = zext i16 %98 to i32
  %100 = load i16, i16* %12, align 2
  %101 = zext i16 %100 to i32
  %102 = or i32 %101, %99
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %12, align 2
  br label %111

104:                                              ; preds = %81
  %105 = load i16, i16* @PCI230_ADC_IR_UNI, align 2
  %106 = zext i16 %105 to i32
  %107 = load i16, i16* %12, align 2
  %108 = zext i16 %107 to i32
  %109 = or i32 %108, %106
  %110 = trunc i32 %109 to i16
  store i16 %110, i16* %12, align 2
  br label %111

111:                                              ; preds = %104, %97
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %186, %111
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ult i32 %113, %116
  br i1 %117, label %118, label %189

118:                                              ; preds = %112
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 8
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @CR_CHAN(i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 8
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @CR_RANGE(i32 %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %118
  %138 = load i32, i32* %8, align 4
  %139 = mul i32 2, %138
  store i32 %139, i32* %17, align 4
  %140 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %141 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %137
  %145 = load i32, i32* %17, align 4
  %146 = shl i32 3, %145
  %147 = load i16, i16* %13, align 2
  %148 = zext i16 %147 to i32
  %149 = or i32 %148, %146
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %13, align 2
  br label %158

151:                                              ; preds = %137
  %152 = load i32, i32* %17, align 4
  %153 = shl i32 1, %152
  %154 = load i16, i16* %13, align 2
  %155 = zext i16 %154 to i32
  %156 = or i32 %155, %153
  %157 = trunc i32 %156 to i16
  store i16 %157, i16* %13, align 2
  br label %158

158:                                              ; preds = %151, %144
  br label %168

159:                                              ; preds = %118
  %160 = load i32, i32* %8, align 4
  %161 = and i32 %160, -2
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %8, align 4
  %163 = shl i32 1, %162
  %164 = load i16, i16* %13, align 2
  %165 = zext i16 %164 to i32
  %166 = or i32 %165, %163
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %13, align 2
  br label %168

168:                                              ; preds = %159, %158
  %169 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %170 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = shl i32 3, %172
  %174 = xor i32 %173, -1
  %175 = and i32 %171, %174
  %176 = load i32*, i32** @pci230_ai_gain, align 8
  %177 = load i32, i32* %9, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %17, align 4
  %182 = shl i32 %180, %181
  %183 = or i32 %175, %182
  %184 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %185 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %168
  %187 = load i32, i32* %7, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %112

189:                                              ; preds = %112
  %190 = load i16, i16* %13, align 2
  %191 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %192 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @PCI230_ADCEN, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @outw(i16 zeroext %190, i64 %195)
  %197 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %198 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = trunc i32 %199 to i16
  %201 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %202 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @PCI230_ADCG, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @outw(i16 zeroext %200, i64 %205)
  %207 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %208 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @I8254_MODE1, align 4
  %211 = call i32 @comedi_8254_set_mode(i32 %209, i32 2, i32 %210)
  %212 = load i16, i16* @PCI230_ADC_INT_FIFO_FULL, align 2
  %213 = zext i16 %212 to i32
  %214 = load i16, i16* @PCI230_ADC_TRIG_Z2CT2, align 2
  %215 = zext i16 %214 to i32
  %216 = or i32 %213, %215
  %217 = load i16, i16* %12, align 2
  %218 = zext i16 %217 to i32
  %219 = or i32 %218, %216
  %220 = trunc i32 %219 to i16
  store i16 %220, i16* %12, align 2
  %221 = load i16, i16* %12, align 2
  %222 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %223 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %222, i32 0, i32 2
  store i16 %221, i16* %223, align 4
  %224 = load i16, i16* %12, align 2
  %225 = zext i16 %224 to i32
  %226 = load i16, i16* @PCI230_ADC_FIFO_RESET, align 2
  %227 = zext i16 %226 to i32
  %228 = or i32 %225, %227
  %229 = trunc i32 %228 to i16
  %230 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %231 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @PCI230_ADCCON, align 8
  %234 = add nsw i64 %232, %233
  %235 = call i32 @outw(i16 zeroext %229, i64 %234)
  %236 = call i32 @usleep_range(i32 25, i32 100)
  %237 = load i16, i16* %12, align 2
  %238 = zext i16 %237 to i32
  %239 = load i16, i16* @PCI230_ADC_FIFO_RESET, align 2
  %240 = zext i16 %239 to i32
  %241 = or i32 %238, %240
  %242 = trunc i32 %241 to i16
  %243 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %244 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @PCI230_ADCCON, align 8
  %247 = add nsw i64 %245, %246
  %248 = call i32 @outw(i16 zeroext %242, i64 %247)
  %249 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %250 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @TRIG_TIMER, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %325

254:                                              ; preds = %189
  %255 = load i32, i32* @GAT_GND, align 4
  %256 = call zeroext i8 @pci230_gat_config(i32 2, i32 %255)
  store i8 %256, i8* %14, align 1
  %257 = load i8, i8* %14, align 1
  %258 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %259 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %262 = add nsw i64 %260, %261
  %263 = call i32 @outb(i8 zeroext %257, i64 %262)
  %264 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %265 = load i32, i32* @I8254_MODE3, align 4
  %266 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %267 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %270 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @pci230_ct_setup_ns_mode(%struct.comedi_device* %264, i32 2, i32 %265, i32 %268, i32 %271)
  %273 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %274 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @TRIG_FOLLOW, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %324

278:                                              ; preds = %254
  %279 = load i32, i32* @GAT_VCC, align 4
  %280 = call zeroext i8 @pci230_gat_config(i32 0, i32 %279)
  store i8 %280, i8* %14, align 1
  %281 = load i8, i8* %14, align 1
  %282 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %283 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %286 = add nsw i64 %284, %285
  %287 = call i32 @outb(i8 zeroext %281, i64 %286)
  %288 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %289 = load i32, i32* @I8254_MODE1, align 4
  %290 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %291 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %294 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = mul nsw i32 %292, %295
  %297 = load i32, i32* @CMDF_ROUND_UP, align 4
  %298 = call i32 @pci230_ct_setup_ns_mode(%struct.comedi_device* %288, i32 0, i32 %289, i32 %296, i32 %297)
  %299 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %300 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @TRIG_TIMER, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %323

304:                                              ; preds = %278
  %305 = load i32, i32* @GAT_GND, align 4
  %306 = call zeroext i8 @pci230_gat_config(i32 1, i32 %305)
  store i8 %306, i8* %14, align 1
  %307 = load i8, i8* %14, align 1
  %308 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %309 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %312 = add nsw i64 %310, %311
  %313 = call i32 @outb(i8 zeroext %307, i64 %312)
  %314 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %315 = load i32, i32* @I8254_MODE3, align 4
  %316 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %317 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @pci230_ct_setup_ns_mode(%struct.comedi_device* %314, i32 1, i32 %315, i32 %318, i32 %321)
  br label %323

323:                                              ; preds = %304, %278
  br label %324

324:                                              ; preds = %323, %254
  br label %325

325:                                              ; preds = %324, %189
  %326 = load %struct.comedi_cmd*, %struct.comedi_cmd** %16, align 8
  %327 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @TRIG_INT, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %325
  %332 = load i32, i32* @pci230_ai_inttrig_start, align 4
  %333 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %334 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %333, i32 0, i32 0
  %335 = load %struct.comedi_async*, %struct.comedi_async** %334, align 8
  %336 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %335, i32 0, i32 0
  store i32 %332, i32* %336, align 8
  br label %341

337:                                              ; preds = %325
  %338 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %339 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %340 = call i32 @pci230_ai_start(%struct.comedi_device* %338, %struct.comedi_subdevice* %339)
  br label %341

341:                                              ; preds = %337, %331
  store i32 0, i32* %3, align 4
  br label %342

342:                                              ; preds = %341, %54
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local i32 @pci230_claim_shared(%struct.comedi_device*, i32, i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @comedi_8254_set_mode(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local zeroext i8 @pci230_gat_config(i32, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @pci230_ct_setup_ns_mode(%struct.comedi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @pci230_ai_start(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
