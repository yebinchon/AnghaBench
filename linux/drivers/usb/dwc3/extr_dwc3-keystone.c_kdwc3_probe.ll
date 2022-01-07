; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-keystone.c_kdwc3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-keystone.c_kdwc3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dwc3_keystone = type { %struct.device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pm_runtime_get_sync failed, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ti,am654-dwc3\00", align 1
@dwc3_keystone_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to request IRQ #%d --> %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to create dwc3 core\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kdwc3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdwc3_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.dwc3_keystone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dwc3_keystone* @devm_kzalloc(%struct.device* %15, i32 16, i32 %16)
  store %struct.dwc3_keystone* %17, %struct.dwc3_keystone** %6, align 8
  %18 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %19 = icmp ne %struct.dwc3_keystone* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %116

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.dwc3_keystone* %25)
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %29 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %28, i32 0, i32 0
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %30, i32 0)
  %32 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %33 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %35 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %41 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %116

44:                                               ; preds = %23
  %45 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %46 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %45, i32 0, i32 0
  %47 = load %struct.device*, %struct.device** %46, align 8
  %48 = call i32 @pm_runtime_enable(%struct.device* %47)
  %49 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %50 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %49, i32 0, i32 0
  %51 = load %struct.device*, %struct.device** %50, align 8
  %52 = call i32 @pm_runtime_get_sync(%struct.device* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %57 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %56, i32 0, i32 0
  %58 = load %struct.device*, %struct.device** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %106

61:                                               ; preds = %44
  %62 = load %struct.device_node*, %struct.device_node** %5, align 8
  %63 = call i64 @of_device_is_compatible(%struct.device_node* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %92

66:                                               ; preds = %61
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = call i32 @platform_get_irq(%struct.platform_device* %67, i32 0)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %7, align 4
  br label %106

73:                                               ; preds = %66
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @dwc3_keystone_interrupt, align 4
  %77 = load i32, i32* @IRQF_SHARED, align 4
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 @dev_name(%struct.device* %78)
  %80 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %81 = call i32 @devm_request_irq(%struct.device* %74, i32 %75, i32 %76, i32 %77, i32 %79, %struct.dwc3_keystone* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  br label %106

89:                                               ; preds = %73
  %90 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %91 = call i32 @kdwc3_enable_irqs(%struct.dwc3_keystone* %90)
  br label %92

92:                                               ; preds = %89, %65
  %93 = load %struct.device_node*, %struct.device_node** %5, align 8
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 @of_platform_populate(%struct.device_node* %93, i32* null, i32* null, %struct.device* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %103

102:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %116

103:                                              ; preds = %98
  %104 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %105 = call i32 @kdwc3_disable_irqs(%struct.dwc3_keystone* %104)
  br label %106

106:                                              ; preds = %103, %84, %71, %55
  %107 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %108 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %107, i32 0, i32 0
  %109 = load %struct.device*, %struct.device** %108, align 8
  %110 = call i32 @pm_runtime_put_sync(%struct.device* %109)
  %111 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %6, align 8
  %112 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %111, i32 0, i32 0
  %113 = load %struct.device*, %struct.device** %112, align 8
  %114 = call i32 @pm_runtime_disable(%struct.device* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %106, %102, %39, %20
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.dwc3_keystone* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dwc3_keystone*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.dwc3_keystone*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @kdwc3_enable_irqs(%struct.dwc3_keystone*) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32*, %struct.device*) #1

declare dso_local i32 @kdwc3_disable_irqs(%struct.dwc3_keystone*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
