; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usbport_trig_data = type { %struct.TYPE_4__, i32, %struct.led_classdev* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ports_group = common dso_local global i32 0, align 4
@usbport_trig_add_usb_dev_ports = common dso_local global i32 0, align 4
@usbport_trig_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @usbport_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbport_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.usbport_trig_data*, align 8
  %5 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.usbport_trig_data* @kzalloc(i32 16, i32 %6)
  store %struct.usbport_trig_data* %7, %struct.usbport_trig_data** %4, align 8
  %8 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %4, align 8
  %9 = icmp ne %struct.usbport_trig_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %15 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %4, align 8
  %16 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %15, i32 0, i32 2
  store %struct.led_classdev* %14, %struct.led_classdev** %16, align 8
  %17 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %4, align 8
  %18 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %21 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @sysfs_create_group(i32* %23, i32* @ports_group)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %44

28:                                               ; preds = %13
  %29 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %4, align 8
  %30 = load i32, i32* @usbport_trig_add_usb_dev_ports, align 4
  %31 = call i32 @usb_for_each_dev(%struct.usbport_trig_data* %29, i32 %30)
  %32 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %4, align 8
  %33 = call i32 @usbport_trig_update_count(%struct.usbport_trig_data* %32)
  %34 = load i32, i32* @usbport_trig_notify, align 4
  %35 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %4, align 8
  %36 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %39 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %4, align 8
  %40 = call i32 @led_set_trigger_data(%struct.led_classdev* %38, %struct.usbport_trig_data* %39)
  %41 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %4, align 8
  %42 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %41, i32 0, i32 0
  %43 = call i32 @usb_register_notify(%struct.TYPE_4__* %42)
  store i32 0, i32* %2, align 4
  br label %48

44:                                               ; preds = %27
  %45 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %4, align 8
  %46 = call i32 @kfree(%struct.usbport_trig_data* %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %28, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.usbport_trig_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @usb_for_each_dev(%struct.usbport_trig_data*, i32) #1

declare dso_local i32 @usbport_trig_update_count(%struct.usbport_trig_data*) #1

declare dso_local i32 @led_set_trigger_data(%struct.led_classdev*, %struct.usbport_trig_data*) #1

declare dso_local i32 @usb_register_notify(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.usbport_trig_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
