; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_uart_hal_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_pch_uart_hal_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eg20t_port = type { i64, %struct.uart_port }
%struct.uart_port = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UART_LSR = common dso_local global i64 0, align 8
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@PCH_UART_RBR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eg20t_port*, i8*, i32)* @pch_uart_hal_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_uart_hal_read(%struct.eg20t_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.eg20t_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uart_port*, align 8
  store %struct.eg20t_port* %0, %struct.eg20t_port** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.eg20t_port*, %struct.eg20t_port** %4, align 8
  %12 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %11, i32 0, i32 1
  store %struct.uart_port* %12, %struct.uart_port** %10, align 8
  %13 = load %struct.eg20t_port*, %struct.eg20t_port** %4, align 8
  %14 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UART_LSR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @ioread8(i64 %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %19 = load %struct.eg20t_port*, %struct.eg20t_port** %4, align 8
  %20 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UART_LSR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @ioread8(i64 %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %68, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @UART_LSR_DR, align 4
  %32 = load i32, i32* @UART_LSR_BI, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %29, %25
  %37 = phi i1 [ false, %25 ], [ %35, %29 ]
  br i1 %37, label %38, label %75

38:                                               ; preds = %36
  %39 = load %struct.eg20t_port*, %struct.eg20t_port** %4, align 8
  %40 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCH_UART_RBR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @ioread8(i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @UART_LSR_BI, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %38
  %50 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %56 = call i64 @uart_handle_break(%struct.uart_port* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %68

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i32, i32* %8, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 %62, i8* %67, align 1
  br label %68

68:                                               ; preds = %60, %58
  %69 = load %struct.eg20t_port*, %struct.eg20t_port** %4, align 8
  %70 = getelementptr inbounds %struct.eg20t_port, %struct.eg20t_port* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UART_LSR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @ioread8(i64 %73)
  store i32 %74, i32* %9, align 4
  br label %25

75:                                               ; preds = %36
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
