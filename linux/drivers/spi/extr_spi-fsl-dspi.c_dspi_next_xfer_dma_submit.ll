; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_next_xfer_dma_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_next_xfer_dma_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { %struct.fsl_dspi_dma*, i32, %struct.TYPE_3__* }
%struct.fsl_dspi_dma = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { %struct.fsl_dspi*, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Not able to get desc for DMA xfer\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@dspi_tx_dma_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DMA submit failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@dspi_rx_dma_callback = common dso_local global i32 0, align 4
@DMA_COMPLETION_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"DMA tx timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"DMA rx timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_dspi*)* @dspi_next_xfer_dma_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspi_next_xfer_dma_submit(%struct.fsl_dspi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_dspi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fsl_dspi_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %3, align 8
  %8 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %12, i32 0, i32 0
  %14 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %13, align 8
  store %struct.fsl_dspi_dma* %14, %struct.fsl_dspi_dma** %5, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %18 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %23 = call i32 @dspi_pop_tx_pushr(%struct.fsl_dspi* %22)
  %24 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %24, i32 0, i32 0
  %26 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %25, align 8
  %27 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %26, i32 0, i32 9
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %23, i32* %31, align 4
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %37 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %40 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %43 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %48 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %49 = load i32, i32* @DMA_CTRL_ACK, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @dmaengine_prep_slave_single(i32 %38, i32 %41, i32 %46, i32 %47, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_4__*
  %53 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %54 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %53, i32 0, i32 7
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %54, align 8
  %55 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %56 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %55, i32 0, i32 7
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %35
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %212

64:                                               ; preds = %35
  %65 = load i32, i32* @dspi_tx_dma_callback, align 4
  %66 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %67 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %66, i32 0, i32 7
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 8
  %70 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %71 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %72 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %71, i32 0, i32 7
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store %struct.fsl_dspi* %70, %struct.fsl_dspi** %74, align 8
  %75 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %76 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %75, i32 0, i32 7
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @dmaengine_submit(%struct.TYPE_4__* %77)
  %79 = call i64 @dma_submit_error(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %64
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %212

86:                                               ; preds = %64
  %87 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %88 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %91 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %94 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %99 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %100 = load i32, i32* @DMA_CTRL_ACK, align 4
  %101 = or i32 %99, %100
  %102 = call i8* @dmaengine_prep_slave_single(i32 %89, i32 %92, i32 %97, i32 %98, i32 %101)
  %103 = bitcast i8* %102 to %struct.TYPE_4__*
  %104 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %105 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %104, i32 0, i32 5
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %105, align 8
  %106 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %107 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %106, i32 0, i32 5
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = icmp ne %struct.TYPE_4__* %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %86
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = call i32 @dev_err(%struct.device* %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %212

115:                                              ; preds = %86
  %116 = load i32, i32* @dspi_rx_dma_callback, align 4
  %117 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %118 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %117, i32 0, i32 5
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %116, i32* %120, align 8
  %121 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %122 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %123 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %122, i32 0, i32 5
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store %struct.fsl_dspi* %121, %struct.fsl_dspi** %125, align 8
  %126 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %127 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %126, i32 0, i32 5
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = call i32 @dmaengine_submit(%struct.TYPE_4__* %128)
  %130 = call i64 @dma_submit_error(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %115
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %212

137:                                              ; preds = %115
  %138 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %139 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %138, i32 0, i32 0
  %140 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %139, align 8
  %141 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %140, i32 0, i32 3
  %142 = call i32 @reinit_completion(i32* %141)
  %143 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %144 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %143, i32 0, i32 0
  %145 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %144, align 8
  %146 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %145, i32 0, i32 4
  %147 = call i32 @reinit_completion(i32* %146)
  %148 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %149 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dma_async_issue_pending(i32 %150)
  %152 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %153 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dma_async_issue_pending(i32 %154)
  %156 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %157 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @spi_controller_is_slave(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %137
  %162 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %163 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %162, i32 0, i32 0
  %164 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %163, align 8
  %165 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %164, i32 0, i32 3
  %166 = call i32 @wait_for_completion_interruptible(i32* %165)
  store i32 0, i32* %2, align 4
  br label %212

167:                                              ; preds = %137
  %168 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %169 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %168, i32 0, i32 0
  %170 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %169, align 8
  %171 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %170, i32 0, i32 4
  %172 = load i32, i32* @DMA_COMPLETION_TIMEOUT, align 4
  %173 = call i32 @wait_for_completion_timeout(i32* %171, i32 %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %167
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = call i32 @dev_err(%struct.device* %177, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %179 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %180 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @dmaengine_terminate_all(i32 %181)
  %183 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %184 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @dmaengine_terminate_all(i32 %185)
  %187 = load i32, i32* @ETIMEDOUT, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %212

189:                                              ; preds = %167
  %190 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %191 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %190, i32 0, i32 0
  %192 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %191, align 8
  %193 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %192, i32 0, i32 3
  %194 = load i32, i32* @DMA_COMPLETION_TIMEOUT, align 4
  %195 = call i32 @wait_for_completion_timeout(i32* %193, i32 %194)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %189
  %199 = load %struct.device*, %struct.device** %4, align 8
  %200 = call i32 @dev_err(%struct.device* %199, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %201 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %202 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @dmaengine_terminate_all(i32 %203)
  %205 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %5, align 8
  %206 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @dmaengine_terminate_all(i32 %207)
  %209 = load i32, i32* @ETIMEDOUT, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %212

211:                                              ; preds = %189
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %211, %198, %176, %161, %132, %110, %81, %59
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @dspi_pop_tx_pushr(%struct.fsl_dspi*) #1

declare dso_local i8* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_4__*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i64 @spi_controller_is_slave(i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
