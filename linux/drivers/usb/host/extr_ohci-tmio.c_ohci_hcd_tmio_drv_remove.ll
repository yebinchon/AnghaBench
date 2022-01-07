; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-tmio.c_ohci_hcd_tmio_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-tmio.c_ohci_hcd_tmio_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.tmio_hcd = type { i32 }
%struct.mfd_cell = type { i32 (%struct.platform_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ohci_hcd_tmio_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hcd_tmio_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.tmio_hcd*, align 8
  %5 = alloca %struct.mfd_cell*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.usb_hcd* %7, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.tmio_hcd* @hcd_to_tmio(%struct.usb_hcd* %8)
  store %struct.tmio_hcd* %9, %struct.tmio_hcd** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %10)
  store %struct.mfd_cell* %11, %struct.mfd_cell** %5, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call i32 @usb_remove_hcd(%struct.usb_hcd* %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = call i32 @tmio_stop_hc(%struct.platform_device* %14)
  %16 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %17 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %16, i32 0, i32 0
  %18 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %17, align 8
  %19 = icmp ne i32 (%struct.platform_device*)* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.mfd_cell*, %struct.mfd_cell** %5, align 8
  %22 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %21, i32 0, i32 0
  %23 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %22, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = call i32 %23(%struct.platform_device* %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @iounmap(i32 %29)
  %31 = load %struct.tmio_hcd*, %struct.tmio_hcd** %4, align 8
  %32 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iounmap(i32 %33)
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %36 = call i32 @usb_put_hcd(%struct.usb_hcd* %35)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.tmio_hcd* @hcd_to_tmio(%struct.usb_hcd*) #1

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @tmio_stop_hc(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
