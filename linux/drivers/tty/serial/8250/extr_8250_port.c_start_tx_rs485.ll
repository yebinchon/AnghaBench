; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_start_tx_rs485.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_start_tx_rs485.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_4__, %struct.uart_8250_em485* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.uart_8250_em485 = type { i32, i32* }

@SER_RS485_RX_DURING_TX = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @start_tx_rs485 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_tx_rs485(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.uart_8250_em485*, align 8
  %5 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %6)
  store %struct.uart_8250_port* %7, %struct.uart_8250_port** %3, align 8
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 1
  %10 = load %struct.uart_8250_em485*, %struct.uart_8250_em485** %9, align 8
  store %struct.uart_8250_em485* %10, %struct.uart_8250_em485** %4, align 8
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %20, i32 0, i32 0
  %22 = call i32 @serial8250_stop_rx(%struct.TYPE_4__* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.uart_8250_em485*, %struct.uart_8250_em485** %4, align 8
  %25 = getelementptr inbounds %struct.uart_8250_em485, %struct.uart_8250_em485* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %27 = call zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port* %26)
  store i8 %27, i8* %5, align 1
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @UART_MCR_RTS, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = icmp ne i32 %38, %47
  br i1 %48, label %49, label %97

49:                                               ; preds = %23
  %50 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load i8, i8* @UART_MCR_RTS, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %5, align 1
  br label %73

65:                                               ; preds = %49
  %66 = load i8, i8* @UART_MCR_RTS, align 1
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, -1
  %69 = load i8, i8* %5, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, %68
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %5, align 1
  br label %73

73:                                               ; preds = %65, %58
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %75 = load i8, i8* %5, align 1
  %76 = call i32 @serial8250_out_MCR(%struct.uart_8250_port* %74, i8 zeroext %75)
  %77 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %78 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %73
  %84 = load %struct.uart_8250_em485*, %struct.uart_8250_em485** %4, align 8
  %85 = getelementptr inbounds %struct.uart_8250_em485, %struct.uart_8250_em485* %84, i32 0, i32 0
  %86 = load %struct.uart_8250_em485*, %struct.uart_8250_em485** %4, align 8
  %87 = getelementptr inbounds %struct.uart_8250_em485, %struct.uart_8250_em485* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  %88 = load %struct.uart_8250_em485*, %struct.uart_8250_em485** %4, align 8
  %89 = getelementptr inbounds %struct.uart_8250_em485, %struct.uart_8250_em485* %88, i32 0, i32 0
  %90 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %91 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @start_hrtimer_ms(i32* %89, i64 %94)
  br label %100

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96, %23
  %98 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %99 = call i32 @__start_tx(%struct.uart_port* %98)
  br label %100

100:                                              ; preds = %97, %83
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_stop_rx(%struct.TYPE_4__*) #1

declare dso_local zeroext i8 @serial8250_in_MCR(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_out_MCR(%struct.uart_8250_port*, i8 zeroext) #1

declare dso_local i32 @start_hrtimer_ms(i32*, i64) #1

declare dso_local i32 @__start_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
