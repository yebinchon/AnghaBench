; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_spcp8x5.c_spcp8x5_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.spcp8x5_private = type { i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @spcp8x5_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spcp8x5_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca %struct.spcp8x5_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %12, align 8
  store %struct.usb_serial_port* %13, %struct.usb_serial_port** %7, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %15 = call %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port* %14)
  store %struct.spcp8x5_private* %15, %struct.spcp8x5_private** %8, align 8
  %16 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %17 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @TIOCM_RTS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* @MCR_RTS, align 4
  %26 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %27 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @TIOCM_DTR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @MCR_DTR, align 4
  %37 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %38 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TIOCM_RTS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @MCR_RTS, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %50 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @TIOCM_DTR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @MCR_DTR, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %62 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %67 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  %69 = load %struct.spcp8x5_private*, %struct.spcp8x5_private** %8, align 8
  %70 = getelementptr inbounds %struct.spcp8x5_private, %struct.spcp8x5_private* %69, i32 0, i32 0
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @spcp8x5_set_ctrl_line(%struct.usb_serial_port* %73, i32 %74)
  ret i32 %75
}

declare dso_local %struct.spcp8x5_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spcp8x5_set_ctrl_line(%struct.usb_serial_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
