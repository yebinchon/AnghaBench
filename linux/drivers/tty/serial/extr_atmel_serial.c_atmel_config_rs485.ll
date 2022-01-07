; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_config_rs485.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_config_rs485.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.serial_rs485 }
%struct.serial_rs485 = type { i32, i32 }
%struct.atmel_uart_port = type { i32 }

@ATMEL_US_IDR = common dso_local global i32 0, align 4
@ATMEL_US_MR = common dso_local global i32 0, align 4
@ATMEL_US_USMODE = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Setting UART to RS485\0A\00", align 1
@ATMEL_US_TXEMPTY = common dso_local global i32 0, align 4
@ATMEL_US_TTGR = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_RS485 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Setting UART to RS232\0A\00", align 1
@ATMEL_US_ENDTX = common dso_local global i32 0, align 4
@ATMEL_US_TXBUFE = common dso_local global i32 0, align 4
@ATMEL_US_TXRDY = common dso_local global i32 0, align 4
@ATMEL_US_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_rs485*)* @atmel_config_rs485 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_config_rs485(%struct.uart_port* %0, %struct.serial_rs485* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.serial_rs485*, align 8
  %5 = alloca %struct.atmel_uart_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.serial_rs485* %1, %struct.serial_rs485** %4, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %7)
  store %struct.atmel_uart_port* %8, %struct.atmel_uart_port** %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = load i32, i32* @ATMEL_US_IDR, align 4
  %11 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %12 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @atmel_uart_writel(%struct.uart_port* %9, i32 %10, i32 %13)
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = load i32, i32* @ATMEL_US_MR, align 4
  %17 = call i32 @atmel_uart_readl(%struct.uart_port* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @ATMEL_US_USMODE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %25 = bitcast %struct.serial_rs485* %23 to i8*
  %26 = bitcast %struct.serial_rs485* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %28 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SER_RS485_ENABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %2
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ATMEL_US_TXEMPTY, align 4
  %39 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %40 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = load i32, i32* @ATMEL_US_TTGR, align 4
  %43 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %44 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @atmel_uart_writel(%struct.uart_port* %41, i32 %42, i32 %45)
  %47 = load i32, i32* @ATMEL_US_USMODE_RS485, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %69

50:                                               ; preds = %2
  %51 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = call i64 @atmel_use_pdc_tx(%struct.uart_port* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32, i32* @ATMEL_US_ENDTX, align 4
  %60 = load i32, i32* @ATMEL_US_TXBUFE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %63 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %68

64:                                               ; preds = %50
  %65 = load i32, i32* @ATMEL_US_TXRDY, align 4
  %66 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %67 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68, %33
  %70 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %71 = load i32, i32* @ATMEL_US_MR, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @atmel_uart_writel(%struct.uart_port* %70, i32 %71, i32 %72)
  %74 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %75 = load i32, i32* @ATMEL_US_IER, align 4
  %76 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %77 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @atmel_uart_writel(%struct.uart_port* %74, i32 %75, i32 %78)
  ret i32 0
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @atmel_uart_readl(%struct.uart_port*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @atmel_use_pdc_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
