; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_process_read_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_process_read_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, i32, %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_5__, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.f81232_private = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_BRK_ERROR_BITS = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@UART_LSR_PE = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@UART_LSR_FE = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @f81232_process_read_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f81232_process_read_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.f81232_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 2
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %3, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %13 = call %struct.f81232_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.f81232_private* %13, %struct.f81232_private** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = srem i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %1
  br label %147

28:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %140, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %143

35:                                               ; preds = %29
  %36 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %36, i8* %6, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @UART_LSR_BRK_ERROR_BITS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @UART_LSR_BI, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i8, i8* @TTY_BREAK, align 1
  store i8 %53, i8* %6, align 1
  %54 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %55 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %60 = call i32 @usb_serial_handle_break(%struct.usb_serial_port* %59)
  br label %87

61:                                               ; preds = %47
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @UART_LSR_PE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i8, i8* @TTY_PARITY, align 1
  store i8 %67, i8* %6, align 1
  %68 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %69 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  br label %86

73:                                               ; preds = %61
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @UART_LSR_FE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i8, i8* @TTY_FRAME, align 1
  store i8 %79, i8* %6, align 1
  %80 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %81 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %73
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @UART_LSR_OE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %94 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.f81232_private*, %struct.f81232_private** %4, align 8
  %99 = getelementptr inbounds %struct.f81232_private, %struct.f81232_private* %98, i32 0, i32 0
  %100 = call i32 @schedule_work(i32* %99)
  %101 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %102 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %101, i32 0, i32 0
  %103 = load i8, i8* @TTY_OVERRUN, align 1
  %104 = call i32 @tty_insert_flip_char(%struct.TYPE_5__* %102, i8 zeroext 0, i8 signext %103)
  br label %105

105:                                              ; preds = %92, %87
  br label %106

106:                                              ; preds = %105, %35
  %107 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %108 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %114 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add i32 %120, 1
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = call i64 @usb_serial_handle_sysrq_char(%struct.usb_serial_port* %118, i8 zeroext %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %140

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %112, %106
  %130 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %131 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %130, i32 0, i32 0
  %132 = load i8*, i8** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add i32 %133, 1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = load i8, i8* %6, align 1
  %139 = call i32 @tty_insert_flip_char(%struct.TYPE_5__* %131, i8 zeroext %137, i8 signext %138)
  br label %140

140:                                              ; preds = %129, %127
  %141 = load i32, i32* %7, align 4
  %142 = add i32 %141, 2
  store i32 %142, i32* %7, align 4
  br label %29

143:                                              ; preds = %29
  %144 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %145 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %144, i32 0, i32 0
  %146 = call i32 @tty_flip_buffer_push(%struct.TYPE_5__* %145)
  br label %147

147:                                              ; preds = %143, %27
  ret void
}

declare dso_local %struct.f81232_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_serial_handle_break(%struct.usb_serial_port*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.TYPE_5__*, i8 zeroext, i8 signext) #1

declare dso_local i64 @usb_serial_handle_sysrq_char(%struct.usb_serial_port*, i8 zeroext) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
