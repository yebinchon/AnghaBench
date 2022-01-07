; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_size_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_size_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@UART_LCR = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_FCR_CLEAR_RCVR = common dso_local global i8 0, align 1
@UART_FCR_CLEAR_XMIT = common dso_local global i8 0, align 1
@UART_MCR_LOOP = common dso_local global i8 0, align 1
@UART_LCR_CONF_MODE_A = common dso_local global i8 0, align 1
@UART_TX = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@UART_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @size_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @size_fifo(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %9 = load i32, i32* @UART_LCR, align 4
  %10 = call zeroext i8 @serial_in(%struct.uart_8250_port* %8, i32 %9)
  store i8 %10, i8* %5, align 1
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %12 = load i32, i32* @UART_LCR, align 4
  %13 = call i32 @serial_out(%struct.uart_8250_port* %11, i32 %12, i8 zeroext 0)
  %14 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %15 = load i32, i32* @UART_FCR, align 4
  %16 = call zeroext i8 @serial_in(%struct.uart_8250_port* %14, i32 %15)
  store i8 %16, i8* %3, align 1
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %18 = call zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port* %17)
  store i8 %18, i8* %4, align 1
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %20 = load i32, i32* @UART_FCR, align 4
  %21 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @UART_FCR_CLEAR_RCVR, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i8, i8* @UART_FCR_CLEAR_XMIT, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = trunc i32 %28 to i8
  %30 = call i32 @serial_out(%struct.uart_8250_port* %19, i32 %20, i8 zeroext %29)
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %32 = load i8, i8* @UART_MCR_LOOP, align 1
  %33 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %31, i8 zeroext %32)
  %34 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %35 = load i32, i32* @UART_LCR, align 4
  %36 = load i8, i8* @UART_LCR_CONF_MODE_A, align 1
  %37 = call i32 @serial_out(%struct.uart_8250_port* %34, i32 %35, i8 zeroext %36)
  %38 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %39 = call zeroext i16 @serial_dl_read(%struct.uart_8250_port* %38)
  store i16 %39, i16* %6, align 2
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %41 = call i32 @serial_dl_write(%struct.uart_8250_port* %40, i16 zeroext 1)
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %43 = load i32, i32* @UART_LCR, align 4
  %44 = call i32 @serial_out(%struct.uart_8250_port* %42, i32 %43, i8 zeroext 3)
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %54, %1
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 256
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %50 = load i32, i32* @UART_TX, align 4
  %51 = load i32, i32* %7, align 4
  %52 = trunc i32 %51 to i8
  %53 = call i32 @serial_out(%struct.uart_8250_port* %49, i32 %50, i8 zeroext %52)
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %45

57:                                               ; preds = %45
  %58 = call i32 @mdelay(i32 20)
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %77, %57
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %61 = load i32, i32* @UART_LSR, align 4
  %62 = call zeroext i8 @serial_in(%struct.uart_8250_port* %60, i32 %61)
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @UART_LSR_DR, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 256
  br label %71

71:                                               ; preds = %68, %59
  %72 = phi i1 [ false, %59 ], [ %70, %68 ]
  br i1 %72, label %73, label %80

73:                                               ; preds = %71
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %75 = load i32, i32* @UART_RX, align 4
  %76 = call zeroext i8 @serial_in(%struct.uart_8250_port* %74, i32 %75)
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %59

80:                                               ; preds = %71
  %81 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %82 = load i32, i32* @UART_FCR, align 4
  %83 = load i8, i8* %3, align 1
  %84 = call i32 @serial_out(%struct.uart_8250_port* %81, i32 %82, i8 zeroext %83)
  %85 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %86 = load i8, i8* %4, align 1
  %87 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %85, i8 zeroext %86)
  %88 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %89 = load i32, i32* @UART_LCR, align 4
  %90 = load i8, i8* @UART_LCR_CONF_MODE_A, align 1
  %91 = call i32 @serial_out(%struct.uart_8250_port* %88, i32 %89, i8 zeroext %90)
  %92 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %93 = load i16, i16* %6, align 2
  %94 = call i32 @serial_dl_write(%struct.uart_8250_port* %92, i16 zeroext %93)
  %95 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %96 = load i32, i32* @UART_LCR, align 4
  %97 = load i8, i8* %5, align 1
  %98 = call i32 @serial_out(%struct.uart_8250_port* %95, i32 %96, i8 zeroext %97)
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_out_MCR(%struct.uart_8250_port*, i8 zeroext) #1

declare dso_local zeroext i16 @serial_dl_read(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_dl_write(%struct.uart_8250_port*, i16 zeroext) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
