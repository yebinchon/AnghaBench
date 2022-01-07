; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_remove_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_remove_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.usbport_trig_data = type { %struct.led_classdev* }
%struct.led_classdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.usbport_trig_port = type { %struct.usbport_trig_port*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@ports_group = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbport_trig_data*, %struct.usbport_trig_port*)* @usbport_trig_remove_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbport_trig_remove_port(%struct.usbport_trig_data* %0, %struct.usbport_trig_port* %1) #0 {
  %3 = alloca %struct.usbport_trig_data*, align 8
  %4 = alloca %struct.usbport_trig_port*, align 8
  %5 = alloca %struct.led_classdev*, align 8
  store %struct.usbport_trig_data* %0, %struct.usbport_trig_data** %3, align 8
  store %struct.usbport_trig_port* %1, %struct.usbport_trig_port** %4, align 8
  %6 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %3, align 8
  %7 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %6, i32 0, i32 0
  %8 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  store %struct.led_classdev* %8, %struct.led_classdev** %5, align 8
  %9 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %4, align 8
  %10 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %9, i32 0, i32 2
  %11 = call i32 @list_del(i32* %10)
  %12 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %13 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %4, align 8
  %17 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ports_group, i32 0, i32 0), align 4
  %20 = call i32 @sysfs_remove_file_from_group(i32* %15, i32* %18, i32 %19)
  %21 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %4, align 8
  %22 = getelementptr inbounds %struct.usbport_trig_port, %struct.usbport_trig_port* %21, i32 0, i32 0
  %23 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %22, align 8
  %24 = call i32 @kfree(%struct.usbport_trig_port* %23)
  %25 = load %struct.usbport_trig_port*, %struct.usbport_trig_port** %4, align 8
  %26 = call i32 @kfree(%struct.usbport_trig_port* %25)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @sysfs_remove_file_from_group(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.usbport_trig_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
