; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sm501.c_ohci_hcd_sm501_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sm501.c_ohci_hcd_sm501_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.usb_hcd = type { i32, i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ohci_sm501_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"no resource definition for memory\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"request_mem_region failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"no resource definition for registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot remap registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@SM501_GATE_USB_HOST = common dso_local global i32 0, align 4
@SM501_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ohci_hcd_sm501_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hcd_sm501_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.hc_driver* @ohci_sm501_hc_driver, %struct.hc_driver** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %5, align 8
  store %struct.usb_hcd* null, %struct.usb_hcd** %10, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @platform_get_irq(%struct.platform_device* %13, i32 0)
  store i32 %14, i32* %8, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %183

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 1)
  store %struct.resource* %21, %struct.resource** %7, align 8
  %22 = load %struct.resource*, %struct.resource** %7, align 8
  %23 = icmp eq %struct.resource* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %183

29:                                               ; preds = %18
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.resource*, %struct.resource** %7, align 8
  %34 = call i32 @resource_size(%struct.resource* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @request_mem_region(i64 %32, i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %183

45:                                               ; preds = %29
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = call %struct.resource* @platform_get_resource(%struct.platform_device* %46, i32 %47, i32 0)
  store %struct.resource* %48, %struct.resource** %6, align 8
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = icmp eq %struct.resource* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %176

56:                                               ; preds = %45
  %57 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 1
  %62 = call i32 @dev_name(%struct.device* %61)
  %63 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %57, %struct.device* %59, i32 %62)
  store %struct.usb_hcd* %63, %struct.usb_hcd** %10, align 8
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %65 = icmp ne %struct.usb_hcd* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %176

69:                                               ; preds = %56
  %70 = load %struct.resource*, %struct.resource** %6, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %74 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.resource*, %struct.resource** %6, align 8
  %76 = call i32 @resource_size(%struct.resource* %75)
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %78 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %80 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %83 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @request_mem_region(i64 %81, i32 %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %69
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %173

95:                                               ; preds = %69
  %96 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %97 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %100 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32* @ioremap(i64 %98, i32 %101)
  %103 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %104 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %103, i32 0, i32 2
  store i32* %102, i32** %104, align 8
  %105 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %106 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %95
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32, i32* @ENXIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %165

114:                                              ; preds = %95
  %115 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %116 = call i32 @hcd_to_ohci(%struct.usb_hcd* %115)
  %117 = call i32 @ohci_hcd_init(i32 %116)
  %118 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %119 = load %struct.resource*, %struct.resource** %7, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.resource*, %struct.resource** %7, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.resource*, %struct.resource** %7, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %124, %129
  %131 = load %struct.resource*, %struct.resource** %7, align 8
  %132 = call i32 @resource_size(%struct.resource* %131)
  %133 = call i64 @usb_hcd_setup_local_mem(%struct.usb_hcd* %118, i64 %121, i64 %130, i32 %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %114
  br label %160

136:                                              ; preds = %114
  %137 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @IRQF_SHARED, align 4
  %140 = call i32 @usb_add_hcd(%struct.usb_hcd* %137, i32 %138, i32 %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %160

144:                                              ; preds = %136
  %145 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %146 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @device_wakeup_enable(i32 %148)
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = getelementptr inbounds %struct.device, %struct.device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SM501_GATE_USB_HOST, align 4
  %154 = call i32 @sm501_unit_power(i32 %152, i32 %153, i32 1)
  %155 = load %struct.device*, %struct.device** %5, align 8
  %156 = getelementptr inbounds %struct.device, %struct.device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SM501_IRQ_MASK, align 4
  %159 = call i32 @sm501_modify_reg(i32 %157, i32 %158, i32 64, i32 0)
  store i32 0, i32* %2, align 4
  br label %185

160:                                              ; preds = %143, %135
  %161 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %162 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @iounmap(i32* %163)
  br label %165

165:                                              ; preds = %160, %109
  %166 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %167 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %170 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @release_mem_region(i64 %168, i32 %171)
  br label %173

173:                                              ; preds = %165, %90
  %174 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %175 = call i32 @usb_put_hcd(%struct.usb_hcd* %174)
  br label %176

176:                                              ; preds = %173, %66, %51
  %177 = load %struct.resource*, %struct.resource** %7, align 8
  %178 = getelementptr inbounds %struct.resource, %struct.resource* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.resource*, %struct.resource** %7, align 8
  %181 = call i32 @resource_size(%struct.resource* %180)
  %182 = call i32 @release_mem_region(i64 %179, i32 %181)
  br label %183

183:                                              ; preds = %176, %40, %24, %17
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %183, %144
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @request_mem_region(i64, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, %struct.device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @ohci_hcd_init(i32) #1

declare dso_local i32 @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i64 @usb_hcd_setup_local_mem(%struct.usb_hcd*, i64, i64, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @sm501_unit_power(i32, i32, i32) #1

declare dso_local i32 @sm501_modify_reg(i32, i32, i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
