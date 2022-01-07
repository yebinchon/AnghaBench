; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-fsl.c_fsl_ehci_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-fsl.c_fsl_ehci_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_usb2_platform_data = type { i32 (%struct.platform_device*)* }
%struct.usb_hcd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_ehci_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ehci_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsl_usb2_platform_data*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.fsl_usb2_platform_data* @dev_get_platdata(i32* %6)
  store %struct.fsl_usb2_platform_data* %7, %struct.fsl_usb2_platform_data** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.usb_hcd* %9, %struct.usb_hcd** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_3__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @otg_set_host(i32 %20, i32* null)
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @usb_put_phy(%struct.TYPE_3__* %24)
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %28 = call i32 @usb_remove_hcd(%struct.usb_hcd* %27)
  %29 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %29, i32 0, i32 0
  %31 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %30, align 8
  %32 = icmp ne i32 (%struct.platform_device*)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %3, align 8
  %35 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %34, i32 0, i32 0
  %36 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %35, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = call i32 %36(%struct.platform_device* %37)
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %41 = call i32 @usb_put_hcd(%struct.usb_hcd* %40)
  ret i32 0
}

declare dso_local %struct.fsl_usb2_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_3__*) #1

declare dso_local i32 @otg_set_host(i32, i32*) #1

declare dso_local i32 @usb_put_phy(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
