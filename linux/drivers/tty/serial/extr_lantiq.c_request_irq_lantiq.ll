; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_request_irq_lantiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_request_irq_lantiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ltq_uart_port = type { i32, i32, i32 }

@lqasc_tx_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"asc_tx\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request asc_tx\0A\00", align 1
@lqasc_rx_int = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"asc_rx\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to request asc_rx\0A\00", align 1
@lqasc_err_int = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"asc_err\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to request asc_err\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @request_irq_lantiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_irq_lantiq(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ltq_uart_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port* %6)
  store %struct.ltq_uart_port* %7, %struct.ltq_uart_port** %4, align 8
  %8 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %9 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @lqasc_tx_int, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = call i32 @request_irq(i32 %10, i32 %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %24 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @lqasc_rx_int, align 4
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = call i32 @request_irq(i32 %25, i32 %26, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.uart_port* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %57

36:                                               ; preds = %22
  %37 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %38 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @lqasc_err_int, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = call i32 @request_irq(i32 %39, i32 %40, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.uart_port* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %51

50:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %64

51:                                               ; preds = %45
  %52 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %53 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = call i32 @free_irq(i32 %54, %struct.uart_port* %55)
  br label %57

57:                                               ; preds = %51, %31
  %58 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %4, align 8
  %59 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = call i32 @free_irq(i32 %60, %struct.uart_port* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %50, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
