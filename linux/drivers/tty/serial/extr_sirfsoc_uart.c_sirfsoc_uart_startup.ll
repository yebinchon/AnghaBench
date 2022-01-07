; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.sirfsoc_uart_port = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i64, i32, %struct.TYPE_5__, i64, i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i64, %struct.sirfsoc_int_en, %struct.sirfsoc_register }
%struct.sirfsoc_int_en = type { i32 }
%struct.sirfsoc_register = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@sirfsoc_uart_isr = common dso_local global i32 0, align 4
@SIRFUART_PORT_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"UART%d request IRQ line (%d) failed.\0A\00", align 1
@SIRFUART_IO_MODE = common dso_local global i32 0, align 4
@SIRFUART_RX_DMA_FLUSH = common dso_local global i32 0, align 4
@SIRFUART_RX_EN = common dso_local global i32 0, align 4
@SIRFUART_TX_EN = common dso_local global i32 0, align 4
@SIRF_USP_UART = common dso_local global i64 0, align 8
@SIRFSOC_USP_ENDIAN_CTRL_LSBF = common dso_local global i32 0, align 4
@SIRFSOC_USP_EN = common dso_local global i32 0, align 4
@SIRFUART_FIFO_RESET = common dso_local global i32 0, align 4
@TX_DMA_IDLE = common dso_local global i32 0, align 4
@sirfsoc_uart_usp_cts_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"usp_cts_irq\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"UART-USP:request gpio irq fail\0A\00", align 1
@SIRF_REAL_UART = common dso_local global i64 0, align 8
@SIRFUART_CLEAR_RX_ADDR_EN = common dso_local global i32 0, align 4
@SIRFSOC_USP_FRADDR_CLR_EN = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@SIRFUART_FIFO_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sirfsoc_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.sirfsoc_uart_port*, align 8
  %5 = alloca %struct.sirfsoc_register*, align 8
  %6 = alloca %struct.sirfsoc_int_en*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %9)
  store %struct.sirfsoc_uart_port* %10, %struct.sirfsoc_uart_port** %4, align 8
  %11 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store %struct.sirfsoc_register* %14, %struct.sirfsoc_register** %5, align 8
  %15 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store %struct.sirfsoc_int_en* %18, %struct.sirfsoc_int_en** %6, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IRQ_NOREQUEST, align 4
  %26 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %27 = call i32 @irq_modify_status(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @sirfsoc_uart_isr, align 4
  %32 = load i8*, i8** @SIRFUART_PORT_NAME, align 8
  %33 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %34 = call i32 @request_irq(i32 %30, i32 %31, i32 0, i8* %32, %struct.sirfsoc_uart_port* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %1
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  br label %387

46:                                               ; preds = %1
  %47 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %48 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %49 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %52 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %53 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rd_regl(%struct.uart_port* %51, i32 %54)
  %56 = load i32, i32* @SIRFUART_IO_MODE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @wr_regl(%struct.uart_port* %47, i32 %50, i32 %57)
  %59 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %60 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %61 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %64 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %65 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rd_regl(%struct.uart_port* %63, i32 %66)
  %68 = load i32, i32* @SIRFUART_IO_MODE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @wr_regl(%struct.uart_port* %59, i32 %62, i32 %69)
  %71 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %72 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %73 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %76 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %77 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rd_regl(%struct.uart_port* %75, i32 %78)
  %80 = load i32, i32* @SIRFUART_RX_DMA_FLUSH, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = call i32 @wr_regl(%struct.uart_port* %71, i32 %74, i32 %82)
  %84 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %85 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %86 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %85, i32 0, i32 12
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @wr_regl(%struct.uart_port* %84, i32 %87, i32 0)
  %89 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %90 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %91 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @wr_regl(%struct.uart_port* %89, i32 %92, i32 0)
  %94 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %95 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %96 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SIRFUART_RX_EN, align 4
  %99 = load i32, i32* @SIRFUART_TX_EN, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @wr_regl(%struct.uart_port* %94, i32 %97, i32 %100)
  %102 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %103 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %102, i32 0, i32 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SIRF_USP_UART, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %46
  %110 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %111 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %112 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SIRFSOC_USP_ENDIAN_CTRL_LSBF, align 4
  %115 = load i32, i32* @SIRFSOC_USP_EN, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @wr_regl(%struct.uart_port* %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %109, %46
  %119 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %120 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %121 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SIRFUART_FIFO_RESET, align 4
  %124 = call i32 @wr_regl(%struct.uart_port* %119, i32 %122, i32 %123)
  %125 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %126 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %127 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SIRFUART_FIFO_RESET, align 4
  %130 = call i32 @wr_regl(%struct.uart_port* %125, i32 %128, i32 %129)
  %131 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %132 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %133 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @wr_regl(%struct.uart_port* %131, i32 %134, i32 0)
  %136 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %137 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %138 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %141 = call i32 @SIRFUART_FIFO_THD(%struct.uart_port* %140)
  %142 = call i32 @wr_regl(%struct.uart_port* %136, i32 %139, i32 %141)
  %143 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %144 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %145 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %148 = call i32 @SIRFUART_FIFO_THD(%struct.uart_port* %147)
  %149 = call i32 @wr_regl(%struct.uart_port* %143, i32 %146, i32 %148)
  %150 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %151 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %118
  %155 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %156 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %157 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %160 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @SIRFUART_RX_FIFO_CHK_SC(i32 %161, i32 1)
  %163 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %164 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @SIRFUART_RX_FIFO_CHK_LC(i32 %165, i32 2)
  %167 = or i32 %162, %166
  %168 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %169 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @SIRFUART_RX_FIFO_CHK_HC(i32 %170, i32 4)
  %172 = or i32 %167, %171
  %173 = call i32 @wr_regl(%struct.uart_port* %155, i32 %158, i32 %172)
  br label %174

174:                                              ; preds = %154, %118
  %175 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %176 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %175, i32 0, i32 13
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %202

179:                                              ; preds = %174
  %180 = load i32, i32* @TX_DMA_IDLE, align 4
  %181 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %182 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %181, i32 0, i32 12
  store i32 %180, i32* %182, align 8
  %183 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %184 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %185 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %188 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @SIRFUART_TX_FIFO_CHK_SC(i32 %189, i32 27)
  %191 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %192 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @SIRFUART_TX_FIFO_CHK_LC(i32 %193, i32 14)
  %195 = or i32 %190, %194
  %196 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %197 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @SIRFUART_TX_FIFO_CHK_HC(i32 %198, i32 4)
  %200 = or i32 %195, %199
  %201 = call i32 @wr_regl(%struct.uart_port* %183, i32 %186, i32 %200)
  br label %202

202:                                              ; preds = %179, %174
  %203 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %204 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %203, i32 0, i32 0
  store i32 0, i32* %204, align 8
  %205 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %206 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %205, i32 0, i32 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @SIRF_USP_UART, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %243

212:                                              ; preds = %202
  %213 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %214 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %213, i32 0, i32 11
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %243

217:                                              ; preds = %212
  %218 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %219 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @gpio_to_irq(i32 %220)
  %222 = load i32, i32* @IRQ_NOREQUEST, align 4
  %223 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %224 = call i32 @irq_modify_status(i32 %221, i32 %222, i32 %223)
  %225 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %226 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %225, i32 0, i32 10
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @gpio_to_irq(i32 %227)
  %229 = load i32, i32* @sirfsoc_uart_usp_cts_handler, align 4
  %230 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %231 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %234 = call i32 @request_irq(i32 %228, i32 %229, i32 %232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.sirfsoc_uart_port* %233)
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %217
  %238 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %239 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i32, i8*, ...) @dev_err(i32 %240, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %381

242:                                              ; preds = %217
  br label %243

243:                                              ; preds = %242, %212, %202
  %244 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %245 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %244, i32 0, i32 4
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @SIRF_REAL_UART, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %263

251:                                              ; preds = %243
  %252 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %253 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %252, i32 0, i32 6
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %251
  %257 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %258 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %259 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @SIRFUART_CLEAR_RX_ADDR_EN, align 4
  %262 = call i32 @wr_regl(%struct.uart_port* %257, i32 %260, i32 %261)
  br label %263

263:                                              ; preds = %256, %251, %243
  %264 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %265 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %264, i32 0, i32 4
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @SIRF_USP_UART, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %289

271:                                              ; preds = %263
  %272 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %273 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %272, i32 0, i32 6
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %289

276:                                              ; preds = %271
  %277 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %278 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %279 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %282 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %283 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @rd_regl(%struct.uart_port* %281, i32 %284)
  %286 = load i32, i32* @SIRFSOC_USP_FRADDR_CLR_EN, align 4
  %287 = or i32 %285, %286
  %288 = call i32 @wr_regl(%struct.uart_port* %277, i32 %280, i32 %287)
  br label %289

289:                                              ; preds = %276, %271, %263
  %290 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %291 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %290, i32 0, i32 6
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %324

294:                                              ; preds = %289
  %295 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %296 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %324, label %299

299:                                              ; preds = %294
  %300 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %301 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %300, i32 0, i32 1
  store i32 1, i32* %301, align 4
  %302 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %303 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %302, i32 0, i32 2
  store i32 20000000, i32* %303, align 8
  %304 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %305 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %304, i32 0, i32 3
  store i32 -1, i32* %305, align 4
  %306 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %307 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %306, i32 0, i32 9
  store i64 0, i64* %307, align 8
  %308 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %309 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %308, i32 0, i32 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  store i64 0, i64* %311, align 8
  %312 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %313 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %312, i32 0, i32 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  store i64 0, i64* %315, align 8
  %316 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %317 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %316, i32 0, i32 7
  %318 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %319 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @ns_to_ktime(i32 %320)
  %322 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %323 = call i32 @hrtimer_start(i32* %317, i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %299, %294, %289
  %325 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %326 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %327 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @SIRFUART_FIFO_START, align 4
  %330 = call i32 @wr_regl(%struct.uart_port* %325, i32 %328, i32 %329)
  %331 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %332 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %331, i32 0, i32 6
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %324
  %336 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %337 = call i32 @sirfsoc_uart_start_next_rx_dma(%struct.uart_port* %336)
  br label %376

338:                                              ; preds = %324
  %339 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %340 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 8
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %362, label %343

343:                                              ; preds = %338
  %344 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %345 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %346 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %349 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %350 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @rd_regl(%struct.uart_port* %348, i32 %351)
  %353 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %6, align 8
  %354 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %355 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %354, i32 0, i32 4
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = call i32 @SIRFUART_RX_IO_INT_EN(%struct.sirfsoc_int_en* %353, i64 %358)
  %360 = or i32 %352, %359
  %361 = call i32 @wr_regl(%struct.uart_port* %344, i32 %347, i32 %360)
  br label %375

362:                                              ; preds = %338
  %363 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %364 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %365 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %6, align 8
  %368 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %369 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %368, i32 0, i32 4
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = call i32 @SIRFUART_RX_IO_INT_EN(%struct.sirfsoc_int_en* %367, i64 %372)
  %374 = call i32 @wr_regl(%struct.uart_port* %363, i32 %366, i32 %373)
  br label %375

375:                                              ; preds = %362, %343
  br label %376

376:                                              ; preds = %375, %335
  %377 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %378 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @enable_irq(i32 %379)
  store i32 0, i32* %2, align 4
  br label %389

381:                                              ; preds = %237
  %382 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %383 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %386 = call i32 @free_irq(i32 %384, %struct.sirfsoc_uart_port* %385)
  br label %387

387:                                              ; preds = %381, %37
  %388 = load i32, i32* %8, align 4
  store i32 %388, i32* %2, align 4
  br label %389

389:                                              ; preds = %387, %376
  %390 = load i32, i32* %2, align 4
  ret i32 %390
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i32 @irq_modify_status(i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.sirfsoc_uart_port*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @SIRFUART_FIFO_THD(%struct.uart_port*) #1

declare dso_local i32 @SIRFUART_RX_FIFO_CHK_SC(i32, i32) #1

declare dso_local i32 @SIRFUART_RX_FIFO_CHK_LC(i32, i32) #1

declare dso_local i32 @SIRFUART_RX_FIFO_CHK_HC(i32, i32) #1

declare dso_local i32 @SIRFUART_TX_FIFO_CHK_SC(i32, i32) #1

declare dso_local i32 @SIRFUART_TX_FIFO_CHK_LC(i32, i32) #1

declare dso_local i32 @SIRFUART_TX_FIFO_CHK_HC(i32, i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @sirfsoc_uart_start_next_rx_dma(%struct.uart_port*) #1

declare dso_local i32 @SIRFUART_RX_IO_INT_EN(%struct.sirfsoc_int_en*, i64) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @free_irq(i32, %struct.sirfsoc_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
