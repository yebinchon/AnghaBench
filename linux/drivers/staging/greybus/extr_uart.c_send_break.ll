; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_send_break.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_send_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_tty = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gb_uart_set_break_request = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"invalid break state of %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GB_UART_TYPE_SEND_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_tty*, i32)* @send_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_break(%struct.gb_tty* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_tty*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_uart_set_break_request, align 4
  store %struct.gb_tty* %0, %struct.gb_tty** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.gb_tty*, %struct.gb_tty** %4, align 8
  %14 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %9, %2
  %22 = load i32, i32* %5, align 4
  %23 = getelementptr inbounds %struct.gb_uart_set_break_request, %struct.gb_uart_set_break_request* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.gb_tty*, %struct.gb_tty** %4, align 8
  %25 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GB_UART_TYPE_SEND_BREAK, align 4
  %28 = call i32 @gb_operation_sync(i32 %26, i32 %27, %struct.gb_uart_set_break_request* %6, i32 4, i32* null, i32 0)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_uart_set_break_request*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
