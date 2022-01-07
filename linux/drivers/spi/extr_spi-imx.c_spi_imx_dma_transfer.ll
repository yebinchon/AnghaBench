; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, %struct.TYPE_4__*, i32, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)* }
%struct.TYPE_3__ = type { %struct.spi_master* }
%struct.spi_master = type { i32, i32, i32 }
%struct.spi_transfer = type { i32, i32, %struct.sg_table, %struct.sg_table }
%struct.sg_table = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { i8*, i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"No setup_wml()?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@spi_imx_dma_rx_callback = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@spi_imx_dma_tx_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"I/O Error in DMA TX\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"I/O Error in DMA RX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_imx_data*, %struct.spi_transfer*)* @spi_imx_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_dma_transfer(%struct.spi_imx_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_imx_data*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.spi_master*, align 8
  %11 = alloca %struct.sg_table*, align 8
  %12 = alloca %struct.sg_table*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %17 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %18 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.spi_master*, %struct.spi_master** %19, align 8
  store %struct.spi_master* %20, %struct.spi_master** %10, align 8
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 3
  store %struct.sg_table* %22, %struct.sg_table** %11, align 8
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 2
  store %struct.sg_table* %24, %struct.sg_table** %12, align 8
  %25 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %26 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %29 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.scatterlist* @sg_last(i32 %27, i32 %30)
  store %struct.scatterlist* %31, %struct.scatterlist** %13, align 8
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @spi_imx_bytes_per_word(i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %37 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %55, %2
  %43 = load i32, i32* %15, align 4
  %44 = icmp ugt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %47 = call i32 @sg_dma_len(%struct.scatterlist* %46)
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = mul i32 %48, %49
  %51 = urem i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %58

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %15, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %15, align 4
  br label %42

58:                                               ; preds = %53, %42
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %65 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %67 = call i32 @spi_imx_dma_configure(%struct.spi_master* %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %3, align 4
  br label %224

72:                                               ; preds = %62
  %73 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %74 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %76, align 8
  %78 = icmp ne i32 (%struct.spi_imx_data*)* %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %81 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %224

86:                                               ; preds = %72
  %87 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %88 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %90, align 8
  %92 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %93 = call i32 %91(%struct.spi_imx_data* %92)
  %94 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %95 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %98 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %101 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %104 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %105 = load i32, i32* @DMA_CTRL_ACK, align 4
  %106 = or i32 %104, %105
  %107 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %96, i32 %99, i32 %102, i32 %103, i32 %106)
  store %struct.dma_async_tx_descriptor* %107, %struct.dma_async_tx_descriptor** %7, align 8
  %108 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %109 = icmp ne %struct.dma_async_tx_descriptor* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %86
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %224

113:                                              ; preds = %86
  %114 = load i32, i32* @spi_imx_dma_rx_callback, align 4
  %115 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %116 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %118 = bitcast %struct.spi_imx_data* %117 to i8*
  %119 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %120 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %122 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %121)
  %123 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %124 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %123, i32 0, i32 2
  %125 = call i32 @reinit_completion(i32* %124)
  %126 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %127 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dma_async_issue_pending(i32 %128)
  %130 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %131 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %134 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sg_table*, %struct.sg_table** %11, align 8
  %137 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %140 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %141 = load i32, i32* @DMA_CTRL_ACK, align 4
  %142 = or i32 %140, %141
  %143 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32 %132, i32 %135, i32 %138, i32 %139, i32 %142)
  store %struct.dma_async_tx_descriptor* %143, %struct.dma_async_tx_descriptor** %6, align 8
  %144 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %145 = icmp ne %struct.dma_async_tx_descriptor* %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %113
  %147 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %148 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dmaengine_terminate_all(i32 %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %224

153:                                              ; preds = %113
  %154 = load i32, i32* @spi_imx_dma_tx_callback, align 4
  %155 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %156 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %158 = bitcast %struct.spi_imx_data* %157 to i8*
  %159 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %160 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %162 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %161)
  %163 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %164 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %163, i32 0, i32 4
  %165 = call i32 @reinit_completion(i32* %164)
  %166 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %167 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @dma_async_issue_pending(i32 %168)
  %170 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %171 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %172 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @spi_imx_calculate_timeout(%struct.spi_imx_data* %170, i32 %173)
  store i64 %174, i64* %8, align 8
  %175 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %176 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %175, i32 0, i32 4
  %177 = load i64, i64* %8, align 8
  %178 = call i64 @wait_for_completion_timeout(i32* %176, i64 %177)
  store i64 %178, i64* %9, align 8
  %179 = load i64, i64* %9, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %196, label %181

181:                                              ; preds = %153
  %182 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %183 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @dev_err(i32* %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %186 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %187 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @dmaengine_terminate_all(i32 %188)
  %190 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %191 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @dmaengine_terminate_all(i32 %192)
  %194 = load i32, i32* @ETIMEDOUT, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %224

196:                                              ; preds = %153
  %197 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %198 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %197, i32 0, i32 2
  %199 = load i64, i64* %8, align 8
  %200 = call i64 @wait_for_completion_timeout(i32* %198, i64 %199)
  store i64 %200, i64* %9, align 8
  %201 = load i64, i64* %9, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %220, label %203

203:                                              ; preds = %196
  %204 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %205 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %204, i32 0, i32 1
  %206 = call i32 @dev_err(i32* %205, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %207 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %208 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %207, i32 0, i32 1
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %210, align 8
  %212 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %213 = call i32 %211(%struct.spi_imx_data* %212)
  %214 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %215 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @dmaengine_terminate_all(i32 %216)
  %218 = load i32, i32* @ETIMEDOUT, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %3, align 4
  br label %224

220:                                              ; preds = %196
  %221 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %222 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %220, %203, %181, %146, %110, %79, %70
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local %struct.scatterlist* @sg_last(i32, i32) #1

declare dso_local i32 @spi_imx_bytes_per_word(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @spi_imx_dma_configure(%struct.spi_master*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i64 @spi_imx_calculate_timeout(%struct.spi_imx_data*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
