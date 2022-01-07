; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_alloc_and_init_dma_members.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_alloc_and_init_dma_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.pcidas64_private = type { i32*, i32*, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i8**, i8** }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }
%struct.pcidas64_board = type { i64 }
%struct.pci_dev = type { i32 }

@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AO_DMA_RING_COUNT = common dso_local global i32 0, align 4
@LAYOUT_4020 = common dso_local global i64 0, align 8
@ADC_FIFO_REG = common dso_local global i32 0, align 4
@PLX_DMADPR_DESCPCI = common dso_local global i32 0, align 4
@PLX_DMADPR_TCINTR = common dso_local global i32 0, align 4
@PLX_DMADPR_XFERL2P = common dso_local global i32 0, align 4
@DAC_FIFO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @alloc_and_init_dma_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_and_init_dma_members(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.pcidas64_board*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pcidas64_private*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.pcidas64_board*, %struct.pcidas64_board** %9, align 8
  store %struct.pcidas64_board* %10, %struct.pcidas64_board** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.pcidas64_private*, %struct.pcidas64_private** %14, align 8
  store %struct.pcidas64_private* %15, %struct.pcidas64_private** %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %51, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.pcidas64_board*, %struct.pcidas64_board** %4, align 8
  %19 = call i32 @ai_dma_ring_count(%struct.pcidas64_board* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %25 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %26 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @dma_alloc_coherent(i32* %23, i32 %24, i32* %30, i32 %31)
  %33 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %34 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %33, i32 0, i32 9
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %32, i8** %38, align 8
  %39 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %40 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %39, i32 0, i32 9
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %21
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %319

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %16

54:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %94, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %55
  %60 = load %struct.pcidas64_board*, %struct.pcidas64_board** %4, align 8
  %61 = call i64 @ao_cmd_is_supported(%struct.pcidas64_board* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %59
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %67 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %68 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @dma_alloc_coherent(i32* %65, i32 %66, i32* %72, i32 %73)
  %75 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %76 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %75, i32 0, i32 8
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %74, i8** %80, align 8
  %81 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %82 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %81, i32 0, i32 8
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %63
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %319

92:                                               ; preds = %63
  br label %93

93:                                               ; preds = %92, %59
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %55

97:                                               ; preds = %55
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = load %struct.pcidas64_board*, %struct.pcidas64_board** %4, align 8
  %101 = call i32 @ai_dma_ring_count(%struct.pcidas64_board* %100)
  %102 = sext i32 %101 to i64
  %103 = mul i64 4, %102
  %104 = trunc i64 %103 to i32
  %105 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %106 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %105, i32 0, i32 2
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @dma_alloc_coherent(i32* %99, i32 %104, i32* %106, i32 %107)
  %109 = bitcast i8* %108 to %struct.TYPE_3__*
  %110 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %111 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %110, i32 0, i32 7
  store %struct.TYPE_3__* %109, %struct.TYPE_3__** %111, align 8
  %112 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %113 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %112, i32 0, i32 7
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = icmp ne %struct.TYPE_3__* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %97
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %319

119:                                              ; preds = %97
  %120 = load %struct.pcidas64_board*, %struct.pcidas64_board** %4, align 8
  %121 = call i64 @ao_cmd_is_supported(%struct.pcidas64_board* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %119
  %124 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 0
  %126 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 4, %127
  %129 = trunc i64 %128 to i32
  %130 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %131 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %130, i32 0, i32 3
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i8* @dma_alloc_coherent(i32* %125, i32 %129, i32* %131, i32 %132)
  %134 = bitcast i8* %133 to %struct.TYPE_4__*
  %135 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %136 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %135, i32 0, i32 6
  store %struct.TYPE_4__* %134, %struct.TYPE_4__** %136, align 8
  %137 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %138 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %137, i32 0, i32 6
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = icmp ne %struct.TYPE_4__* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %123
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %319

144:                                              ; preds = %123
  br label %145

145:                                              ; preds = %144, %119
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %239, %145
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.pcidas64_board*, %struct.pcidas64_board** %4, align 8
  %149 = call i32 @ai_dma_ring_count(%struct.pcidas64_board* %148)
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %242

151:                                              ; preds = %146
  %152 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %153 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %161 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %160, i32 0, i32 7
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 3
  store i8* %159, i8** %166, align 8
  %167 = load %struct.pcidas64_board*, %struct.pcidas64_board** %4, align 8
  %168 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @LAYOUT_4020, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %151
  %173 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %174 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @ADC_FIFO_REG, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i8* @cpu_to_le32(i32 %177)
  %179 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %180 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %179, i32 0, i32 7
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  store i8* %178, i8** %185, align 8
  br label %200

186:                                              ; preds = %151
  %187 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %188 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @ADC_FIFO_REG, align 4
  %191 = add nsw i32 %189, %190
  %192 = call i8* @cpu_to_le32(i32 %191)
  %193 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %194 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %193, i32 0, i32 7
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  store i8* %192, i8** %199, align 8
  br label %200

200:                                              ; preds = %186, %172
  %201 = call i8* @cpu_to_le32(i32 0)
  %202 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %203 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %202, i32 0, i32 7
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  store i8* %201, i8** %208, align 8
  %209 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %210 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  %215 = load %struct.pcidas64_board*, %struct.pcidas64_board** %4, align 8
  %216 = call i32 @ai_dma_ring_count(%struct.pcidas64_board* %215)
  %217 = srem i32 %214, %216
  %218 = sext i32 %217 to i64
  %219 = mul i64 %218, 32
  %220 = add i64 %212, %219
  %221 = load i32, i32* @PLX_DMADPR_DESCPCI, align 4
  %222 = sext i32 %221 to i64
  %223 = or i64 %220, %222
  %224 = load i32, i32* @PLX_DMADPR_TCINTR, align 4
  %225 = sext i32 %224 to i64
  %226 = or i64 %223, %225
  %227 = load i32, i32* @PLX_DMADPR_XFERL2P, align 4
  %228 = sext i32 %227 to i64
  %229 = or i64 %226, %228
  %230 = trunc i64 %229 to i32
  %231 = call i8* @cpu_to_le32(i32 %230)
  %232 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %233 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %232, i32 0, i32 7
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  store i8* %231, i8** %238, align 8
  br label %239

239:                                              ; preds = %200
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %7, align 4
  br label %146

242:                                              ; preds = %146
  %243 = load %struct.pcidas64_board*, %struct.pcidas64_board** %4, align 8
  %244 = call i64 @ao_cmd_is_supported(%struct.pcidas64_board* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %318

246:                                              ; preds = %242
  store i32 0, i32* %7, align 4
  br label %247

247:                                              ; preds = %314, %246
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %317

251:                                              ; preds = %247
  %252 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %253 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i8* @cpu_to_le32(i32 %258)
  %260 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %261 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %260, i32 0, i32 6
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 3
  store i8* %259, i8** %266, align 8
  %267 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %268 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @DAC_FIFO_REG, align 4
  %271 = add nsw i32 %269, %270
  %272 = call i8* @cpu_to_le32(i32 %271)
  %273 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %274 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %273, i32 0, i32 6
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = load i32, i32* %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 2
  store i8* %272, i8** %279, align 8
  %280 = call i8* @cpu_to_le32(i32 0)
  %281 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %282 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %281, i32 0, i32 6
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  store i8* %280, i8** %287, align 8
  %288 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %289 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = load i32, i32* %7, align 4
  %293 = add nsw i32 %292, 1
  %294 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %295 = srem i32 %293, %294
  %296 = sext i32 %295 to i64
  %297 = mul i64 %296, 32
  %298 = add i64 %291, %297
  %299 = load i32, i32* @PLX_DMADPR_DESCPCI, align 4
  %300 = sext i32 %299 to i64
  %301 = or i64 %298, %300
  %302 = load i32, i32* @PLX_DMADPR_TCINTR, align 4
  %303 = sext i32 %302 to i64
  %304 = or i64 %301, %303
  %305 = trunc i64 %304 to i32
  %306 = call i8* @cpu_to_le32(i32 %305)
  %307 = load %struct.pcidas64_private*, %struct.pcidas64_private** %6, align 8
  %308 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %307, i32 0, i32 6
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  store i8* %306, i8** %313, align 8
  br label %314

314:                                              ; preds = %251
  %315 = load i32, i32* %7, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %7, align 4
  br label %247

317:                                              ; preds = %247
  br label %318

318:                                              ; preds = %317, %242
  store i32 0, i32* %2, align 4
  br label %319

319:                                              ; preds = %318, %141, %116, %89, %47
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i32 @ai_dma_ring_count(%struct.pcidas64_board*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @ao_cmd_is_supported(%struct.pcidas64_board*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
