; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_disable_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_disable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.mxs_auart_port = type { i32, i64* }

@UART_GPIO_CTS = common dso_local global i64 0, align 8
@UART_GPIO_DSR = common dso_local global i64 0, align 8
@UART_GPIO_RI = common dso_local global i64 0, align 8
@UART_GPIO_DCD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mxs_auart_disable_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_auart_disable_ms(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.mxs_auart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.mxs_auart_port* @to_auart_port(%struct.uart_port* %4)
  store %struct.mxs_auart_port* %5, %struct.mxs_auart_port** %3, align 8
  %6 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %7 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %77

11:                                               ; preds = %1
  %12 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %13 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %15 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @UART_GPIO_CTS, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %23 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @UART_GPIO_CTS, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @disable_irq(i64 %27)
  br label %29

29:                                               ; preds = %21, %11
  %30 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %31 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @UART_GPIO_DSR, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %39 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @UART_GPIO_DSR, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @disable_irq(i64 %43)
  br label %45

45:                                               ; preds = %37, %29
  %46 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %47 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @UART_GPIO_RI, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %55 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @UART_GPIO_RI, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @disable_irq(i64 %59)
  br label %61

61:                                               ; preds = %53, %45
  %62 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %63 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @UART_GPIO_DCD, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %71 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @UART_GPIO_DCD, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @disable_irq(i64 %75)
  br label %77

77:                                               ; preds = %10, %69, %61
  ret void
}

declare dso_local %struct.mxs_auart_port* @to_auart_port(%struct.uart_port*) #1

declare dso_local i32 @disable_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
