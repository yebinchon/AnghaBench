; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-fsl.c_ehci_fsl_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-fsl.c_ehci_fsl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ehci_hcd = type { i32, i64, i32, i32 }
%struct.fsl_usb2_platform_data = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"fsl,mpc5121-usb2-dr\00", align 1
@SBUSCFG_INCR8 = common dso_local global i32 0, align 4
@FSL_SOC_USB_SBUSCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ehci_fsl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_fsl_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_usb2_platform_data*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %8)
  store %struct.ehci_hcd* %9, %struct.ehci_hcd** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  %18 = call %struct.fsl_usb2_platform_data* @dev_get_platdata(%struct.device* %17)
  store %struct.fsl_usb2_platform_data* %18, %struct.fsl_usb2_platform_data** %6, align 8
  %19 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %6, align 8
  %20 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %6, align 8
  %25 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %28 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 256
  %33 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %34 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %38 = call i32 @ehci_setup(%struct.usb_hcd* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %64

43:                                               ; preds = %1
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @of_device_is_compatible(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %53 = load i32, i32* @SBUSCFG_INCR8, align 4
  %54 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %55 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FSL_SOC_USB_SBUSCFG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @ehci_writel(%struct.ehci_hcd* %52, i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %51, %43
  %61 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %62 = call i32 @ehci_fsl_reinit(%struct.ehci_hcd* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %41
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local %struct.fsl_usb2_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @ehci_setup(%struct.usb_hcd*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i64) #1

declare dso_local i32 @ehci_fsl_reinit(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
