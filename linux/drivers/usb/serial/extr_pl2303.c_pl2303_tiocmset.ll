; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.pl2303_private = type { i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@CONTROL_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@CONTROL_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @pl2303_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_serial_port*, align 8
  %9 = alloca %struct.pl2303_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %14, align 8
  store %struct.usb_serial_port* %15, %struct.usb_serial_port** %8, align 8
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %17 = call %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port* %16)
  store %struct.pl2303_private* %17, %struct.pl2303_private** %9, align 8
  %18 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %19 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %18, i32 0, i32 0
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @TIOCM_RTS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @CONTROL_RTS, align 4
  %28 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %29 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @TIOCM_DTR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @CONTROL_DTR, align 4
  %39 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %40 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @TIOCM_RTS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @CONTROL_RTS, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %52 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @TIOCM_DTR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* @CONTROL_DTR, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %64 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %55
  %68 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %69 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  %71 = load %struct.pl2303_private*, %struct.pl2303_private** %9, align 8
  %72 = getelementptr inbounds %struct.pl2303_private, %struct.pl2303_private* %71, i32 0, i32 0
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @pl2303_set_control_lines(%struct.usb_serial_port* %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @usb_translate_errors(i32 %81)
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.pl2303_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pl2303_set_control_lines(%struct.usb_serial_port*, i32) #1

declare dso_local i32 @usb_translate_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
