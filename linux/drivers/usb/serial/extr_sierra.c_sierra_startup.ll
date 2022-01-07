; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_sierra.c_sierra_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }
%struct.sierra_intf_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nmea = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @sierra_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sierra_startup(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.sierra_intf_private*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.sierra_intf_private* @kzalloc(i32 4, i32 %5)
  store %struct.sierra_intf_private* %6, %struct.sierra_intf_private** %4, align 8
  %7 = load %struct.sierra_intf_private*, %struct.sierra_intf_private** %4, align 8
  %8 = icmp ne %struct.sierra_intf_private* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.sierra_intf_private*, %struct.sierra_intf_private** %4, align 8
  %14 = getelementptr inbounds %struct.sierra_intf_private, %struct.sierra_intf_private* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %17 = load %struct.sierra_intf_private*, %struct.sierra_intf_private** %4, align 8
  %18 = call i32 @usb_set_serial_data(%struct.usb_serial* %16, %struct.sierra_intf_private* %17)
  %19 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %20 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sierra_set_power_state(i32 %21, i32 0)
  %23 = load i64, i64* @nmea, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %12
  %26 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %27 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sierra_vsc_set_nmea(i32 %28, i32 1)
  br label %30

30:                                               ; preds = %25, %12
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.sierra_intf_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_set_serial_data(%struct.usb_serial*, %struct.sierra_intf_private*) #1

declare dso_local i32 @sierra_set_power_state(i32, i32) #1

declare dso_local i32 @sierra_vsc_set_nmea(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
