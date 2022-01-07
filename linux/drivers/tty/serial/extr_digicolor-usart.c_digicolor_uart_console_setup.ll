; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_console_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_console_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.console = type { i64 }

@DIGICOLOR_USART_NR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@digicolor_ports = common dso_local global %struct.uart_port** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.console*, i8*)* @digicolor_uart_console_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digicolor_uart_console_setup(%struct.console* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uart_port*, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 115200, i32* %6, align 4
  store i32 8, i32* %7, align 4
  store i32 110, i32* %8, align 4
  store i32 110, i32* %9, align 4
  %11 = load %struct.console*, %struct.console** %4, align 8
  %12 = getelementptr inbounds %struct.console, %struct.console* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.console*, %struct.console** %4, align 8
  %17 = getelementptr inbounds %struct.console, %struct.console* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DIGICOLOR_USART_NR, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.uart_port**, %struct.uart_port*** @digicolor_ports, align 8
  %26 = load %struct.console*, %struct.console** %4, align 8
  %27 = getelementptr inbounds %struct.console, %struct.console* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.uart_port*, %struct.uart_port** %25, i64 %28
  %30 = load %struct.uart_port*, %struct.uart_port** %29, align 8
  store %struct.uart_port* %30, %struct.uart_port** %10, align 8
  %31 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %32 = icmp ne %struct.uart_port* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %50

36:                                               ; preds = %24
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @uart_parse_options(i8* %40, i32* %6, i32* %8, i32* %7, i32* %9)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %44 = load %struct.console*, %struct.console** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @uart_set_options(%struct.uart_port* %43, %struct.console* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %33, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @uart_parse_options(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @uart_set_options(%struct.uart_port*, %struct.console*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
