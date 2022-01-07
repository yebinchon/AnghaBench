; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_opticon.c_opticon_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_opticon.c_opticon_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.opticon_private = type { i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@CONTROL_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @opticon_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opticon_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_serial_port*, align 8
  %9 = alloca %struct.opticon_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %15, align 8
  store %struct.usb_serial_port* %16, %struct.usb_serial_port** %8, align 8
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %18 = call %struct.opticon_private* @usb_get_serial_port_data(%struct.usb_serial_port* %17)
  store %struct.opticon_private* %18, %struct.opticon_private** %9, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.opticon_private*, %struct.opticon_private** %9, align 8
  %20 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %19, i32 0, i32 1
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.opticon_private*, %struct.opticon_private** %9, align 8
  %24 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @TIOCM_RTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.opticon_private*, %struct.opticon_private** %9, align 8
  %32 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TIOCM_RTS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.opticon_private*, %struct.opticon_private** %9, align 8
  %40 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.opticon_private*, %struct.opticon_private** %9, align 8
  %44 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %42, %45
  store i32 %46, i32* %12, align 4
  %47 = load %struct.opticon_private*, %struct.opticon_private** %9, align 8
  %48 = getelementptr inbounds %struct.opticon_private, %struct.opticon_private* %47, i32 0, i32 1
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %68

54:                                               ; preds = %41
  %55 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %56 = load i32, i32* @CONTROL_RTS, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @send_control_msg(%struct.usb_serial_port* %55, i32 %56, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @usb_translate_errors(i32 %65)
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %64, %53
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.opticon_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @send_control_msg(%struct.usb_serial_port*, i32, i32) #1

declare dso_local i32 @usb_translate_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
