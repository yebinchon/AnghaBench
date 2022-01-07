; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_usb_serial_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_usb_serial_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_serial = type { i32, i32, %struct.TYPE_3__*, %struct.usb_serial_port**, i32 }
%struct.TYPE_3__ = type { i32 (%struct.usb_serial*)* }
%struct.usb_serial_port = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"device disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_serial_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_serial_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.usb_serial_port*, align 8
  %7 = alloca %struct.tty_struct*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.usb_serial* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.usb_serial* %9, %struct.usb_serial** %4, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %13 = call i32 @usb_serial_console_disconnect(%struct.usb_serial* %12)
  %14 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %15 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %14, i32 0, i32 4
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %18 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %20 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %19, i32 0, i32 4
  %21 = call i32 @mutex_unlock(i32* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %65, %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %25 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %30 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %29, i32 0, i32 3
  %31 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %31, i64 %33
  %35 = load %struct.usb_serial_port*, %struct.usb_serial_port** %34, align 8
  store %struct.usb_serial_port* %35, %struct.usb_serial_port** %6, align 8
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %37 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %36, i32 0, i32 2
  %38 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__* %37)
  store %struct.tty_struct* %38, %struct.tty_struct** %7, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %40 = icmp ne %struct.tty_struct* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %43 = call i32 @tty_vhangup(%struct.tty_struct* %42)
  %44 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %45 = call i32 @tty_kref_put(%struct.tty_struct* %44)
  br label %46

46:                                               ; preds = %41, %28
  %47 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %48 = call i32 @usb_serial_port_poison_urbs(%struct.usb_serial_port* %47)
  %49 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %50 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @wake_up_interruptible(i32* %51)
  %53 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %54 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %53, i32 0, i32 1
  %55 = call i32 @cancel_work_sync(i32* %54)
  %56 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %57 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %56, i32 0, i32 0
  %58 = call i64 @device_is_registered(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %62 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %61, i32 0, i32 0
  %63 = call i32 @device_del(i32* %62)
  br label %64

64:                                               ; preds = %60, %46
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %70 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32 (%struct.usb_serial*)*, i32 (%struct.usb_serial*)** %72, align 8
  %74 = icmp ne i32 (%struct.usb_serial*)* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %77 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32 (%struct.usb_serial*)*, i32 (%struct.usb_serial*)** %79, align 8
  %81 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %82 = call i32 %80(%struct.usb_serial* %81)
  br label %83

83:                                               ; preds = %75, %68
  %84 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %85 = call i32 @usb_serial_put(%struct.usb_serial* %84)
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i32 @dev_info(%struct.device* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.usb_serial* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_serial_console_disconnect(%struct.usb_serial*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__*) #1

declare dso_local i32 @tty_vhangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @usb_serial_port_poison_urbs(%struct.usb_serial_port*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @usb_serial_put(%struct.usb_serial*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
