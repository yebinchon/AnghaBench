; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32 }

@ULITE_STATUS_RXVALID = common dso_local global i32 0, align 4
@ULITE_STATUS_OVERRUN = common dso_local global i32 0, align 4
@ULITE_STATUS_TXFULL = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@ULITE_STATUS_PARITY = common dso_local global i32 0, align 4
@ULITE_STATUS_FRAME = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @ulite_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulite_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %14 = load i32, i32* @ULITE_STATUS_OVERRUN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ULITE_STATUS_TXFULL, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @INPCK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load i32, i32* @ULITE_STATUS_PARITY, align 4
  %28 = load i32, i32* @ULITE_STATUS_FRAME, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %26, %3
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IGNPAR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load i32, i32* @ULITE_STATUS_PARITY, align 4
  %45 = load i32, i32* @ULITE_STATUS_FRAME, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ULITE_STATUS_OVERRUN, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %43, %34
  %54 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CREAD, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %62 = load i32, i32* @ULITE_STATUS_PARITY, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ULITE_STATUS_FRAME, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @ULITE_STATUS_OVERRUN, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %60, %53
  %73 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %74 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %75 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %76 = call i32 @uart_get_baud_rate(%struct.uart_port* %73, %struct.ktermios* %74, %struct.ktermios* %75, i32 0, i32 460800)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %78 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %79 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @uart_update_timeout(%struct.uart_port* %77, i32 %80, i32 %81)
  %83 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 2
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
