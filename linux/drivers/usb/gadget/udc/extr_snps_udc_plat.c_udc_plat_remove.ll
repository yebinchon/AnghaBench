; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_plat.c_udc_plat_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_plat.c_udc_plat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.udc = type { i32, i32, i32, i64, i32, i32 }

@EXTCON_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Synopsys UDC platform driver removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @udc_plat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_plat_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.udc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.udc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.udc* %6, %struct.udc** %4, align 8
  %7 = load %struct.udc*, %struct.udc** %4, align 8
  %8 = getelementptr inbounds %struct.udc, %struct.udc* %7, i32 0, i32 5
  %9 = call i32 @usb_del_gadget_udc(i32* %8)
  %10 = load %struct.udc*, %struct.udc** %4, align 8
  %11 = getelementptr inbounds %struct.udc, %struct.udc* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.udc*, %struct.udc** %4, align 8
  %18 = call i32 @free_dma_pools(%struct.udc* %17)
  %19 = load %struct.udc*, %struct.udc** %4, align 8
  %20 = call i32 @udc_remove(%struct.udc* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %21, i32* null)
  %23 = load %struct.udc*, %struct.udc** %4, align 8
  %24 = getelementptr inbounds %struct.udc, %struct.udc* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.udc*, %struct.udc** %4, align 8
  %29 = getelementptr inbounds %struct.udc, %struct.udc* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @flush_workqueue(i64 %30)
  %32 = load %struct.udc*, %struct.udc** %4, align 8
  %33 = getelementptr inbounds %struct.udc, %struct.udc* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @destroy_workqueue(i64 %34)
  br label %36

36:                                               ; preds = %27, %16
  %37 = load %struct.udc*, %struct.udc** %4, align 8
  %38 = getelementptr inbounds %struct.udc, %struct.udc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @phy_power_off(i32 %39)
  %41 = load %struct.udc*, %struct.udc** %4, align 8
  %42 = getelementptr inbounds %struct.udc, %struct.udc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @phy_exit(i32 %43)
  %45 = load %struct.udc*, %struct.udc** %4, align 8
  %46 = getelementptr inbounds %struct.udc, %struct.udc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EXTCON_USB, align 4
  %49 = load %struct.udc*, %struct.udc** %4, align 8
  %50 = getelementptr inbounds %struct.udc, %struct.udc* %49, i32 0, i32 0
  %51 = call i32 @extcon_unregister_notifier(i32 %47, i32 %48, i32* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_info(i32* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %36, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.udc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @free_dma_pools(%struct.udc*) #1

declare dso_local i32 @udc_remove(%struct.udc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @extcon_unregister_notifier(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
