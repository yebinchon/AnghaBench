; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cypress_m8.c_cypress_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cypress_m8.c_cypress_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.cypress_private = type { i32, i32, i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@CONTROL_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@CONTROL_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @cypress_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca %struct.cypress_private*, align 8
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %11, align 8
  store %struct.usb_serial_port* %12, %struct.usb_serial_port** %7, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %14 = call %struct.cypress_private* @usb_get_serial_port_data(%struct.usb_serial_port* %13)
  store %struct.cypress_private* %14, %struct.cypress_private** %8, align 8
  %15 = load %struct.cypress_private*, %struct.cypress_private** %8, align 8
  %16 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %15, i32 0, i32 1
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @TIOCM_RTS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @CONTROL_RTS, align 4
  %25 = load %struct.cypress_private*, %struct.cypress_private** %8, align 8
  %26 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @TIOCM_DTR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @CONTROL_DTR, align 4
  %36 = load %struct.cypress_private*, %struct.cypress_private** %8, align 8
  %37 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @TIOCM_RTS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @CONTROL_RTS, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.cypress_private*, %struct.cypress_private** %8, align 8
  %49 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @TIOCM_DTR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* @CONTROL_DTR, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.cypress_private*, %struct.cypress_private** %8, align 8
  %61 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.cypress_private*, %struct.cypress_private** %8, align 8
  %66 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %struct.cypress_private*, %struct.cypress_private** %8, align 8
  %68 = getelementptr inbounds %struct.cypress_private, %struct.cypress_private* %67, i32 0, i32 1
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %72 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %73 = call i32 @cypress_write(%struct.tty_struct* %71, %struct.usb_serial_port* %72, i32* null, i32 0)
  ret i32 %73
}

declare dso_local %struct.cypress_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cypress_write(%struct.tty_struct*, %struct.usb_serial_port*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
