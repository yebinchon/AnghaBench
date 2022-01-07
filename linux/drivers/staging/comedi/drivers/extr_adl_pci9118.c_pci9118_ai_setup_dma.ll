; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_ai_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pci9118_private* }
%struct.pci9118_private = type { i32, i32, i64, i64, i32, %struct.pci9118_dmabuf* }
%struct.pci9118_dmabuf = type { i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"WAR: DMA0 buf too short, can't support CMDF_WAKE_EOS (%d<%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ERR: DMA0 buf len bug? (%d<4)\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"WAR: DMA1 buf too short, can't support CMDF_WAKE_EOS (%d<%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ERR: DMA1 buf len bug? (%d<4)\0A\00", align 1
@AINT_WRITE_COMPL = common dso_local global i32 0, align 4
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@EN_A2P_TRANSFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci9118_ai_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_ai_setup_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci9118_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca %struct.pci9118_dmabuf*, align 8
  %8 = alloca %struct.pci9118_dmabuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.pci9118_private*, %struct.pci9118_private** %15, align 8
  store %struct.pci9118_private* %16, %struct.pci9118_private** %5, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %6, align 8
  %21 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %22 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %21, i32 0, i32 5
  %23 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %22, align 8
  %24 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %23, i64 0
  store %struct.pci9118_dmabuf* %24, %struct.pci9118_dmabuf** %7, align 8
  %25 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %26 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %25, i32 0, i32 5
  %27 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %26, align 8
  %28 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %27, i64 1
  store %struct.pci9118_dmabuf* %28, %struct.pci9118_dmabuf** %8, align 8
  %29 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %7, align 8
  %30 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %8, align 8
  %33 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %36 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %39 = call i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %38)
  %40 = mul i32 %37, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ugt i32 %41, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %2
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = zext i32 %53 to i64
  %55 = and i64 %54, -4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %48, %2
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ugt i32 %58, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = zext i32 %70 to i64
  %72 = and i64 %71, -4
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %65, %57
  %75 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %76 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %89 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %94, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  br label %109

98:                                               ; preds = %81
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ult i32 %100, 4
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  store i32 4, i32* %9, align 4
  br label %108

108:                                              ; preds = %102, %98
  br label %109

109:                                              ; preds = %108, %85
  br label %110

110:                                              ; preds = %109, %74
  %111 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %112 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %146

117:                                              ; preds = %110
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %125 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %129 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %130, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %132)
  br label %145

134:                                              ; preds = %117
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ult i32 %136, 4
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %140 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  store i32 4, i32* %10, align 4
  br label %144

144:                                              ; preds = %138, %134
  br label %145

145:                                              ; preds = %144, %121
  br label %146

146:                                              ; preds = %145, %110
  %147 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %148 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %227, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %11, align 4
  %157 = udiv i32 %155, %156
  %158 = load i32, i32* %11, align 4
  %159 = mul i32 %157, %158
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = and i64 %161, -4
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %153
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %166, %153
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = udiv i32 %170, %171
  %173 = load i32, i32* %11, align 4
  %174 = mul i32 %172, %173
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = zext i32 %175 to i64
  %177 = and i64 %176, -4
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %168
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %181, %168
  %184 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %185 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %226, label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %11, align 4
  %190 = zext i32 %189 to i64
  %191 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %192 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = mul i64 %190, %193
  store i64 %194, i64* %13, align 8
  %195 = load i32, i32* %9, align 4
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* %13, align 8
  %198 = icmp ugt i64 %196, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %188
  %200 = load i64, i64* %13, align 8
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = zext i32 %202 to i64
  %204 = and i64 %203, -4
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %9, align 4
  br label %225

206:                                              ; preds = %188
  %207 = load i32, i32* %10, align 4
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %13, align 8
  %210 = load i32, i32* %9, align 4
  %211 = zext i32 %210 to i64
  %212 = sub i64 %209, %211
  %213 = icmp ugt i64 %208, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %206
  %215 = load i64, i64* %13, align 8
  %216 = load i32, i32* %9, align 4
  %217 = zext i32 %216 to i64
  %218 = sub i64 %215, %217
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = zext i32 %220 to i64
  %222 = and i64 %221, -4
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %10, align 4
  br label %224

224:                                              ; preds = %214, %206
  br label %225

225:                                              ; preds = %224, %199
  br label %226

226:                                              ; preds = %225, %183
  br label %227

227:                                              ; preds = %226, %146
  %228 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %229 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %228, i32 0, i32 3
  store i64 0, i64* %229, align 8
  %230 = load i32, i32* %9, align 4
  %231 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %7, align 8
  %232 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %8, align 8
  %235 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %237 = call i32 @pci9118_amcc_dma_ena(%struct.comedi_device* %236, i32 0)
  %238 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %239 = call i32 @pci9118_amcc_setup_dma(%struct.comedi_device* %238, i32 0)
  %240 = load i32, i32* @AINT_WRITE_COMPL, align 4
  %241 = or i32 0, %240
  %242 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %243 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @outl(i32 %241, i64 %246)
  %248 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %249 = call i32 @pci9118_amcc_dma_ena(%struct.comedi_device* %248, i32 1)
  %250 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %251 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @inl(i64 %254)
  %256 = load i32, i32* @EN_A2P_TRANSFERS, align 4
  %257 = or i32 %255, %256
  %258 = load %struct.pci9118_private*, %struct.pci9118_private** %5, align 8
  %259 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %262 = add nsw i64 %260, %261
  %263 = call i32 @outl(i32 %257, i64 %262)
  ret i32 0
}

declare dso_local i32 @comedi_bytes_per_sample(%struct.comedi_subdevice*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @pci9118_amcc_dma_ena(%struct.comedi_device*, i32) #1

declare dso_local i32 @pci9118_amcc_setup_dma(%struct.comedi_device*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
