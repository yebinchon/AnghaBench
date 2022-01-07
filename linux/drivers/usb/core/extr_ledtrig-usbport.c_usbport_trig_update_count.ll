; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_update_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_update_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbport_trig_data = type { i64, %struct.led_classdev* }
%struct.led_classdev = type { i32 }

@usbport_trig_usb_dev_check = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbport_trig_data*)* @usbport_trig_update_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbport_trig_update_count(%struct.usbport_trig_data* %0) #0 {
  %2 = alloca %struct.usbport_trig_data*, align 8
  %3 = alloca %struct.led_classdev*, align 8
  store %struct.usbport_trig_data* %0, %struct.usbport_trig_data** %2, align 8
  %4 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %2, align 8
  %5 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %4, i32 0, i32 1
  %6 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  store %struct.led_classdev* %6, %struct.led_classdev** %3, align 8
  %7 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %2, align 8
  %8 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %2, align 8
  %10 = load i32, i32* @usbport_trig_usb_dev_check, align 4
  %11 = call i32 @usb_for_each_dev(%struct.usbport_trig_data* %9, i32 %10)
  %12 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %13 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %2, align 8
  %14 = getelementptr inbounds %struct.usbport_trig_data, %struct.usbport_trig_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @LED_FULL, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @LED_OFF, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @led_set_brightness(%struct.led_classdev* %12, i32 %22)
  ret void
}

declare dso_local i32 @usb_for_each_dev(%struct.usbport_trig_data*, i32) #1

declare dso_local i32 @led_set_brightness(%struct.led_classdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
