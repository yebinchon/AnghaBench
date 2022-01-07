; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_pci.c_ci_hdrc_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_pci.c_ci_hdrc_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64 }
%struct.pci_device_id = type { i64 }
%struct.ci_hdrc_platform_data = type { i32 }
%struct.ci_hdrc_pci = type { i32, i32 }
%struct.resource = type { i32, i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"device doesn't provide driver data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No IRQ, check BIOS/PCI setup!\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"ci_hdrc_add_device failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ci_hdrc_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_hdrc_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ci_hdrc_platform_data*, align 8
  %7 = alloca %struct.ci_hdrc_pci*, align 8
  %8 = alloca [3 x %struct.resource], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.ci_hdrc_platform_data*
  store %struct.ci_hdrc_platform_data* %15, %struct.ci_hdrc_platform_data** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 2, i32* %10, align 4
  %16 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %6, align 8
  %17 = icmp ne %struct.ci_hdrc_platform_data* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %121

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ci_hdrc_pci* @devm_kzalloc(i32* %26, i32 8, i32 %27)
  store %struct.ci_hdrc_pci* %28, %struct.ci_hdrc_pci** %7, align 8
  %29 = load %struct.ci_hdrc_pci*, %struct.ci_hdrc_pci** %7, align 8
  %30 = icmp ne %struct.ci_hdrc_pci* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %121

34:                                               ; preds = %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pcim_enable_device(%struct.pci_dev* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %121

41:                                               ; preds = %34
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %121

52:                                               ; preds = %41
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i32 @pci_set_master(%struct.pci_dev* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_try_set_mwi(%struct.pci_dev* %55)
  %57 = call i32 (...) @usb_phy_generic_register()
  %58 = load %struct.ci_hdrc_pci*, %struct.ci_hdrc_pci** %7, align 8
  %59 = getelementptr inbounds %struct.ci_hdrc_pci, %struct.ci_hdrc_pci* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ci_hdrc_pci*, %struct.ci_hdrc_pci** %7, align 8
  %61 = getelementptr inbounds %struct.ci_hdrc_pci, %struct.ci_hdrc_pci* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load %struct.ci_hdrc_pci*, %struct.ci_hdrc_pci** %7, align 8
  %67 = getelementptr inbounds %struct.ci_hdrc_pci, %struct.ci_hdrc_pci* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %3, align 4
  br label %121

70:                                               ; preds = %52
  %71 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 0
  %72 = call i32 @memset(%struct.resource* %71, i32 0, i32 72)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = call i64 @pci_resource_start(%struct.pci_dev* %73, i32 0)
  %75 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 0
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i32 @pci_resource_end(%struct.pci_dev* %77, i32 0)
  %79 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 0
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 16
  %81 = load i32, i32* @IORESOURCE_MEM, align 4
  %82 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 0
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 16
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 1
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @IORESOURCE_IRQ, align 4
  %90 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 1
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %8, i64 0, i64 0
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %6, align 8
  %97 = call i32 @ci_hdrc_add_device(i32* %93, %struct.resource* %94, i32 %95, %struct.ci_hdrc_platform_data* %96)
  %98 = load %struct.ci_hdrc_pci*, %struct.ci_hdrc_pci** %7, align 8
  %99 = getelementptr inbounds %struct.ci_hdrc_pci, %struct.ci_hdrc_pci* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ci_hdrc_pci*, %struct.ci_hdrc_pci** %7, align 8
  %101 = getelementptr inbounds %struct.ci_hdrc_pci, %struct.ci_hdrc_pci* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %70
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.ci_hdrc_pci*, %struct.ci_hdrc_pci** %7, align 8
  %110 = getelementptr inbounds %struct.ci_hdrc_pci, %struct.ci_hdrc_pci* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @usb_phy_generic_unregister(i32 %111)
  %113 = load %struct.ci_hdrc_pci*, %struct.ci_hdrc_pci** %7, align 8
  %114 = getelementptr inbounds %struct.ci_hdrc_pci, %struct.ci_hdrc_pci* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @PTR_ERR(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %121

117:                                              ; preds = %70
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = load %struct.ci_hdrc_pci*, %struct.ci_hdrc_pci** %7, align 8
  %120 = call i32 @pci_set_drvdata(%struct.pci_dev* %118, %struct.ci_hdrc_pci* %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %105, %65, %46, %39, %31, %18
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ci_hdrc_pci* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_try_set_mwi(%struct.pci_dev*) #1

declare dso_local i32 @usb_phy_generic_register(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @ci_hdrc_add_device(i32*, %struct.resource*, i32, %struct.ci_hdrc_platform_data*) #1

declare dso_local i32 @usb_phy_generic_unregister(i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ci_hdrc_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
