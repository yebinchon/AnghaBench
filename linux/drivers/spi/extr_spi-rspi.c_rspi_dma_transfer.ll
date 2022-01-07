; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rspi_data = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sg_table = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { %struct.rspi_data*, i32* }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@rspi_dma_complete = common dso_local global i8* null, align 8
@SPCR_SPRIE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@SPCR_SPTIE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DMA timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s %s: DMA not available, falling back to PIO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rspi_data*, %struct.sg_table*, %struct.sg_table*)* @rspi_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_dma_transfer(%struct.rspi_data* %0, %struct.sg_table* %1, %struct.sg_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rspi_data*, align 8
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rspi_data* %0, %struct.rspi_data** %5, align 8
  store %struct.sg_table* %1, %struct.sg_table** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %8, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %15 = icmp ne %struct.sg_table* %14, null
  br i1 %15, label %16, label %57

16:                                               ; preds = %3
  %17 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %18 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %23 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %26 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %29 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %30 = load i32, i32* @DMA_CTRL_ACK, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %21, i32 %24, i32 %27, i32 %28, i32 %31)
  store %struct.dma_async_tx_descriptor* %32, %struct.dma_async_tx_descriptor** %9, align 8
  %33 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %34 = icmp ne %struct.dma_async_tx_descriptor* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %16
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  br label %242

38:                                               ; preds = %16
  %39 = load i8*, i8** @rspi_dma_complete, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %42 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %44 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %45 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %44, i32 0, i32 0
  store %struct.rspi_data* %43, %struct.rspi_data** %45, align 8
  %46 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %47 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @dma_submit_error(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %13, align 4
  br label %242

53:                                               ; preds = %38
  %54 = load i32, i32* @SPCR_SPRIE, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %3
  %58 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %59 = icmp ne %struct.sg_table* %58, null
  br i1 %59, label %60, label %108

60:                                               ; preds = %57
  %61 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %62 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %67 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %70 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %73 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %74 = load i32, i32* @DMA_CTRL_ACK, align 4
  %75 = or i32 %73, %74
  %76 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %65, i32 %68, i32 %71, i32 %72, i32 %75)
  store %struct.dma_async_tx_descriptor* %76, %struct.dma_async_tx_descriptor** %8, align 8
  %77 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %78 = icmp ne %struct.dma_async_tx_descriptor* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %60
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %231

82:                                               ; preds = %60
  %83 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %84 = icmp ne %struct.sg_table* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %87 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  br label %96

88:                                               ; preds = %82
  %89 = load i8*, i8** @rspi_dma_complete, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %92 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %94 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %95 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %94, i32 0, i32 0
  store %struct.rspi_data* %93, %struct.rspi_data** %95, align 8
  br label %96

96:                                               ; preds = %88, %85
  %97 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %98 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i64 @dma_submit_error(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %13, align 4
  br label %231

104:                                              ; preds = %96
  %105 = load i32, i32* @SPCR_SPTIE, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %57
  %109 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %110 = icmp ne %struct.sg_table* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %113 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %11, align 4
  %115 = call i32 @disable_irq(i32 %114)
  br label %116

116:                                              ; preds = %111, %108
  %117 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %118 = icmp ne %struct.sg_table* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %121 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %127 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @disable_irq(i32 %128)
  br label %130

130:                                              ; preds = %125, %119, %116
  %131 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @rspi_enable_irq(%struct.rspi_data* %131, i32 %132)
  %134 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %135 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  %136 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %137 = icmp ne %struct.sg_table* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %140 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dma_async_issue_pending(i32 %143)
  br label %145

145:                                              ; preds = %138, %130
  %146 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %147 = icmp ne %struct.sg_table* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %150 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @dma_async_issue_pending(i32 %153)
  br label %155

155:                                              ; preds = %148, %145
  %156 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %157 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %160 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @HZ, align 4
  %163 = call i32 @wait_event_interruptible_timeout(i32 %158, i64 %161, i32 %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %155
  %167 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %168 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 0, i32* %13, align 4
  br label %204

172:                                              ; preds = %166, %155
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %172
  %176 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %177 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %176, i32 0, i32 2
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = call i32 @dev_err(i32* %179, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %181 = load i32, i32* @ETIMEDOUT, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %175, %172
  %184 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %185 = icmp ne %struct.sg_table* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %188 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %187, i32 0, i32 2
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @dmaengine_terminate_all(i32 %191)
  br label %193

193:                                              ; preds = %186, %183
  %194 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %195 = icmp ne %struct.sg_table* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %193
  %197 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %198 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %197, i32 0, i32 2
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @dmaengine_terminate_all(i32 %201)
  br label %203

203:                                              ; preds = %196, %193
  br label %204

204:                                              ; preds = %203, %171
  %205 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @rspi_disable_irq(%struct.rspi_data* %205, i32 %206)
  %208 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %209 = icmp ne %struct.sg_table* %208, null
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %212 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @enable_irq(i32 %213)
  br label %215

215:                                              ; preds = %210, %204
  %216 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %217 = icmp ne %struct.sg_table* %216, null
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %220 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %218
  %225 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %226 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @enable_irq(i32 %227)
  br label %229

229:                                              ; preds = %224, %218, %215
  %230 = load i32, i32* %13, align 4
  store i32 %230, i32* %4, align 4
  br label %261

231:                                              ; preds = %102, %79
  %232 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %233 = icmp ne %struct.sg_table* %232, null
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %236 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %235, i32 0, i32 2
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @dmaengine_terminate_all(i32 %239)
  br label %241

241:                                              ; preds = %234, %231
  br label %242

242:                                              ; preds = %241, %51, %35
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* @EAGAIN, align 4
  %245 = sub nsw i32 0, %244
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %259

247:                                              ; preds = %242
  %248 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %249 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %248, i32 0, i32 2
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  %252 = call i32 @dev_driver_string(i32* %251)
  %253 = load %struct.rspi_data*, %struct.rspi_data** %5, align 8
  %254 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %253, i32 0, i32 2
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = call i32 @dev_name(i32* %256)
  %258 = call i32 @pr_warn_once(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %252, i32 %257)
  br label %259

259:                                              ; preds = %247, %242
  %260 = load i32, i32* %13, align 4
  store i32 %260, i32* %4, align 4
  br label %261

261:                                              ; preds = %259, %229
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @rspi_enable_irq(%struct.rspi_data*, i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @rspi_disable_irq(%struct.rspi_data*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @pr_warn_once(i8*, i32, i32) #1

declare dso_local i32 @dev_driver_string(i32*) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
