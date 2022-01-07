; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.moschip_port = type { %struct.moschip_port*, %struct.moschip_port*, i32, %struct.moschip_port*, i32, i32, i32, i64 }

@MODEM_CONTROL_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @mos7840_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos7840_port_remove(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca %struct.moschip_port*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %5 = call %struct.moschip_port* @mos7840_get_port_private(%struct.usb_serial_port* %4)
  store %struct.moschip_port* %5, %struct.moschip_port** %3, align 8
  %6 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %7 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %12 = load i32, i32* @MODEM_CONTROL_REGISTER, align 4
  %13 = call i32 @mos7840_set_led_sync(%struct.usb_serial_port* %11, i32 %12, i32 768)
  %14 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %15 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %14, i32 0, i32 6
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %18 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %17, i32 0, i32 5
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %21 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @usb_kill_urb(i32 %22)
  %24 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %25 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @usb_free_urb(i32 %26)
  %28 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %29 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %28, i32 0, i32 3
  %30 = load %struct.moschip_port*, %struct.moschip_port** %29, align 8
  %31 = call i32 @kfree(%struct.moschip_port* %30)
  br label %32

32:                                               ; preds = %10, %1
  %33 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %34 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @usb_kill_urb(i32 %35)
  %37 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %38 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @usb_free_urb(i32 %39)
  %41 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %42 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %41, i32 0, i32 1
  %43 = load %struct.moschip_port*, %struct.moschip_port** %42, align 8
  %44 = call i32 @kfree(%struct.moschip_port* %43)
  %45 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %46 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %45, i32 0, i32 0
  %47 = load %struct.moschip_port*, %struct.moschip_port** %46, align 8
  %48 = call i32 @kfree(%struct.moschip_port* %47)
  %49 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %50 = call i32 @kfree(%struct.moschip_port* %49)
  ret i32 0
}

declare dso_local %struct.moschip_port* @mos7840_get_port_private(%struct.usb_serial_port*) #1

declare dso_local i32 @mos7840_set_led_sync(%struct.usb_serial_port*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.moschip_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
