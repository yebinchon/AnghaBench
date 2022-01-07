; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_backup_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_backup_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@LSR_SAVE_FLAGS = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_IIR_ID = common dso_local global i32 0, align 4
@UART_IIR_THRI = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@up = common dso_local global %struct.uart_8250_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @serial8250_backup_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_backup_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %9 = ptrtoint %struct.uart_8250_port* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @timer, align 4
  %12 = call %struct.uart_8250_port* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.uart_8250_port* %12, %struct.uart_8250_port** %3, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %25 = load i32, i32* @UART_IER, align 4
  %26 = call i32 @serial_in(%struct.uart_8250_port* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %28 = load i32, i32* @UART_IER, align 4
  %29 = call i32 @serial_out(%struct.uart_8250_port* %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %32 = load i32, i32* @UART_IIR, align 4
  %33 = call i32 @serial_in(%struct.uart_8250_port* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %35 = load i32, i32* @UART_LSR, align 4
  %36 = call i32 @serial_in(%struct.uart_8250_port* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @LSR_SAVE_FLAGS, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @UART_IIR_NO_INT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %30
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UART_IER_THRI, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %48
  %56 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @uart_circ_empty(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %63, %55
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @UART_LSR_THRE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32, i32* @UART_IIR_ID, align 4
  %76 = load i32, i32* @UART_IIR_NO_INT, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @UART_IIR_THRI, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %74, %69, %63, %48, %30
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @UART_IIR_NO_INT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %91 = call i32 @serial8250_tx_chars(%struct.uart_8250_port* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %94 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %100 = load i32, i32* @UART_IER, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @serial_out(%struct.uart_8250_port* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %92
  %104 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %105 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %110 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %109, i32 0, i32 3
  %111 = load i64, i64* @jiffies, align 8
  %112 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %113 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %112, i32 0, i32 2
  %114 = call i64 @uart_poll_timeout(%struct.TYPE_4__* %113)
  %115 = add nsw i64 %111, %114
  %116 = load i32, i32* @HZ, align 4
  %117 = sdiv i32 %116, 5
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %115, %118
  %120 = call i32 @mod_timer(i32* %110, i64 %119)
  ret void
}

declare dso_local %struct.uart_8250_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @uart_circ_empty(i32*) #1

declare dso_local i32 @serial8250_tx_chars(%struct.uart_8250_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @uart_poll_timeout(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
