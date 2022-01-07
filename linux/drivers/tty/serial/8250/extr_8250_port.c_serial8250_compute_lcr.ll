; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_compute_lcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_compute_lcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@UART_LCR_WLEN5 = common dso_local global i8 0, align 1
@UART_LCR_WLEN6 = common dso_local global i8 0, align 1
@UART_LCR_WLEN7 = common dso_local global i8 0, align 1
@UART_LCR_WLEN8 = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@UART_LCR_STOP = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i8 0, align 1
@UART_BUG_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i8 0, align 1
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.uart_8250_port*, i32)* @serial8250_compute_lcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @serial8250_compute_lcr(%struct.uart_8250_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CSIZE, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %15 [
    i32 131, label %9
    i32 130, label %11
    i32 129, label %13
    i32 128, label %16
  ]

9:                                                ; preds = %2
  %10 = load i8, i8* @UART_LCR_WLEN5, align 1
  store i8 %10, i8* %5, align 1
  br label %18

11:                                               ; preds = %2
  %12 = load i8, i8* @UART_LCR_WLEN6, align 1
  store i8 %12, i8* %5, align 1
  br label %18

13:                                               ; preds = %2
  %14 = load i8, i8* @UART_LCR_WLEN7, align 1
  store i8 %14, i8* %5, align 1
  br label %18

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %2, %15
  %17 = load i8, i8* @UART_LCR_WLEN8, align 1
  store i8 %17, i8* %5, align 1
  br label %18

18:                                               ; preds = %16, %13, %11, %9
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CSTOPB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i8, i8* @UART_LCR_STOP, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %5, align 1
  br label %30

30:                                               ; preds = %23, %18
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PARENB, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load i8, i8* @UART_LCR_PARITY, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %5, align 1
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UART_BUG_PARITY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %35
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PARODD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load i8, i8* @UART_LCR_EPAR, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, %59
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %5, align 1
  br label %64

64:                                               ; preds = %57, %52
  %65 = load i8, i8* %5, align 1
  ret i8 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
