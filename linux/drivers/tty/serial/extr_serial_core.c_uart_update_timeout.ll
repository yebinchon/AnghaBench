; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_update_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_update_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_update_timeout(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CSIZE, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %14 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %13
  ]

11:                                               ; preds = %3
  store i32 7, i32* %7, align 4
  br label %15

12:                                               ; preds = %3
  store i32 8, i32* %7, align 4
  br label %15

13:                                               ; preds = %3
  store i32 9, i32* %7, align 4
  br label %15

14:                                               ; preds = %3
  store i32 10, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %13, %12, %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CSTOPB, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PARENB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @HZ, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = udiv i32 %39, %40
  %42 = load i32, i32* @HZ, align 4
  %43 = udiv i32 %42, 50
  %44 = add i32 %41, %43
  %45 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
