; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.s3c24xx_uart_port = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"s3c24xx_serial: unknown pm %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @s3c24xx_serial_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_serial_pm(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.s3c24xx_uart_port*, align 8
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.s3c24xx_uart_port* @to_ourport(%struct.uart_port* %9)
  store %struct.s3c24xx_uart_port* %10, %struct.s3c24xx_uart_port** %7, align 8
  store i32 10000, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %7, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %61 [
    i32 3, label %15
    i32 0, label %45
  ]

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %22 = call i32 @s3c24xx_serial_txempty_nofifo(%struct.uart_port* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i1 [ false, %16 ], [ %24, %20 ]
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = call i32 @udelay(i32 100)
  br label %16

29:                                               ; preds = %25
  %30 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %7, align 8
  %31 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IS_ERR(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %7, align 8
  %37 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_disable_unprepare(i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %7, align 8
  %42 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  br label %67

45:                                               ; preds = %3
  %46 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %7, align 8
  %47 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_prepare_enable(i32 %48)
  %50 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %7, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IS_ERR(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %45
  %56 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %7, align 8
  %57 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_prepare_enable(i32 %58)
  br label %60

60:                                               ; preds = %55, %45
  br label %67

61:                                               ; preds = %3
  %62 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %60, %40
  ret void
}

declare dso_local %struct.s3c24xx_uart_port* @to_ourport(%struct.uart_port*) #1

declare dso_local i32 @s3c24xx_serial_txempty_nofifo(%struct.uart_port*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
