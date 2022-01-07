; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_qt2_update_msr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_qt2_update_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.qt2_port_private = type { i32, i32 }

@UART_MSR_ANY_DELTA = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_TERI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i8*)* @qt2_update_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qt2_update_msr(%struct.usb_serial_port* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qt2_port_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %12 = call %struct.qt2_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %11)
  store %struct.qt2_port_private* %12, %struct.qt2_port_private** %5, align 8
  %13 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %14 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %19 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %21 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %20, i32 0, i32 1
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @UART_MSR_ANY_DELTA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UART_MSR_DCTS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %35 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @UART_MSR_DDSR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %46 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @UART_MSR_DDCD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %57 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @UART_MSR_TERI, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %68 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %74 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @wake_up_interruptible(i32* %75)
  br label %77

77:                                               ; preds = %72, %2
  ret void
}

declare dso_local %struct.qt2_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
