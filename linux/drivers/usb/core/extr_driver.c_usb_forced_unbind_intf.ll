; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_forced_unbind_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_forced_unbind_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_driver = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"forced unbind\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_forced_unbind_intf(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_driver*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.usb_driver* @to_usb_driver(i32 %7)
  store %struct.usb_driver* %8, %struct.usb_driver** %3, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 1
  %11 = call i32 @dev_dbg(%struct.TYPE_2__* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usb_driver*, %struct.usb_driver** %3, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %14 = call i32 @usb_driver_release_interface(%struct.usb_driver* %12, %struct.usb_interface* %13)
  %15 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  ret void
}

declare dso_local %struct.usb_driver* @to_usb_driver(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
