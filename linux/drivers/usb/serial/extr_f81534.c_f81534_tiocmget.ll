; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_tiocmget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81534.c_f81534_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.f81534_port_private = type { i32, i32 }

@F81534_MODEM_STATUS_REG = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@UART_MSR_RI = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @f81534_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f81534_tiocmget(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.f81534_port_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %11, align 8
  store %struct.usb_serial_port* %12, %struct.usb_serial_port** %4, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %14 = call %struct.f81534_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %13)
  store %struct.f81534_port_private* %14, %struct.f81534_port_private** %5, align 8
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %16 = load i32, i32* @F81534_MODEM_STATUS_REG, align 4
  %17 = call i32 @f81534_get_port_register(%struct.usb_serial_port* %15, i32 %16, i32* %8)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %92

22:                                               ; preds = %1
  %23 = load %struct.f81534_port_private*, %struct.f81534_port_private** %5, align 8
  %24 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.f81534_port_private*, %struct.f81534_port_private** %5, align 8
  %27 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.f81534_port_private*, %struct.f81534_port_private** %5, align 8
  %30 = getelementptr inbounds %struct.f81534_port_private, %struct.f81534_port_private* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @UART_MCR_DTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @TIOCM_DTR, align 4
  br label %39

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @UART_MCR_RTS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @TIOCM_RTS, align 4
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %40, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @UART_MSR_CTS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @TIOCM_CTS, align 4
  br label %58

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = or i32 %50, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @UART_MSR_DCD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @TIOCM_CAR, align 4
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = or i32 %60, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @UART_MSR_RI, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @TIOCM_RI, align 4
  br label %78

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 0, %77 ]
  %80 = or i32 %70, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @UART_MSR_DSR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @TIOCM_DSR, align 4
  br label %88

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = or i32 %80, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %20
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.f81534_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @f81534_get_port_register(%struct.usb_serial_port*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
