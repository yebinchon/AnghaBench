; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_rlsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_rlsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_omap_port = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_omap_port*, i32)* @serial_omap_rlsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_rlsi(%struct.uart_omap_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.uart_omap_port* %0, %struct.uart_omap_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %6, align 1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @UART_LSR_DR, align 4
  %9 = and i32 %7, %8
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %14 = load i32, i32* @UART_RX, align 4
  %15 = call zeroext i8 @serial_in(%struct.uart_omap_port* %13, i32 %14)
  store i8 %15, i8* %6, align 1
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @UART_LSR_BI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %16
  %29 = load i32, i32* @TTY_BREAK, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @UART_LSR_FE, align 4
  %31 = load i32, i32* @UART_LSR_PE, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %42, i32 0, i32 1
  %44 = call i64 @uart_handle_break(%struct.TYPE_7__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  br label %93

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @UART_LSR_PE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* @TTY_PARITY, align 4
  store i32 %54, i32* %5, align 4
  %55 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %53, %48
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @UART_LSR_FE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* @TTY_FRAME, align 4
  store i32 %67, i32* %5, align 4
  %68 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %69 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %66, %61
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @UART_LSR_OE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %81 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %79, %74
  %87 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %88 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %87, i32 0, i32 1
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @UART_LSR_OE, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @uart_insert_char(%struct.TYPE_7__* %88, i32 %89, i32 %90, i32 0, i32 %91)
  br label %93

93:                                               ; preds = %86, %46
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_7__*) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_7__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
