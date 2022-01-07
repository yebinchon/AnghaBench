; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_isp116x-hcd.c_isp116x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_isp116x-hcd.c_isp116x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.isp116x = type { i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @isp116x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp116x_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.isp116x*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %10 = icmp ne %struct.usb_hcd* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %14 = call %struct.isp116x* @hcd_to_isp116x(%struct.usb_hcd* %13)
  store %struct.isp116x* %14, %struct.isp116x** %5, align 8
  %15 = load %struct.isp116x*, %struct.isp116x** %5, align 8
  %16 = call i32 @remove_debug_file(%struct.isp116x* %15)
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %18 = call i32 @usb_remove_hcd(%struct.usb_hcd* %17)
  %19 = load %struct.isp116x*, %struct.isp116x** %5, align 8
  %20 = getelementptr inbounds %struct.isp116x, %struct.isp116x* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @iounmap(i32 %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 1)
  store %struct.resource* %25, %struct.resource** %6, align 8
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @release_mem_region(i32 %28, i32 2)
  %30 = load %struct.isp116x*, %struct.isp116x** %5, align 8
  %31 = getelementptr inbounds %struct.isp116x, %struct.isp116x* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iounmap(i32 %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %6, align 8
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @release_mem_region(i32 %39, i32 2)
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %42 = call i32 @usb_put_hcd(%struct.usb_hcd* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %12, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.isp116x* @hcd_to_isp116x(%struct.usb_hcd*) #1

declare dso_local i32 @remove_debug_file(%struct.isp116x*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
