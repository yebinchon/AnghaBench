; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_get_tolerance_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_get_tolerance_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tegra_uart_port*, i32, i64)* @tegra_get_tolerance_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tegra_get_tolerance_rate(%struct.tegra_uart_port* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tegra_uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %52, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp uge i32 %16, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ule i32 %27, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %26
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = mul nsw i64 %39, %47
  %49 = sdiv i64 %48, 10000
  %50 = add nsw i64 %38, %49
  store i64 %50, i64* %4, align 8
  br label %57

51:                                               ; preds = %26, %15
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %9

55:                                               ; preds = %9
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %37
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
