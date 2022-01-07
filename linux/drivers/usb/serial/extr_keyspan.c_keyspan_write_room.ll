; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_write_room.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_keyspan.c_keyspan_write_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.keyspan_port_private = type { i32, %struct.urb**, %struct.keyspan_device_details* }
%struct.urb = type { i32 }
%struct.keyspan_device_details = type { i64, i32 }

@msg_usa90 = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @keyspan_write_room to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_write_room(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.keyspan_port_private*, align 8
  %6 = alloca %struct.keyspan_device_details*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.urb*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %11, align 8
  store %struct.usb_serial_port* %12, %struct.usb_serial_port** %4, align 8
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %14 = call %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %13)
  store %struct.keyspan_port_private* %14, %struct.keyspan_port_private** %5, align 8
  %15 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %5, align 8
  %16 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %15, i32 0, i32 2
  %17 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %16, align 8
  store %struct.keyspan_device_details* %17, %struct.keyspan_device_details** %6, align 8
  %18 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %6, align 8
  %19 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @msg_usa90, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 64, i32* %8, align 4
  br label %25

24:                                               ; preds = %1
  store i32 63, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %5, align 8
  %27 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %5, align 8
  %30 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %29, i32 0, i32 1
  %31 = load %struct.urb**, %struct.urb*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.urb*, %struct.urb** %31, i64 %33
  %35 = load %struct.urb*, %struct.urb** %34, align 8
  store %struct.urb* %35, %struct.urb** %9, align 8
  %36 = load %struct.urb*, %struct.urb** %9, align 8
  %37 = icmp ne %struct.urb* %36, null
  br i1 %37, label %38, label %74

38:                                               ; preds = %25
  %39 = load %struct.urb*, %struct.urb** %9, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EINPROGRESS, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.keyspan_device_details*, %struct.keyspan_device_details** %6, align 8
  %51 = getelementptr inbounds %struct.keyspan_device_details, %struct.keyspan_device_details* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %49, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.keyspan_port_private*, %struct.keyspan_port_private** %5, align 8
  %55 = getelementptr inbounds %struct.keyspan_port_private, %struct.keyspan_port_private* %54, i32 0, i32 1
  %56 = load %struct.urb**, %struct.urb*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.urb*, %struct.urb** %56, i64 %58
  %60 = load %struct.urb*, %struct.urb** %59, align 8
  store %struct.urb* %60, %struct.urb** %9, align 8
  %61 = load %struct.urb*, %struct.urb** %9, align 8
  %62 = icmp ne %struct.urb* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %47
  %64 = load %struct.urb*, %struct.urb** %9, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EINPROGRESS, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %75

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %47
  br label %74

74:                                               ; preds = %73, %25
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %70, %45
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.keyspan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
