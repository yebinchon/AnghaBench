; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-tegra.c_tegra_reset_usb_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-tegra.c_tegra_reset_usb_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.tegra_ehci_hcd = type { i32 }
%struct.reset_control = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"nvidia,phy\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"utmi-pads\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"can't get utmi-pads reset from the PHY\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"continuing, but please update your DT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_reset_usb_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_reset_usb_controller(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.tegra_ehci_hcd*, align 8
  %7 = alloca %struct.reset_control*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.usb_hcd* %10, %struct.usb_hcd** %5, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %12 = call %struct.TYPE_3__* @hcd_to_ehci(%struct.usb_hcd* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.tegra_ehci_hcd*
  store %struct.tegra_ehci_hcd* %15, %struct.tegra_ehci_hcd** %6, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.device_node* @of_parse_phandle(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %20, %struct.device_node** %4, align 8
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %73

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call %struct.reset_control* @of_reset_control_get_shared(%struct.device_node* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.reset_control* %28, %struct.reset_control** %7, align 8
  %29 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %30 = call i64 @IS_ERR(%struct.reset_control* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_warn(%struct.TYPE_4__* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %42

39:                                               ; preds = %26
  %40 = load %struct.reset_control*, %struct.reset_control** %7, align 8
  %41 = call i32 @reset_control_put(%struct.reset_control* %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call i32 @of_node_put(%struct.device_node* %43)
  %45 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %6, align 8
  %46 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @reset_control_deassert(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %73

53:                                               ; preds = %42
  %54 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %6, align 8
  %55 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @reset_control_assert(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %73

62:                                               ; preds = %53
  %63 = call i32 @udelay(i32 1)
  %64 = load %struct.tegra_ehci_hcd*, %struct.tegra_ehci_hcd** %6, align 8
  %65 = getelementptr inbounds %struct.tegra_ehci_hcd, %struct.tegra_ehci_hcd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @reset_control_deassert(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %70, %60, %51, %23
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.TYPE_3__* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.reset_control* @of_reset_control_get_shared(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @reset_control_put(%struct.reset_control*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
