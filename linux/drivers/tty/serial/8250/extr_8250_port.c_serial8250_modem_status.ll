; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, i32, %struct.uart_port }
%struct.uart_port = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@UART_MSR = common dso_local global i32 0, align 4
@UART_MSR_ANY_DELTA = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_MSR_TERI = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial8250_modem_status(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 2
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %8 = load i32, i32* @UART_MSR, align 4
  %9 = call i32 @serial_in(%struct.uart_8250_port* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @UART_MSR_ANY_DELTA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %1
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UART_IER_MSI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %84

28:                                               ; preds = %21
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %84

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @UART_MSR_TERI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @UART_MSR_DDSR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @UART_MSR_DDCD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @UART_MSR_DCD, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @uart_handle_dcd_change(%struct.uart_port* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @UART_MSR_DCTS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @UART_MSR_CTS, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @uart_handle_cts_change(%struct.uart_port* %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = call i32 @wake_up_interruptible(i32* %82)
  br label %84

84:                                               ; preds = %77, %28, %21, %1
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
