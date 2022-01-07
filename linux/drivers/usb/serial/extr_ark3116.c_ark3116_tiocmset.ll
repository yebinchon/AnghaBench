; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ark3116.c_ark3116_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ark3116.c_ark3116_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.ark3116_private = type { i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@TIOCM_OUT1 = common dso_local global i32 0, align 4
@UART_MCR_OUT1 = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @ark3116_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ark3116_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca %struct.ark3116_private*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %7, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %13 = call %struct.ark3116_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.ark3116_private* %13, %struct.ark3116_private** %8, align 8
  %14 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %15 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TIOCM_RTS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @UART_MCR_RTS, align 4
  %23 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %24 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TIOCM_DTR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @UART_MCR_DTR, align 4
  %34 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %35 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @TIOCM_OUT1, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @UART_MCR_OUT1, align 4
  %45 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %46 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @TIOCM_OUT2, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @UART_MCR_OUT2, align 4
  %56 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %57 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @TIOCM_RTS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32, i32* @UART_MCR_RTS, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %69 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %60
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @TIOCM_DTR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* @UART_MCR_DTR, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %81 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @TIOCM_OUT1, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* @UART_MCR_OUT1, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %93 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89, %84
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @TIOCM_OUT2, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* @UART_MCR_OUT2, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %105 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %110 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @UART_MCR, align 4
  %113 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %114 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ark3116_write_reg(i32 %111, i32 %112, i32 %115)
  %117 = load %struct.ark3116_private*, %struct.ark3116_private** %8, align 8
  %118 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  ret i32 0
}

declare dso_local %struct.ark3116_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ark3116_write_reg(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
