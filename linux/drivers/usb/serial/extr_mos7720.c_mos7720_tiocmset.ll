; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_mos7720_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_mos7720_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, i32 }
%struct.moschip_port = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@UART_MCR_LOOP = common dso_local global i32 0, align 4
@MOS7720_MCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @mos7720_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos7720_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca %struct.moschip_port*, align 8
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %11, align 8
  store %struct.usb_serial_port* %12, %struct.usb_serial_port** %7, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %14 = call %struct.moschip_port* @usb_get_serial_port_data(%struct.usb_serial_port* %13)
  store %struct.moschip_port* %14, %struct.moschip_port** %8, align 8
  %15 = load %struct.moschip_port*, %struct.moschip_port** %8, align 8
  %16 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TIOCM_RTS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @UART_MCR_RTS, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %22, %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @TIOCM_DTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @UART_MCR_DTR, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TIOCM_LOOP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @UART_MCR_LOOP, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @TIOCM_RTS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @UART_MCR_RTS, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @TIOCM_DTR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @UART_MCR_DTR, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @TIOCM_LOOP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* @UART_MCR_LOOP, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.moschip_port*, %struct.moschip_port** %8, align 8
  %77 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %79 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %82 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MOS7720_MCR, align 4
  %85 = load %struct.moschip_port*, %struct.moschip_port** %8, align 8
  %86 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @write_mos_reg(i32 %80, i32 %83, i32 %84, i32 %87)
  ret i32 0
}

declare dso_local %struct.moschip_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @write_mos_reg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
