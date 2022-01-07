; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_tx_with_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_tx_with_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_uart_port = type { i64, i64, i32, %struct.TYPE_7__*, i32, i32, %struct.TYPE_5__*, %struct.uart_port }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_5__ = type { %struct.sirfsoc_int_en, %struct.sirfsoc_register }
%struct.sirfsoc_int_en = type { i32 }
%struct.sirfsoc_register = type { i32, i32, i32, i32 }
%struct.uart_port = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64, i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@TX_DMA_PAUSE = common dso_local global i64 0, align 8
@TX_DMA_RUNNING = common dso_local global i64 0, align 8
@SIRFUART_FIFO_STOP = common dso_local global i32 0, align 4
@SIRFUART_IO_MODE = common dso_local global i32 0, align 4
@SIRFUART_FIFO_START = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"DMA prep slave single fail\0A\00", align 1
@sirfsoc_uart_tx_dma_complete_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirfsoc_uart_port*)* @sirfsoc_uart_tx_with_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_tx_with_dma(%struct.sirfsoc_uart_port* %0) #0 {
  %2 = alloca %struct.sirfsoc_uart_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.sirfsoc_register*, align 8
  %5 = alloca %struct.sirfsoc_int_en*, align 8
  %6 = alloca %struct.circ_buf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sirfsoc_uart_port* %0, %struct.sirfsoc_uart_port** %2, align 8
  %10 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %10, i32 0, i32 7
  store %struct.uart_port* %11, %struct.uart_port** %3, align 8
  %12 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %12, i32 0, i32 6
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store %struct.sirfsoc_register* %15, %struct.sirfsoc_register** %4, align 8
  %16 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %16, i32 0, i32 6
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.sirfsoc_int_en* %19, %struct.sirfsoc_int_en** %5, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.circ_buf* %23, %struct.circ_buf** %6, align 8
  %24 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %25 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %28 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @UART_XMIT_SIZE, align 4
  %31 = call i64 @CIRC_CNT_TO_END(i32 %26, i64 %29, i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %33 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %36 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  store i64 %38, i64* %8, align 8
  %39 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %40 = call i64 @uart_circ_empty(%struct.circ_buf* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %1
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = call i64 @uart_tx_stopped(%struct.uart_port* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46, %42, %1
  br label %268

50:                                               ; preds = %46
  %51 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %52 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TX_DMA_PAUSE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %58 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dmaengine_resume(i32 %59)
  br label %268

61:                                               ; preds = %50
  %62 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %63 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TX_DMA_RUNNING, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %268

68:                                               ; preds = %61
  %69 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %70 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %68
  %74 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %75 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %76 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %80 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rd_regl(%struct.uart_port* %78, i32 %81)
  %83 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %84 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %82, %86
  %88 = call i32 @wr_regl(%struct.uart_port* %74, i32 %77, i32 %87)
  br label %98

89:                                               ; preds = %68
  %90 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %91 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %92 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %95 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @wr_regl(%struct.uart_port* %90, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %89, %73
  %99 = load i64, i64* %7, align 8
  %100 = icmp ult i64 %99, 4
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @BYTES_TO_ALIGN(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %178

105:                                              ; preds = %101, %98
  %106 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %107 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %108 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SIRFUART_FIFO_STOP, align 4
  %111 = call i32 @wr_regl(%struct.uart_port* %106, i32 %109, i32 %110)
  %112 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %113 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %114 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %117 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %118 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @rd_regl(%struct.uart_port* %116, i32 %119)
  %121 = load i32, i32* @SIRFUART_IO_MODE, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @wr_regl(%struct.uart_port* %112, i32 %115, i32 %122)
  %124 = load i64, i64* %8, align 8
  %125 = call i64 @BYTES_TO_ALIGN(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %105
  %128 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %129 = load i64, i64* %8, align 8
  %130 = call i64 @BYTES_TO_ALIGN(i64 %129)
  %131 = call i64 @sirfsoc_uart_pio_tx_chars(%struct.sirfsoc_uart_port* %128, i64 %130)
  store i64 %131, i64* %9, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %7, align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* %7, align 8
  br label %135

135:                                              ; preds = %127, %105
  %136 = load i64, i64* %7, align 8
  %137 = icmp ult i64 %136, 4
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %140 = load i64, i64* %7, align 8
  %141 = call i64 @sirfsoc_uart_pio_tx_chars(%struct.sirfsoc_uart_port* %139, i64 %140)
  br label %142

142:                                              ; preds = %138, %135
  %143 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %144 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %142
  %148 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %149 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %150 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %153 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %154 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @rd_regl(%struct.uart_port* %152, i32 %155)
  %157 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %158 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %156, %159
  %161 = call i32 @wr_regl(%struct.uart_port* %148, i32 %151, i32 %160)
  br label %171

162:                                              ; preds = %142
  %163 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %164 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %165 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %168 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @wr_regl(%struct.uart_port* %163, i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %162, %147
  %172 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %173 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %174 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @SIRFUART_FIFO_START, align 4
  %177 = call i32 @wr_regl(%struct.uart_port* %172, i32 %175, i32 %176)
  br label %268

178:                                              ; preds = %101
  %179 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %180 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %181 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SIRFUART_FIFO_STOP, align 4
  %184 = call i32 @wr_regl(%struct.uart_port* %179, i32 %182, i32 %183)
  %185 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %186 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %187 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %190 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %191 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @rd_regl(%struct.uart_port* %189, i32 %192)
  %194 = load i32, i32* @SIRFUART_IO_MODE, align 4
  %195 = xor i32 %194, -1
  %196 = and i32 %193, %195
  %197 = call i32 @wr_regl(%struct.uart_port* %185, i32 %188, i32 %196)
  %198 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %199 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %200 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @SIRFUART_FIFO_START, align 4
  %203 = call i32 @wr_regl(%struct.uart_port* %198, i32 %201, i32 %202)
  %204 = load i64, i64* %7, align 8
  %205 = and i64 %204, -4
  store i64 %205, i64* %7, align 8
  %206 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %207 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %210 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %213 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %211, %214
  %216 = load i64, i64* %7, align 8
  %217 = load i32, i32* @DMA_TO_DEVICE, align 4
  %218 = call i32 @dma_map_single(i32 %208, i64 %215, i64 %216, i32 %217)
  %219 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %220 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 8
  %221 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %222 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %225 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i64, i64* %7, align 8
  %228 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %229 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %230 = call %struct.TYPE_7__* @dmaengine_prep_slave_single(i32 %223, i32 %226, i64 %227, i32 %228, i32 %229)
  %231 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %232 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %231, i32 0, i32 3
  store %struct.TYPE_7__* %230, %struct.TYPE_7__** %232, align 8
  %233 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %234 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %233, i32 0, i32 3
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = icmp ne %struct.TYPE_7__* %235, null
  br i1 %236, label %242, label %237

237:                                              ; preds = %178
  %238 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %239 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @dev_err(i32 %240, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %268

242:                                              ; preds = %178
  %243 = load i32, i32* @sirfsoc_uart_tx_dma_complete_callback, align 4
  %244 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %245 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %244, i32 0, i32 3
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  store i32 %243, i32* %247, align 8
  %248 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %249 = bitcast %struct.sirfsoc_uart_port* %248 to i8*
  %250 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %251 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %250, i32 0, i32 3
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  store i8* %249, i8** %253, align 8
  %254 = load i64, i64* %7, align 8
  %255 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %256 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %255, i32 0, i32 1
  store i64 %254, i64* %256, align 8
  %257 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %258 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %257, i32 0, i32 3
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = call i32 @dmaengine_submit(%struct.TYPE_7__* %259)
  %261 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %262 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @dma_async_issue_pending(i32 %263)
  %265 = load i64, i64* @TX_DMA_RUNNING, align 8
  %266 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %2, align 8
  %267 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %266, i32 0, i32 0
  store i64 %265, i64* %267, align 8
  br label %268

268:                                              ; preds = %49, %56, %67, %237, %242, %171
  ret void
}

declare dso_local i64 @CIRC_CNT_TO_END(i32, i64, i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @dmaengine_resume(i32) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i64 @BYTES_TO_ALIGN(i64) #1

declare dso_local i64 @sirfsoc_uart_pio_tx_chars(%struct.sirfsoc_uart_port*, i64) #1

declare dso_local i32 @dma_map_single(i32, i64, i64, i32) #1

declare dso_local %struct.TYPE_7__* @dmaengine_prep_slave_single(i32, i32, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_7__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
