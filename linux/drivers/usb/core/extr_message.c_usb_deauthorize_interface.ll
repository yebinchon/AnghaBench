; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_deauthorize_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_deauthorize_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i64, %struct.device }
%struct.device = type { %struct.device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_deauthorize_interface(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 1
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  %9 = call i32 @device_lock(%struct.device* %8)
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @device_lock(%struct.device* %15)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @device_unlock(%struct.device* %19)
  %21 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %22 = call i32 @usb_forced_unbind_intf(%struct.usb_interface* %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  %27 = call i32 @device_unlock(%struct.device* %26)
  ret void
}

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

declare dso_local i32 @usb_forced_unbind_intf(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
