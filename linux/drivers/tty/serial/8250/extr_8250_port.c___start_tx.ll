; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c___start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c___start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.uart_8250_port = type { i32, i8, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_8250_port*)* }

@UART_BUG_TXEN = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@LSR_SAVE_FLAGS = common dso_local global i8 0, align 1
@UART_LSR_THRE = common dso_local global i8 0, align 1
@PORT_16C950 = common dso_local global i64 0, align 8
@UART_ACR_TXDIS = common dso_local global i32 0, align 4
@UART_ACR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @__start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %5)
  store %struct.uart_8250_port* %6, %struct.uart_8250_port** %3, align 8
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.uart_8250_port*)*, i32 (%struct.uart_8250_port*)** %15, align 8
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %18 = call i32 %16(%struct.uart_8250_port* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %84

21:                                               ; preds = %11, %1
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %23 = call i64 @serial8250_set_THRI(%struct.uart_8250_port* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @UART_BUG_TXEN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %25
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %34 = load i32, i32* @UART_LSR, align 4
  %35 = call zeroext i8 @serial_in(%struct.uart_8250_port* %33, i32 %34)
  store i8 %35, i8* %4, align 1
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @LSR_SAVE_FLAGS, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %41, i32 0, i32 1
  %43 = load i8, i8* %42, align 4
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %40
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 4
  %47 = load i8, i8* %4, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @UART_LSR_THRE, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %55 = call i32 @serial8250_tx_chars(%struct.uart_8250_port* %54)
  br label %56

56:                                               ; preds = %53, %32
  br label %57

57:                                               ; preds = %56, %25
  br label %58

58:                                               ; preds = %57, %21
  %59 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PORT_16C950, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %66 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @UART_ACR_TXDIS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %64
  %72 = load i32, i32* @UART_ACR_TXDIS, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %79 = load i32, i32* @UART_ACR, align 4
  %80 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %81 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @serial_icr_write(%struct.uart_8250_port* %78, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %20, %71, %64, %58
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i64 @serial8250_set_THRI(%struct.uart_8250_port*) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial8250_tx_chars(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_icr_write(%struct.uart_8250_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
