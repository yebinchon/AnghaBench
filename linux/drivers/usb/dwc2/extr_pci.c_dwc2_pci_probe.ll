; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_pci.c_dwc2_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_pci.c_dwc2_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.resource = type { i8*, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.dwc2_pci_glue = type { %struct.platform_device*, %struct.platform_device* }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable pci device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error registering generic PHY (%ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dwc2\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"couldn't allocate dwc2 device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"couldn't add resources to dwc2 device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to register dwc2 device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @dwc2_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca [2 x %struct.resource], align 16
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.dwc2_pci_glue*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %10, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pcim_enable_device(%struct.pci_dev* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %10, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %132

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pci_set_master(%struct.pci_dev* %24)
  %26 = call %struct.platform_device* (...) @usb_phy_generic_register()
  store %struct.platform_device* %26, %struct.platform_device** %8, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %28 = call i64 @IS_ERR(%struct.platform_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.platform_device* %32)
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.platform_device* %35)
  store i32 %36, i32* %3, align 4
  br label %132

37:                                               ; preds = %23
  %38 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %39 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store %struct.platform_device* %39, %struct.platform_device** %7, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %41 = icmp ne %struct.platform_device* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %126

47:                                               ; preds = %37
  %48 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %49 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %50 = call i32 @ARRAY_SIZE(%struct.resource* %49)
  %51 = sext i32 %50 to i64
  %52 = mul i64 24, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(%struct.resource* %48, i32 0, i32 %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_resource_start(%struct.pci_dev* %55, i32 0)
  %57 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_resource_end(%struct.pci_dev* %59, i32 0)
  %61 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 16
  %63 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %64, align 16
  %65 = load i32, i32* @IORESOURCE_MEM, align 4
  %66 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 1
  %72 = getelementptr inbounds %struct.resource, %struct.resource* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 1
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @IORESOURCE_IRQ, align 4
  %76 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 1
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %79 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %80 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %81 = call i32 @ARRAY_SIZE(%struct.resource* %80)
  %82 = call i32 @platform_device_add_resources(%struct.platform_device* %78, %struct.resource* %79, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %47
  %86 = load %struct.device*, %struct.device** %10, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %126

88:                                               ; preds = %47
  %89 = load %struct.device*, %struct.device** %10, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store %struct.device* %89, %struct.device** %92, align 8
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %95 = call i32 @dwc2_pci_quirks(%struct.pci_dev* %93, %struct.platform_device* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %126

99:                                               ; preds = %88
  %100 = load %struct.device*, %struct.device** %10, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call %struct.dwc2_pci_glue* @devm_kzalloc(%struct.device* %100, i32 16, i32 %101)
  store %struct.dwc2_pci_glue* %102, %struct.dwc2_pci_glue** %11, align 8
  %103 = load %struct.dwc2_pci_glue*, %struct.dwc2_pci_glue** %11, align 8
  %104 = icmp ne %struct.dwc2_pci_glue* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %126

108:                                              ; preds = %99
  %109 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %110 = call i32 @platform_device_add(%struct.platform_device* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.device*, %struct.device** %10, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %126

116:                                              ; preds = %108
  %117 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %118 = load %struct.dwc2_pci_glue*, %struct.dwc2_pci_glue** %11, align 8
  %119 = getelementptr inbounds %struct.dwc2_pci_glue, %struct.dwc2_pci_glue* %118, i32 0, i32 1
  store %struct.platform_device* %117, %struct.platform_device** %119, align 8
  %120 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %121 = load %struct.dwc2_pci_glue*, %struct.dwc2_pci_glue** %11, align 8
  %122 = getelementptr inbounds %struct.dwc2_pci_glue, %struct.dwc2_pci_glue* %121, i32 0, i32 0
  store %struct.platform_device* %120, %struct.platform_device** %122, align 8
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = load %struct.dwc2_pci_glue*, %struct.dwc2_pci_glue** %11, align 8
  %125 = call i32 @pci_set_drvdata(%struct.pci_dev* %123, %struct.dwc2_pci_glue* %124)
  store i32 0, i32* %3, align 4
  br label %132

126:                                              ; preds = %113, %105, %98, %85, %42
  %127 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %128 = call i32 @usb_phy_generic_unregister(%struct.platform_device* %127)
  %129 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %130 = call i32 @platform_device_put(%struct.platform_device* %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %116, %30, %18
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.platform_device* @usb_phy_generic_register(...) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @dwc2_pci_quirks(%struct.pci_dev*, %struct.platform_device*) #1

declare dso_local %struct.dwc2_pci_glue* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.dwc2_pci_glue*) #1

declare dso_local i32 @usb_phy_generic_unregister(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
