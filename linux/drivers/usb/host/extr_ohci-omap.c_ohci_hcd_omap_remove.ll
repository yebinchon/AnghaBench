; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-omap.c_ohci_hcd_omap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-omap.c_ohci_hcd_omap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"stopping USB Controller\0A\00", align 1
@usb_dc_ck = common dso_local global i32 0, align 4
@usb_host_ck = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ohci_hcd_omap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hcd_omap_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.usb_hcd* %5, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call i32 @usb_remove_hcd(%struct.usb_hcd* %11)
  %13 = call i32 @omap_ohci_clock_power(i32 0)
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_5__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @otg_set_host(i32 %24, i32 0)
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @usb_put_phy(%struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = call i64 (...) @machine_is_omap_osk()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @gpio_free(i32 9)
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @iounmap(i32 %38)
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %44 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @release_mem_region(i32 %42, i32 %45)
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %48 = call i32 @usb_put_hcd(%struct.usb_hcd* %47)
  %49 = load i32, i32* @usb_dc_ck, align 4
  %50 = call i32 @clk_put(i32 %49)
  %51 = load i32, i32* @usb_host_ck, align 4
  %52 = call i32 @clk_put(i32 %51)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @omap_ohci_clock_power(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_5__*) #1

declare dso_local i32 @otg_set_host(i32, i32) #1

declare dso_local i32 @usb_put_phy(%struct.TYPE_5__*) #1

declare dso_local i64 @machine_is_omap_osk(...) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
