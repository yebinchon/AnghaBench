; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.moschip_port = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@MCR_LOOPBACK = common dso_local global i32 0, align 4
@MODEM_CONTROL_REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"setting MODEM_CONTROL_REGISTER Failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @mos7840_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos7840_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_serial_port*, align 8
  %9 = alloca %struct.moschip_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %13, align 8
  store %struct.usb_serial_port* %14, %struct.usb_serial_port** %8, align 8
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %16 = call %struct.moschip_port* @mos7840_get_port_private(%struct.usb_serial_port* %15)
  store %struct.moschip_port* %16, %struct.moschip_port** %9, align 8
  %17 = load %struct.moschip_port*, %struct.moschip_port** %9, align 8
  %18 = icmp eq %struct.moschip_port* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %98

22:                                               ; preds = %3
  %23 = load %struct.moschip_port*, %struct.moschip_port** %9, align 8
  %24 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TIOCM_RTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32, i32* @MCR_RTS, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %30, %22
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TIOCM_DTR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @MCR_DTR, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @TIOCM_LOOP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @MCR_LOOPBACK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @TIOCM_RTS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @MCR_RTS, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @TIOCM_DTR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @MCR_DTR, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @TIOCM_LOOP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @MCR_LOOPBACK, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.moschip_port*, %struct.moschip_port** %9, align 8
  %85 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %87 = load i32, i32* @MODEM_CONTROL_REGISTER, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @mos7840_set_uart_reg(%struct.usb_serial_port* %86, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %94 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %93, i32 0, i32 0
  %95 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %92, %19
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.moschip_port* @mos7840_get_port_private(%struct.usb_serial_port*) #1

declare dso_local i32 @mos7840_set_uart_reg(%struct.usb_serial_port*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
