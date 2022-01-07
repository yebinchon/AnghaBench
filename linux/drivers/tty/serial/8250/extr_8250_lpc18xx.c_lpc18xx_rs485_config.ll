; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpc18xx.c_lpc18xx_rs485_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpc18xx.c_lpc18xx_rs485_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.serial_rs485 }
%struct.serial_rs485 = type { i32, i32, i64, %struct.serial_rs485* }
%struct.uart_8250_port = type { i32 (%struct.uart_8250_port*)* }

@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@LPC18XX_UART_RS485CTRL_NMMEN = common dso_local global i32 0, align 4
@LPC18XX_UART_RS485CTRL_DCTRL = common dso_local global i32 0, align 4
@LPC18XX_UART_RS485CTRL_OINV = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@LPC18XX_UART_RS485DLY_MAX = common dso_local global i32 0, align 4
@LPC18XX_UART_RS485CTRL = common dso_local global i32 0, align 4
@LPC18XX_UART_RS485DLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_rs485*)* @lpc18xx_rs485_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_rs485_config(%struct.uart_port* %0, %struct.serial_rs485* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.serial_rs485*, align 8
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.serial_rs485* %1, %struct.serial_rs485** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %9)
  store %struct.uart_8250_port* %10, %struct.uart_8250_port** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %12 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SER_RS485_ENABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %19 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %18, i32 0, i32 3
  %20 = load %struct.serial_rs485*, %struct.serial_rs485** %19, align 8
  %21 = call i32 @memset(%struct.serial_rs485* %20, i32 0, i32 8)
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %24 = call i32 @memset(%struct.serial_rs485* %23, i32 0, i32 24)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* @SER_RS485_ENABLED, align 4
  %27 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %32 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %36 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SER_RS485_ENABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %25
  %42 = load i32, i32* @LPC18XX_UART_RS485CTRL_NMMEN, align 4
  %43 = load i32, i32* @LPC18XX_UART_RS485CTRL_DCTRL, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %48 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load i32, i32* @LPC18XX_UART_RS485CTRL_OINV, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %60 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %69

63:                                               ; preds = %41
  %64 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %65 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %66 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %53
  br label %70

70:                                               ; preds = %69, %25
  %71 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %72 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %105

75:                                               ; preds = %70
  %76 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %80 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %79, i32 0, i32 0
  %81 = load i32 (%struct.uart_8250_port*)*, i32 (%struct.uart_8250_port*)** %80, align 8
  %82 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %83 = call i32 %81(%struct.uart_8250_port* %82)
  %84 = udiv i32 %78, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %86 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = mul i32 %87, %88
  %90 = load i32, i32* @MSEC_PER_SEC, align 4
  %91 = call i32 @DIV_ROUND_UP(i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @LPC18XX_UART_RS485DLY_MAX, align 4
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %75
  %96 = load i32, i32* @LPC18XX_UART_RS485DLY_MAX, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %75
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @MSEC_PER_SEC, align 4
  %100 = mul i32 %98, %99
  %101 = load i32, i32* %8, align 4
  %102 = udiv i32 %100, %101
  %103 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %104 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %97, %70
  %106 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %107 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %109 = load i32, i32* @LPC18XX_UART_RS485CTRL, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @serial_out(%struct.uart_8250_port* %108, i32 %109, i32 %110)
  %112 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %113 = load i32, i32* @LPC18XX_UART_RS485DLY, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @serial_out(%struct.uart_8250_port* %112, i32 %113, i32 %114)
  %116 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %117 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %116, i32 0, i32 1
  %118 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %119 = bitcast %struct.serial_rs485* %117 to i8*
  %120 = bitcast %struct.serial_rs485* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 24, i1 false)
  ret i32 0
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @memset(%struct.serial_rs485*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
