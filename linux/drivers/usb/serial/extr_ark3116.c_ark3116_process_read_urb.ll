; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ark3116.c_ark3116_process_read_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ark3116.c_ark3116_process_read_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, i32, %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.ark3116_private = type { i32, i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_BRK_ERROR_BITS = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@UART_LSR_PE = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@UART_LSR_FE = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ark3116_process_read_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ark3116_process_read_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.ark3116_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 2
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %3, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %13 = call %struct.ark3116_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.ark3116_private* %13, %struct.ark3116_private** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %17, i8* %6, align 1
  %18 = load %struct.ark3116_private*, %struct.ark3116_private** %4, align 8
  %19 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %18, i32 0, i32 1
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ark3116_private*, %struct.ark3116_private** %4, align 8
  %23 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @UART_LSR_BRK_ERROR_BITS, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ark3116_private*, %struct.ark3116_private** %4, align 8
  %28 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ark3116_private*, %struct.ark3116_private** %4, align 8
  %32 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %31, i32 0, i32 1
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.urb*, %struct.urb** %2, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  br label %91

40:                                               ; preds = %1
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @UART_LSR_BRK_ERROR_BITS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @UART_LSR_BI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i8, i8* @TTY_BREAK, align 1
  store i8 %51, i8* %6, align 1
  br label %68

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @UART_LSR_PE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i8, i8* @TTY_PARITY, align 1
  store i8 %58, i8* %6, align 1
  br label %67

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @UART_LSR_FE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i8, i8* @TTY_FRAME, align 1
  store i8 %65, i8* %6, align 1
  br label %66

66:                                               ; preds = %64, %59
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @UART_LSR_OE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %75 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %74, i32 0, i32 0
  %76 = load i32, i32* @TTY_OVERRUN, align 4
  %77 = call i32 @tty_insert_flip_char(i32* %75, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %40
  %80 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %81 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %80, i32 0, i32 0
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %6, align 1
  %84 = load %struct.urb*, %struct.urb** %2, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @tty_insert_flip_string_fixed_flag(i32* %81, i8* %82, i8 signext %83, i32 %86)
  %88 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %89 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %88, i32 0, i32 0
  %90 = call i32 @tty_flip_buffer_push(i32* %89)
  br label %91

91:                                               ; preds = %79, %39
  ret void
}

declare dso_local %struct.ark3116_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i32) #1

declare dso_local i32 @tty_insert_flip_string_fixed_flag(i32*, i8*, i8 signext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
