; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_acpi.c_ucsi_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_acpi.c_ucsi_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ucsi_acpi = type { i32, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"missing memory resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@UCSI_DSM_UUID = common dso_local global i32 0, align 4
@ucsi_acpi_cmd = common dso_local global i32 0, align 4
@ucsi_acpi_sync = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@ucsi_acpi_notify = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to install notify handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ucsi_acpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_acpi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ucsi_acpi*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ucsi_acpi* @devm_kzalloc(i32* %9, i32 40, i32 %10)
  store %struct.ucsi_acpi* %11, %struct.ucsi_acpi** %4, align 8
  %12 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %13 = icmp ne %struct.ucsi_acpi* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %138

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %138

29:                                               ; preds = %17
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @ACPI_HANDLE(i32* %31)
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = call i32 @acpi_release_memory(i32 %32, %struct.resource* %33, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %138

41:                                               ; preds = %29
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.resource*, %struct.resource** %5, align 8
  %48 = call i32 @resource_size(%struct.resource* %47)
  %49 = call %struct.TYPE_4__* @devm_ioremap(i32* %43, i32 %46, i32 %48)
  %50 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %51 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %52, align 8
  %53 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %54 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %138

61:                                               ; preds = %41
  %62 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %63 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %138

72:                                               ; preds = %61
  %73 = load i32, i32* @UCSI_DSM_UUID, align 4
  %74 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %75 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %74, i32 0, i32 3
  %76 = call i32 @guid_parse(i32 %73, i32* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %138

81:                                               ; preds = %72
  %82 = load i32, i32* @ucsi_acpi_cmd, align 4
  %83 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %84 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @ucsi_acpi_sync, align 4
  %87 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %88 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %93 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @ACPI_HANDLE(i32* %95)
  %97 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %98 = load i32, i32* @ucsi_acpi_notify, align 4
  %99 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %100 = call i32 @acpi_install_notify_handler(i32 %96, i32 %97, i32 %98, %struct.ucsi_acpi* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i64 @ACPI_FAILURE(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %81
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %138

110:                                              ; preds = %81
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %114 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %113, i32 0, i32 1
  %115 = call i32 @ucsi_register_ppm(i32* %112, %struct.TYPE_3__* %114)
  %116 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %117 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %119 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @IS_ERR(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %110
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @ACPI_HANDLE(i32* %125)
  %127 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %128 = load i32, i32* @ucsi_acpi_notify, align 4
  %129 = call i32 @acpi_remove_notify_handler(i32 %126, i32 %127, i32 %128)
  %130 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %131 = getelementptr inbounds %struct.ucsi_acpi, %struct.ucsi_acpi* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @PTR_ERR(i32 %132)
  store i32 %133, i32* %2, align 4
  br label %138

134:                                              ; preds = %110
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = load %struct.ucsi_acpi*, %struct.ucsi_acpi** %4, align 8
  %137 = call i32 @platform_set_drvdata(%struct.platform_device* %135, %struct.ucsi_acpi* %136)
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %123, %104, %79, %69, %58, %38, %23, %14
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.ucsi_acpi* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @acpi_release_memory(i32, %struct.resource*, i32) #1

declare dso_local i32 @ACPI_HANDLE(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.TYPE_4__* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @guid_parse(i32, i32*) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.ucsi_acpi*) #1

declare dso_local i32 @ucsi_register_ppm(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ucsi_acpi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
