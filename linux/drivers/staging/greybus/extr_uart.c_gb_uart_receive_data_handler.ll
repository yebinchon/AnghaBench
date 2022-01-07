; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_uart_receive_data_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_uart_receive_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.gb_message*, %struct.gb_connection* }
%struct.gb_message = type { i32, %struct.gb_uart_recv_data_request* }
%struct.gb_uart_recv_data_request = type { i32, i32, i32 }
%struct.gb_connection = type { i32 }
%struct.gb_tty = type { %struct.TYPE_2__*, %struct.tty_port }
%struct.TYPE_2__ = type { i32 }
%struct.tty_port = type { i32 }

@TTY_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"short receive-data request received (%zu < %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"malformed receive-data request received (%u != %zu)\0A\00", align 1
@GB_UART_RECV_FLAG_BREAK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i64 0, align 8
@GB_UART_RECV_FLAG_PARITY = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i64 0, align 8
@GB_UART_RECV_FLAG_FRAMING = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i64 0, align 8
@GB_UART_RECV_FLAG_OVERRUN = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"UART: RX 0x%08x bytes only wrote 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_uart_receive_data_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_uart_receive_data_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_tty*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca %struct.gb_message*, align 8
  %8 = alloca %struct.gb_uart_recv_data_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %12 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %13 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %12, i32 0, i32 1
  %14 = load %struct.gb_connection*, %struct.gb_connection** %13, align 8
  store %struct.gb_connection* %14, %struct.gb_connection** %4, align 8
  %15 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %16 = call %struct.gb_tty* @gb_connection_get_data(%struct.gb_connection* %15)
  store %struct.gb_tty* %16, %struct.gb_tty** %5, align 8
  %17 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %18 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %17, i32 0, i32 1
  store %struct.tty_port* %18, %struct.tty_port** %6, align 8
  %19 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %20 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %19, i32 0, i32 0
  %21 = load %struct.gb_message*, %struct.gb_message** %20, align 8
  store %struct.gb_message* %21, %struct.gb_message** %7, align 8
  %22 = load i64, i64* @TTY_NORMAL, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %24 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 12
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %30 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %34 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %35, i32 12)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %150

39:                                               ; preds = %1
  %40 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %41 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %40, i32 0, i32 0
  %42 = load %struct.gb_message*, %struct.gb_message** %41, align 8
  %43 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %42, i32 0, i32 1
  %44 = load %struct.gb_uart_recv_data_request*, %struct.gb_uart_recv_data_request** %43, align 8
  store %struct.gb_uart_recv_data_request* %44, %struct.gb_uart_recv_data_request** %8, align 8
  %45 = load %struct.gb_uart_recv_data_request*, %struct.gb_uart_recv_data_request** %8, align 8
  %46 = getelementptr inbounds %struct.gb_uart_recv_data_request, %struct.gb_uart_recv_data_request* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %52 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 12
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %39
  %58 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %59 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %64 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 12
  %68 = trunc i64 %67 to i32
  %69 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %150

72:                                               ; preds = %39
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %150

78:                                               ; preds = %72
  %79 = load %struct.gb_uart_recv_data_request*, %struct.gb_uart_recv_data_request** %8, align 8
  %80 = getelementptr inbounds %struct.gb_uart_recv_data_request, %struct.gb_uart_recv_data_request* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %124

83:                                               ; preds = %78
  %84 = load %struct.gb_uart_recv_data_request*, %struct.gb_uart_recv_data_request** %8, align 8
  %85 = getelementptr inbounds %struct.gb_uart_recv_data_request, %struct.gb_uart_recv_data_request* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GB_UART_RECV_FLAG_BREAK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i64, i64* @TTY_BREAK, align 8
  store i64 %91, i64* %11, align 8
  br label %112

92:                                               ; preds = %83
  %93 = load %struct.gb_uart_recv_data_request*, %struct.gb_uart_recv_data_request** %8, align 8
  %94 = getelementptr inbounds %struct.gb_uart_recv_data_request, %struct.gb_uart_recv_data_request* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @GB_UART_RECV_FLAG_PARITY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i64, i64* @TTY_PARITY, align 8
  store i64 %100, i64* %11, align 8
  br label %111

101:                                              ; preds = %92
  %102 = load %struct.gb_uart_recv_data_request*, %struct.gb_uart_recv_data_request** %8, align 8
  %103 = getelementptr inbounds %struct.gb_uart_recv_data_request, %struct.gb_uart_recv_data_request* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @GB_UART_RECV_FLAG_FRAMING, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i64, i64* @TTY_FRAME, align 8
  store i64 %109, i64* %11, align 8
  br label %110

110:                                              ; preds = %108, %101
  br label %111

111:                                              ; preds = %110, %99
  br label %112

112:                                              ; preds = %111, %90
  %113 = load %struct.gb_uart_recv_data_request*, %struct.gb_uart_recv_data_request** %8, align 8
  %114 = getelementptr inbounds %struct.gb_uart_recv_data_request, %struct.gb_uart_recv_data_request* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @GB_UART_RECV_FLAG_OVERRUN, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %121 = load i32, i32* @TTY_OVERRUN, align 4
  %122 = call i32 @tty_insert_flip_char(%struct.tty_port* %120, i32 0, i32 %121)
  br label %123

123:                                              ; preds = %119, %112
  br label %124

124:                                              ; preds = %123, %78
  %125 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %126 = load %struct.gb_uart_recv_data_request*, %struct.gb_uart_recv_data_request** %8, align 8
  %127 = getelementptr inbounds %struct.gb_uart_recv_data_request, %struct.gb_uart_recv_data_request* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %11, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port* %125, i32 %128, i64 %129, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %124
  %136 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %137 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @dev_err(i32* %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %135, %124
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %148 = call i32 @tty_flip_buffer_push(%struct.tty_port* %147)
  br label %149

149:                                              ; preds = %146, %143
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %75, %57, %28
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.gb_tty* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port*, i32, i64, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
