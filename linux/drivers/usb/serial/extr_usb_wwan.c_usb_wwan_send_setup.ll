; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_send_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_send_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_wwan_port_private = type { i64, i64 }

@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @usb_wwan_send_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_wwan_send_setup(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_wwan_port_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 0
  %11 = load %struct.usb_serial*, %struct.usb_serial** %10, align 8
  store %struct.usb_serial* %11, %struct.usb_serial** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %13 = call %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.usb_wwan_port_private* %13, %struct.usb_wwan_port_private** %5, align 8
  %14 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %5, align 8
  %15 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %5, align 8
  %23 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 2
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %31 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %39 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call i32 @usb_autopm_get_interface(%struct.TYPE_7__* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %65

46:                                               ; preds = %29
  %47 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %48 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %51 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usb_sndctrlpipe(i32 %52, i32 0)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %57 = call i32 @usb_control_msg(i32 %49, i32 %53, i32 34, i32 33, i32 %54, i32 %55, i32* null, i32 0, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %59 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %58, i32 0, i32 0
  %60 = load %struct.usb_serial*, %struct.usb_serial** %59, align 8
  %61 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = call i32 @usb_autopm_put_interface(%struct.TYPE_7__* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %46, %44
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_7__*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
