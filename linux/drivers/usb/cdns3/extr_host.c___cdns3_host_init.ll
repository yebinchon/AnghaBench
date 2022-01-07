; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_host.c___cdns3_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_host.c___cdns3_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { i32, i32, %struct.platform_device* }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"xhci-hcd\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"couldn't allocate xHCI device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CDNS3_XHCI_RESOURCES_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"couldn't add resources to xHCI device\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to register xHCI device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3*)* @__cdns3_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cdns3_host_init(%struct.cdns3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.cdns3* %0, %struct.cdns3** %3, align 8
  %6 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %7 = call i32 @cdns3_drd_switch_host(%struct.cdns3* %6, i32 1)
  %8 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %9 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = icmp ne %struct.platform_device* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %14 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %21 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %28 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %27, i32 0, i32 2
  store %struct.platform_device* %26, %struct.platform_device** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %31 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CDNS3_XHCI_RESOURCES_NUM, align 4
  %34 = call i32 @platform_device_add_resources(%struct.platform_device* %29, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %39 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %53

42:                                               ; preds = %19
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = call i32 @platform_device_add(%struct.platform_device* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %49 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %53

52:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %57

53:                                               ; preds = %47, %37
  %54 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %55 = call i32 @platform_device_put(%struct.platform_device* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %52, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @cdns3_drd_switch_host(%struct.cdns3*, i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
