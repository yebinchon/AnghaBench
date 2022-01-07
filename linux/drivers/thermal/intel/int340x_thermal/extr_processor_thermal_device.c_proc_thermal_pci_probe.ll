; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_processor_thermal_device.c_proc_thermal_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_processor_thermal_device.c_proc_thermal_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pci_dev = type { i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.proc_thermal_device = type { i32* }
%struct.rapl_mmio_regs = type { i32 }

@proc_thermal_emum_mode = common dso_local global i64 0, align 8
@PROC_THERMAL_PLATFORM_DEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"error: enumerated as platform dev\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error: could not enable device\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to add RAPL MMIO interface\0A\00", align 1
@PROC_THERMAL_PCI = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_PROC_BSW_THERMAL = common dso_local global i64 0, align 8
@INTEL_SOC_DTS_INTERRUPT_MSI = common dso_local global i32 0, align 4
@proc_thermal_pci_msi_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"proc_thermal\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"No auxiliary DTSs enabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Creating sysfs group for PROC_THERMAL_PCI\0A\00", align 1
@dev_attr_tcc_offset_degree_celsius = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@power_limit_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @proc_thermal_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_thermal_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.proc_thermal_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i64, i64* @proc_thermal_emum_mode, align 8
  %9 = load i64, i64* @PROC_THERMAL_PLATFORM_DEV, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = call i32 @dev_err(%struct.TYPE_5__* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %134

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pcim_enable_device(%struct.pci_dev* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = call i32 @dev_err(%struct.TYPE_5__* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %134

27:                                               ; preds = %17
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = call i32 @proc_thermal_add(%struct.TYPE_5__* %29, %struct.proc_thermal_device** %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %134

35:                                               ; preds = %27
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %38 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.rapl_mmio_regs*
  %42 = call i32 @proc_thermal_rapl_add(%struct.pci_dev* %36, %struct.proc_thermal_device* %37, %struct.rapl_mmio_regs* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %35
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = call i32 @dev_err(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %50 = call i32 @proc_thermal_remove(%struct.proc_thermal_device* %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %134

52:                                               ; preds = %35
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %55 = call i32 @pci_set_drvdata(%struct.pci_dev* %53, %struct.proc_thermal_device* %54)
  %56 = load i64, i64* @PROC_THERMAL_PCI, align 8
  store i64 %56, i64* @proc_thermal_emum_mode, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCI_DEVICE_ID_PROC_BSW_THERMAL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %108

62:                                               ; preds = %52
  %63 = load i32, i32* @INTEL_SOC_DTS_INTERRUPT_MSI, align 4
  %64 = call i32* @intel_soc_dts_iosf_init(i32 %63, i32 2, i32 0)
  %65 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %66 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %68 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @IS_ERR(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %62
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %72
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = call i32 @pci_enable_msi(%struct.pci_dev* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %77
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @proc_thermal_pci_msi_irq, align 4
  %87 = load i32, i32* @IRQF_ONESHOT, align 4
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = call i32 @request_threaded_irq(i64 %85, i32* null, i32 %86, i32 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.pci_dev* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %82
  %93 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %94 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @intel_soc_dts_iosf_exit(i32* %95)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = call i32 @pci_disable_msi(%struct.pci_dev* %97)
  %99 = load %struct.proc_thermal_device*, %struct.proc_thermal_device** %6, align 8
  %100 = getelementptr inbounds %struct.proc_thermal_device, %struct.proc_thermal_device* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %92, %82
  br label %102

102:                                              ; preds = %101, %77
  br label %107

103:                                              ; preds = %72, %62
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 1
  %106 = call i32 @dev_err(%struct.TYPE_5__* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %102
  br label %108

108:                                              ; preds = %107, %52
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 1
  %111 = call i32 @dev_info(%struct.TYPE_5__* %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = call i32 @sysfs_create_file(i32* %114, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_attr_tcc_offset_degree_celsius, i32 0, i32 0))
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %134

120:                                              ; preds = %108
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = call i32 @sysfs_create_group(i32* %123, i32* @power_limit_attribute_group)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = call i32 @sysfs_remove_file(i32* %130, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_attr_tcc_offset_degree_celsius, i32 0, i32 0))
  br label %132

132:                                              ; preds = %127, %120
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %118, %45, %33, %22, %11
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @proc_thermal_add(%struct.TYPE_5__*, %struct.proc_thermal_device**) #1

declare dso_local i32 @proc_thermal_rapl_add(%struct.pci_dev*, %struct.proc_thermal_device*, %struct.rapl_mmio_regs*) #1

declare dso_local i32 @proc_thermal_remove(%struct.proc_thermal_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.proc_thermal_device*) #1

declare dso_local i32* @intel_soc_dts_iosf_init(i32, i32, i32) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i8*, %struct.pci_dev*) #1

declare dso_local i32 @intel_soc_dts_iosf_exit(i32*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
