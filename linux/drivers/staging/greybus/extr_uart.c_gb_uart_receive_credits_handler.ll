; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_uart_receive_credits_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_uart_receive_credits_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.gb_message*, %struct.gb_connection* }
%struct.gb_message = type { i32, %struct.gb_uart_receive_credits_request* }
%struct.gb_uart_receive_credits_request = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_tty = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"short receive_credits event received (%zu < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GB_UART_FIRMWARE_CREDITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid number of incoming credits: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_uart_receive_credits_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_uart_receive_credits_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_tty*, align 8
  %6 = alloca %struct.gb_message*, align 8
  %7 = alloca %struct.gb_uart_receive_credits_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %11 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %12 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %11, i32 0, i32 1
  %13 = load %struct.gb_connection*, %struct.gb_connection** %12, align 8
  store %struct.gb_connection* %13, %struct.gb_connection** %4, align 8
  %14 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %15 = call %struct.gb_tty* @gb_connection_get_data(%struct.gb_connection* %14)
  store %struct.gb_tty* %15, %struct.gb_tty** %5, align 8
  %16 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %17 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %16, i32 0, i32 0
  %18 = load %struct.gb_message*, %struct.gb_message** %17, align 8
  store %struct.gb_message* %18, %struct.gb_message** %6, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.gb_message*, %struct.gb_message** %6, align 8
  %20 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %26 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %25, i32 0, i32 5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.gb_message*, %struct.gb_message** %6, align 8
  %30 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %31, i64 4)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %106

35:                                               ; preds = %1
  %36 = load %struct.gb_message*, %struct.gb_message** %6, align 8
  %37 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %36, i32 0, i32 1
  %38 = load %struct.gb_uart_receive_credits_request*, %struct.gb_uart_receive_credits_request** %37, align 8
  store %struct.gb_uart_receive_credits_request* %38, %struct.gb_uart_receive_credits_request** %7, align 8
  %39 = load %struct.gb_uart_receive_credits_request*, %struct.gb_uart_receive_credits_request** %7, align 8
  %40 = getelementptr inbounds %struct.gb_uart_receive_credits_request, %struct.gb_uart_receive_credits_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %44 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %43, i32 0, i32 6
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %50 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %54 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @GB_UART_FIRMWARE_CREDITS, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %35
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %62 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %58, %35
  %68 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %69 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %68, i32 0, i32 6
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %76 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %75, i32 0, i32 5
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %9, align 4
  %80 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %2, align 4
  br label %106

82:                                               ; preds = %67
  %83 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %84 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %89 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %88, i32 0, i32 3
  %90 = call i32 @schedule_work(i32* %89)
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %93 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %92, i32 0, i32 2
  %94 = call i32 @tty_port_tty_wakeup(i32* %93)
  %95 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %96 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GB_UART_FIRMWARE_CREDITS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %102 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %101, i32 0, i32 1
  %103 = call i32 @complete(i32* %102)
  br label %104

104:                                              ; preds = %100, %91
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %74, %24
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.gb_tty* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @tty_port_tty_wakeup(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
