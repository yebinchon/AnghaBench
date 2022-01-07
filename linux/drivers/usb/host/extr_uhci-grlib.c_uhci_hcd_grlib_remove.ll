; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-grlib.c_uhci_hcd_grlib_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-grlib.c_uhci_hcd_grlib_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"stopping GRLIB GRUSBHC UHCI USB Controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uhci_hcd_grlib_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_hcd_grlib_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.usb_hcd* %5, %struct.usb_hcd** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call i32 @usb_remove_hcd(%struct.usb_hcd* %9)
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @irq_dispose_mapping(i32 %13)
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %16 = call i32 @usb_put_hcd(%struct.usb_hcd* %15)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
