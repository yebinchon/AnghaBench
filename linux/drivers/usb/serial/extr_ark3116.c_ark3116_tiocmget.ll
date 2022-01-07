; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ark3116.c_ark3116_tiocmget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ark3116.c_ark3116_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.ark3116_private = type { i32, i32, i32, i32 }

@UART_MSR_DSR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@UART_MSR_RI = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_OUT1 = common dso_local global i32 0, align 4
@TIOCM_OUT1 = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @ark3116_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ark3116_tiocmget(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.ark3116_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %9, align 8
  store %struct.usb_serial_port* %10, %struct.usb_serial_port** %3, align 8
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %12 = call %struct.ark3116_private* @usb_get_serial_port_data(%struct.usb_serial_port* %11)
  store %struct.ark3116_private* %12, %struct.ark3116_private** %4, align 8
  %13 = load %struct.ark3116_private*, %struct.ark3116_private** %4, align 8
  %14 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %13, i32 0, i32 3
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ark3116_private*, %struct.ark3116_private** %4, align 8
  %17 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ark3116_private*, %struct.ark3116_private** %4, align 8
  %20 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %19, i32 0, i32 3
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.ark3116_private*, %struct.ark3116_private** %4, align 8
  %23 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %22, i32 0, i32 2
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.ark3116_private*, %struct.ark3116_private** %4, align 8
  %27 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ark3116_private*, %struct.ark3116_private** %4, align 8
  %30 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %29, i32 0, i32 2
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @UART_MSR_DSR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @TIOCM_DSR, align 4
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @UART_MSR_CTS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @TIOCM_CTS, align 4
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = or i32 %41, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @UART_MSR_RI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @TIOCM_RI, align 4
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = or i32 %51, %60
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @UART_MSR_DCD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @TIOCM_CD, align 4
  br label %69

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = or i32 %61, %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @UART_MCR_DTR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @TIOCM_DTR, align 4
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = or i32 %71, %80
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @UART_MCR_RTS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @TIOCM_RTS, align 4
  br label %89

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = or i32 %81, %90
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @UART_MCR_OUT1, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @TIOCM_OUT1, align 4
  br label %99

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  %101 = or i32 %91, %100
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @UART_MCR_OUT2, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @TIOCM_OUT2, align 4
  br label %109

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  %111 = or i32 %101, %110
  ret i32 %111
}

declare dso_local %struct.ark3116_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
