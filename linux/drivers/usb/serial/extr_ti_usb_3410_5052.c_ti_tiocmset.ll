; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.ti_port = type { i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@TI_MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TI_MCR_DTR = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@TI_MCR_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @ti_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca %struct.ti_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %12, align 8
  store %struct.usb_serial_port* %13, %struct.usb_serial_port** %7, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %15 = call %struct.ti_port* @usb_get_serial_port_data(%struct.usb_serial_port* %14)
  store %struct.ti_port* %15, %struct.ti_port** %8, align 8
  %16 = load %struct.ti_port*, %struct.ti_port** %8, align 8
  %17 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %16, i32 0, i32 1
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ti_port*, %struct.ti_port** %8, align 8
  %21 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @TIOCM_RTS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @TI_MCR_RTS, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @TIOCM_DTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @TI_MCR_DTR, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @TIOCM_LOOP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @TI_MCR_LOOP, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @TIOCM_RTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @TI_MCR_RTS, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @TIOCM_DTR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @TI_MCR_DTR, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @TIOCM_LOOP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* @TI_MCR_LOOP, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.ti_port*, %struct.ti_port** %8, align 8
  %81 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %80, i32 0, i32 1
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.ti_port*, %struct.ti_port** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ti_set_mcr(%struct.ti_port* %84, i32 %85)
  ret i32 %86
}

declare dso_local %struct.ti_port* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ti_set_mcr(%struct.ti_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
