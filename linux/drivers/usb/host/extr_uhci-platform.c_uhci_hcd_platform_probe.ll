; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-platform.c_uhci_hcd_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-platform.c_uhci_hcd_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__*, %struct.TYPE_11__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.uhci_hcd = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@uhci_platform_hc_driver = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"#ports\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Detected %d ports from device-tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"aspeed,ast2400-uhci\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"aspeed,ast2500-uhci\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Enabled Aspeed implementation workarounds\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Error couldn't enable clock (%d)\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uhci_hcd_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_hcd_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.uhci_hcd*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = call i64 (...) @usb_disabled()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %162

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = call i32 @DMA_BIT_MASK(i32 32)
  %23 = call i32 @dma_coerce_mask_and_coherent(%struct.TYPE_11__* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %162

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.usb_hcd* @usb_create_hcd(i32* @uhci_platform_hc_driver, %struct.TYPE_11__* %30, i32 %33)
  store %struct.usb_hcd* %34, %struct.usb_hcd** %5, align 8
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %36 = icmp ne %struct.usb_hcd* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %162

40:                                               ; preds = %28
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %42 = call %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd* %41)
  store %struct.uhci_hcd* %42, %struct.uhci_hcd** %6, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %7, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 1
  %48 = load %struct.resource*, %struct.resource** %7, align 8
  %49 = call i32 @devm_ioremap_resource(%struct.TYPE_11__* %47, %struct.resource* %48)
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %53 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %40
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %8, align 4
  br label %158

62:                                               ; preds = %40
  %63 = load %struct.resource*, %struct.resource** %7, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = call i32 @resource_size(%struct.resource* %68)
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %71 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %73 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %76 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.device_node*, %struct.device_node** %4, align 8
  %78 = icmp ne %struct.device_node* %77, null
  br i1 %78, label %79, label %106

79:                                               ; preds = %62
  %80 = load %struct.device_node*, %struct.device_node** %4, align 8
  %81 = call i64 @of_property_read_u32(%struct.device_node* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %9)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %86 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 1
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_info(%struct.TYPE_11__* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %83, %79
  %92 = load %struct.device_node*, %struct.device_node** %4, align 8
  %93 = call i64 @of_device_is_compatible(%struct.device_node* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load %struct.device_node*, %struct.device_node** %4, align 8
  %97 = call i64 @of_device_is_compatible(%struct.device_node* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95, %91
  %100 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %101 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 1
  %104 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_info(%struct.TYPE_11__* %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %99, %95
  br label %106

106:                                              ; preds = %105, %62
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 1
  %109 = call i32 @devm_clk_get(%struct.TYPE_11__* %108, i32* null)
  %110 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %111 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %113 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @IS_ERR(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %119 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @PTR_ERR(i32 %120)
  store i32 %121, i32* %8, align 4
  br label %158

122:                                              ; preds = %106
  %123 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %124 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @clk_prepare_enable(i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 1
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @dev_err(%struct.TYPE_11__* %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  br label %158

134:                                              ; preds = %122
  %135 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @IRQF_SHARED, align 4
  %143 = call i32 @usb_add_hcd(%struct.usb_hcd* %135, i32 %141, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %153

147:                                              ; preds = %134
  %148 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %149 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @device_wakeup_enable(i32 %151)
  store i32 0, i32* %2, align 4
  br label %162

153:                                              ; preds = %146
  %154 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %155 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @clk_disable_unprepare(i32 %156)
  br label %158

158:                                              ; preds = %153, %129, %117, %57
  %159 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %160 = call i32 @usb_put_hcd(%struct.usb_hcd* %159)
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %147, %37, %26, %16
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local %struct.uhci_hcd* @hcd_to_uhci(%struct.usb_hcd*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
