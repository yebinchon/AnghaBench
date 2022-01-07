; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_deregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s: deregistering interface driver %s\0A\00", align 1
@usbcore_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_deregister(%struct.usb_driver* %0) #0 {
  %2 = alloca %struct.usb_driver*, align 8
  store %struct.usb_driver* %0, %struct.usb_driver** %2, align 8
  %3 = load i32, i32* @usbcore_name, align 4
  %4 = load %struct.usb_driver*, %struct.usb_driver** %2, align 8
  %5 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %6)
  %8 = load %struct.usb_driver*, %struct.usb_driver** %2, align 8
  %9 = call i32 @usb_remove_newid_files(%struct.usb_driver* %8)
  %10 = load %struct.usb_driver*, %struct.usb_driver** %2, align 8
  %11 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @driver_unregister(i32* %12)
  %14 = load %struct.usb_driver*, %struct.usb_driver** %2, align 8
  %15 = call i32 @usb_free_dynids(%struct.usb_driver* %14)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @usb_remove_newid_files(%struct.usb_driver*) #1

declare dso_local i32 @driver_unregister(i32*) #1

declare dso_local i32 @usb_free_dynids(%struct.usb_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
