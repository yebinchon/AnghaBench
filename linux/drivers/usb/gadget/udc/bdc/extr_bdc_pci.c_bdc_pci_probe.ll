; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_pci.c_bdc_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_pci.c_bdc_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.resource = type { i32, i8*, i32, i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.bdc_pci = type { %struct.platform_device*, %struct.TYPE_5__* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to enable pci device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BRCM_BDC_NAME = common dso_local global i8* null, align 8
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"couldn't add resources to bdc device\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to register bdc device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @bdc_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdc_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca [2 x %struct.resource], align 16
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.bdc_pci*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.bdc_pci* @devm_kzalloc(%struct.TYPE_5__* %13, i32 16, i32 %14)
  store %struct.bdc_pci* %15, %struct.bdc_pci** %8, align 8
  %16 = load %struct.bdc_pci*, %struct.bdc_pci** %8, align 8
  %17 = icmp ne %struct.bdc_pci* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %141

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.bdc_pci*, %struct.bdc_pci** %8, align 8
  %25 = getelementptr inbounds %struct.bdc_pci, %struct.bdc_pci* %24, i32 0, i32 1
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_enable_device(%struct.pci_dev* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_5__* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %141

36:                                               ; preds = %21
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @pci_set_master(%struct.pci_dev* %37)
  %39 = load i8*, i8** @BRCM_BDC_NAME, align 8
  %40 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %41 = call %struct.platform_device* @platform_device_alloc(i8* %39, i32 %40)
  store %struct.platform_device* %41, %struct.platform_device** %7, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %43 = icmp ne %struct.platform_device* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %141

47:                                               ; preds = %36
  %48 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %49 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %50 = call i32 @ARRAY_SIZE(%struct.resource* %49)
  %51 = sext i32 %50 to i64
  %52 = mul i64 24, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(%struct.resource* %48, i32 0, i32 %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @bdc_setup_msi(%struct.pci_dev* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @pci_resource_start(%struct.pci_dev* %57, i32 0)
  %59 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 16
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = call i32 @pci_resource_end(%struct.pci_dev* %61, i32 0)
  %63 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i8*, i8** @BRCM_BDC_NAME, align 8
  %66 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 16
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 1
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** @BRCM_BDC_NAME, align 8
  %77 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 1
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @IORESOURCE_IRQ, align 4
  %80 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 1
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %83 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %84 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %6, i64 0, i64 0
  %85 = call i32 @ARRAY_SIZE(%struct.resource* %84)
  %86 = call i32 @platform_device_add_resources(%struct.platform_device* %82, %struct.resource* %83, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %47
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.TYPE_5__* %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %94 = call i32 @platform_device_put(%struct.platform_device* %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %141

96:                                               ; preds = %47
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = load %struct.bdc_pci*, %struct.bdc_pci** %8, align 8
  %99 = call i32 @pci_set_drvdata(%struct.pci_dev* %97, %struct.bdc_pci* %98)
  %100 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dma_set_coherent_mask(%struct.TYPE_4__* %101, i32 %105)
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 4
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 0
  %123 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store %struct.TYPE_5__* %122, %struct.TYPE_5__** %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %127 = load %struct.bdc_pci*, %struct.bdc_pci** %8, align 8
  %128 = getelementptr inbounds %struct.bdc_pci, %struct.bdc_pci* %127, i32 0, i32 0
  store %struct.platform_device* %126, %struct.platform_device** %128, align 8
  %129 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %130 = call i32 @platform_device_add(%struct.platform_device* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %96
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 0
  %136 = call i32 @dev_err(%struct.TYPE_5__* %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %137 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %138 = call i32 @platform_device_put(%struct.platform_device* %137)
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %3, align 4
  br label %141

140:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %133, %89, %44, %30, %18
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.bdc_pci* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @bdc_setup_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.bdc_pci*) #1

declare dso_local i32 @dma_set_coherent_mask(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
