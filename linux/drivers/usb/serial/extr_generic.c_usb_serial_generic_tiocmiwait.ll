; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_generic.c_usb_serial_generic_tiocmiwait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_generic.c_usb_serial_generic_tiocmiwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { %struct.TYPE_2__, i32, %struct.async_icount }
%struct.TYPE_2__ = type { i32 }
%struct.async_icount = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_serial_generic_tiocmiwait(%struct.tty_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_serial_port*, align 8
  %6 = alloca %struct.async_icount, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %5, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 1
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %17 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %16, i32 0, i32 2
  %18 = bitcast %struct.async_icount* %6 to i8*
  %19 = bitcast %struct.async_icount* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %21 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 1
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %25 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @usb_serial_generic_msr_changed(%struct.tty_struct* %28, i64 %29, %struct.async_icount* %6)
  %31 = call i32 @wait_event_interruptible(i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %2
  %35 = load %struct.usb_serial_port*, %struct.usb_serial_port** %5, align 8
  %36 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %35, i32 0, i32 0
  %37 = call i32 @tty_port_initialized(%struct.TYPE_2__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %34, %2
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @usb_serial_generic_msr_changed(%struct.tty_struct*, i64, %struct.async_icount*) #1

declare dso_local i32 @tty_port_initialized(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
