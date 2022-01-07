; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32 }
%struct.fsl_lpspi_data = type { i32, i32, i32, i32, i32 }
%struct.spi_transfer = type { i32, %struct.sg_table, %struct.sg_table }
%struct.sg_table = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { i8*, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fsl_lpspi_dma_rx_callback = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@fsl_lpspi_dma_tx_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"I/O Error in DMA TX\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"I/O Error in DMA RX\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"I/O Error in DMA TX interrupted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"I/O Error in DMA RX interrupted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.fsl_lpspi_data*, %struct.spi_transfer*)* @fsl_lpspi_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_dma_transfer(%struct.spi_controller* %0, %struct.fsl_lpspi_data* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.fsl_lpspi_data*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sg_table*, align 8
  %13 = alloca %struct.sg_table*, align 8
  %14 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.fsl_lpspi_data* %1, %struct.fsl_lpspi_data** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 2
  store %struct.sg_table* %16, %struct.sg_table** %12, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  store %struct.sg_table* %18, %struct.sg_table** %13, align 8
  %19 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %20 = call i32 @fsl_lpspi_dma_configure(%struct.spi_controller* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %4, align 4
  br label %220

25:                                               ; preds = %3
  %26 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %27 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %30 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %33 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %36 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %37 = load i32, i32* @DMA_CTRL_ACK, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %28, i32 %31, i32 %34, i32 %35, i32 %38)
  store %struct.dma_async_tx_descriptor* %39, %struct.dma_async_tx_descriptor** %9, align 8
  %40 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %41 = icmp ne %struct.dma_async_tx_descriptor* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %25
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %220

45:                                               ; preds = %25
  %46 = load i32, i32* @fsl_lpspi_dma_rx_callback, align 4
  %47 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %48 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %50 = bitcast %struct.fsl_lpspi_data* %49 to i8*
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %52 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %54 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %53)
  %55 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %56 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %55, i32 0, i32 2
  %57 = call i32 @reinit_completion(i32* %56)
  %58 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %59 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dma_async_issue_pending(i32 %60)
  %62 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %63 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %66 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %69 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %72 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %73 = load i32, i32* @DMA_CTRL_ACK, align 4
  %74 = or i32 %72, %73
  %75 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %64, i32 %67, i32 %70, i32 %71, i32 %74)
  store %struct.dma_async_tx_descriptor* %75, %struct.dma_async_tx_descriptor** %8, align 8
  %76 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %77 = icmp ne %struct.dma_async_tx_descriptor* %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %45
  %79 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %80 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dmaengine_terminate_all(i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %220

85:                                               ; preds = %45
  %86 = load i32, i32* @fsl_lpspi_dma_tx_callback, align 4
  %87 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %88 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %90 = bitcast %struct.fsl_lpspi_data* %89 to i8*
  %91 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %92 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %94 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %93)
  %95 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %96 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %95, i32 0, i32 3
  %97 = call i32 @reinit_completion(i32* %96)
  %98 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %99 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dma_async_issue_pending(i32 %100)
  %102 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %103 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %105 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %162, label %108

108:                                              ; preds = %85
  %109 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %110 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %111 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @fsl_lpspi_calculate_timeout(%struct.fsl_lpspi_data* %109, i32 %112)
  store i64 %113, i64* %10, align 8
  %114 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %115 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %114, i32 0, i32 3
  %116 = load i64, i64* %10, align 8
  %117 = call i64 @wait_for_completion_timeout(i32* %115, i64 %116)
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %108
  %121 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %122 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %126 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dmaengine_terminate_all(i32 %127)
  %129 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %130 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dmaengine_terminate_all(i32 %131)
  %133 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %134 = call i32 @fsl_lpspi_reset(%struct.fsl_lpspi_data* %133)
  %135 = load i32, i32* @ETIMEDOUT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %220

137:                                              ; preds = %108
  %138 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %139 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %138, i32 0, i32 2
  %140 = load i64, i64* %10, align 8
  %141 = call i64 @wait_for_completion_timeout(i32* %139, i64 %140)
  store i64 %141, i64* %11, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %161, label %144

144:                                              ; preds = %137
  %145 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %146 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dev_err(i32 %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %149 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %150 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @dmaengine_terminate_all(i32 %151)
  %153 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %154 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @dmaengine_terminate_all(i32 %155)
  %157 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %158 = call i32 @fsl_lpspi_reset(%struct.fsl_lpspi_data* %157)
  %159 = load i32, i32* @ETIMEDOUT, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %220

161:                                              ; preds = %137
  br label %217

162:                                              ; preds = %85
  %163 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %164 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %163, i32 0, i32 3
  %165 = call i64 @wait_for_completion_interruptible(i32* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %169 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %167, %162
  %173 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %174 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @dev_dbg(i32 %175, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %178 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @dmaengine_terminate_all(i32 %179)
  %181 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %182 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @dmaengine_terminate_all(i32 %183)
  %185 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %186 = call i32 @fsl_lpspi_reset(%struct.fsl_lpspi_data* %185)
  %187 = load i32, i32* @EINTR, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %4, align 4
  br label %220

189:                                              ; preds = %167
  %190 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %191 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %190, i32 0, i32 2
  %192 = call i64 @wait_for_completion_interruptible(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %196 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %216

199:                                              ; preds = %194, %189
  %200 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %201 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @dev_dbg(i32 %202, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %204 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %205 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @dmaengine_terminate_all(i32 %206)
  %208 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %209 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @dmaengine_terminate_all(i32 %210)
  %212 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %213 = call i32 @fsl_lpspi_reset(%struct.fsl_lpspi_data* %212)
  %214 = load i32, i32* @EINTR, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %4, align 4
  br label %220

216:                                              ; preds = %194
  br label %217

217:                                              ; preds = %216, %161
  %218 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %219 = call i32 @fsl_lpspi_reset(%struct.fsl_lpspi_data* %218)
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %217, %199, %172, %144, %120, %78, %42, %23
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @fsl_lpspi_dma_configure(%struct.spi_controller*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i64 @fsl_lpspi_calculate_timeout(%struct.fsl_lpspi_data*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @fsl_lpspi_reset(%struct.fsl_lpspi_data*) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
