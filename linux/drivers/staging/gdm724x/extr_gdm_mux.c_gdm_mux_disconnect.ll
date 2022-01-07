; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_gdm_mux_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_gdm_mux_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.tty_dev = type { %struct.tty_dev* }
%struct.mux_dev = type { %struct.mux_dev* }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @gdm_mux_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdm_mux_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.tty_dev*, align 8
  %4 = alloca %struct.mux_dev*, align 8
  %5 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %6)
  store %struct.usb_device* %7, %struct.usb_device** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.tty_dev* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.tty_dev* %9, %struct.tty_dev** %3, align 8
  %10 = load %struct.tty_dev*, %struct.tty_dev** %3, align 8
  %11 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %10, i32 0, i32 0
  %12 = load %struct.tty_dev*, %struct.tty_dev** %11, align 8
  %13 = bitcast %struct.tty_dev* %12 to %struct.mux_dev*
  store %struct.mux_dev* %13, %struct.mux_dev** %4, align 8
  %14 = load %struct.mux_dev*, %struct.mux_dev** %4, align 8
  %15 = bitcast %struct.mux_dev* %14 to %struct.tty_dev*
  %16 = call i32 @release_usb(%struct.tty_dev* %15)
  %17 = load %struct.tty_dev*, %struct.tty_dev** %3, align 8
  %18 = call i32 @unregister_lte_tty_device(%struct.tty_dev* %17)
  %19 = load %struct.mux_dev*, %struct.mux_dev** %4, align 8
  %20 = bitcast %struct.mux_dev* %19 to %struct.tty_dev*
  %21 = call i32 @kfree(%struct.tty_dev* %20)
  %22 = load %struct.tty_dev*, %struct.tty_dev** %3, align 8
  %23 = call i32 @kfree(%struct.tty_dev* %22)
  %24 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %25 = call i32 @usb_put_dev(%struct.usb_device* %24)
  ret void
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.tty_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @release_usb(%struct.tty_dev*) #1

declare dso_local i32 @unregister_lte_tty_device(%struct.tty_dev*) #1

declare dso_local i32 @kfree(%struct.tty_dev*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
