; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mv.c_mv_ehci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mv.c_mv_ehci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i64 }
%struct.ehci_hcd_mv = type { i64, i32 (i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MV_USB_MODE_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv_ehci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_ehci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ehci_hcd_mv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.usb_hcd* %6, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.ehci_hcd_mv* @hcd_to_ehci_hcd_mv(%struct.usb_hcd* %7)
  store %struct.ehci_hcd_mv* %8, %struct.ehci_hcd_mv** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = call i32 @usb_remove_hcd(%struct.usb_hcd* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.ehci_hcd_mv*, %struct.ehci_hcd_mv** %4, align 8
  %18 = getelementptr inbounds %struct.ehci_hcd_mv, %struct.ehci_hcd_mv* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_2__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.ehci_hcd_mv*, %struct.ehci_hcd_mv** %4, align 8
  %24 = getelementptr inbounds %struct.ehci_hcd_mv, %struct.ehci_hcd_mv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @otg_set_host(i32 %27, i32* null)
  br label %29

29:                                               ; preds = %22, %16
  %30 = load %struct.ehci_hcd_mv*, %struct.ehci_hcd_mv** %4, align 8
  %31 = getelementptr inbounds %struct.ehci_hcd_mv, %struct.ehci_hcd_mv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MV_USB_MODE_HOST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.ehci_hcd_mv*, %struct.ehci_hcd_mv** %4, align 8
  %37 = getelementptr inbounds %struct.ehci_hcd_mv, %struct.ehci_hcd_mv* %36, i32 0, i32 1
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = icmp ne i32 (i32)* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.ehci_hcd_mv*, %struct.ehci_hcd_mv** %4, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd_mv, %struct.ehci_hcd_mv* %41, i32 0, i32 1
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = call i32 %43(i32 0)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.ehci_hcd_mv*, %struct.ehci_hcd_mv** %4, align 8
  %47 = call i32 @mv_ehci_disable(%struct.ehci_hcd_mv* %46)
  br label %48

48:                                               ; preds = %45, %29
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %50 = call i32 @usb_put_hcd(%struct.usb_hcd* %49)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ehci_hcd_mv* @hcd_to_ehci_hcd_mv(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_2__*) #1

declare dso_local i32 @otg_set_host(i32, i32*) #1

declare dso_local i32 @mv_ehci_disable(%struct.ehci_hcd_mv*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
