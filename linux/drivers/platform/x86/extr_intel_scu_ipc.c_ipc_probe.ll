; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_ipc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_scu_ipc.c_ipc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_scu_ipc_dev = type { i32*, i32, i32, i32, i32 }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.intel_scu_ipc_pdata_t = type { i32, i32, i32 }

@ipcdev = common dso_local global %struct.intel_scu_ipc_dev zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ioc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"intel_scu_ipc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ipc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_scu_ipc_dev*, align 8
  %8 = alloca %struct.intel_scu_ipc_pdata_t*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.intel_scu_ipc_dev* @ipcdev, %struct.intel_scu_ipc_dev** %7, align 8
  %9 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %7, align 8
  %10 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %95

16:                                               ; preds = %2
  %17 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.intel_scu_ipc_pdata_t*
  store %struct.intel_scu_ipc_pdata_t* %20, %struct.intel_scu_ipc_pdata_t** %8, align 8
  %21 = load %struct.intel_scu_ipc_pdata_t*, %struct.intel_scu_ipc_pdata_t** %8, align 8
  %22 = icmp ne %struct.intel_scu_ipc_pdata_t* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %95

26:                                               ; preds = %16
  %27 = load %struct.intel_scu_ipc_pdata_t*, %struct.intel_scu_ipc_pdata_t** %8, align 8
  %28 = getelementptr inbounds %struct.intel_scu_ipc_pdata_t, %struct.intel_scu_ipc_pdata_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %7, align 8
  %31 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @pcim_enable_device(%struct.pci_dev* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %95

38:                                               ; preds = %26
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @pci_name(%struct.pci_dev* %40)
  %42 = call i32 @pcim_iomap_regions(%struct.pci_dev* %39, i32 1, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %95

47:                                               ; preds = %38
  %48 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %7, align 8
  %49 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %48, i32 0, i32 3
  %50 = call i32 @init_completion(i32* %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i32* @pcim_iomap_table(%struct.pci_dev* %51)
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %7, align 8
  %56 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.intel_scu_ipc_pdata_t*, %struct.intel_scu_ipc_pdata_t** %8, align 8
  %58 = getelementptr inbounds %struct.intel_scu_ipc_pdata_t, %struct.intel_scu_ipc_pdata_t* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.intel_scu_ipc_pdata_t*, %struct.intel_scu_ipc_pdata_t** %8, align 8
  %61 = getelementptr inbounds %struct.intel_scu_ipc_pdata_t, %struct.intel_scu_ipc_pdata_t* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ioremap_nocache(i32 %59, i32 %62)
  %64 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %7, align 8
  %65 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %7, align 8
  %67 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %47
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %95

73:                                               ; preds = %47
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ioc, align 4
  %80 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %7, align 8
  %81 = call i32 @devm_request_irq(i32* %75, i32 %78, i32 %79, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.intel_scu_ipc_dev* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %95

86:                                               ; preds = %73
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %7, align 8
  %90 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  %91 = call i32 (...) @intel_scu_devices_create()
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %7, align 8
  %94 = call i32 @pci_set_drvdata(%struct.pci_dev* %92, %struct.intel_scu_ipc_dev* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %86, %84, %70, %45, %36, %23, %13
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.intel_scu_ipc_dev*) #1

declare dso_local i32 @intel_scu_devices_create(...) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.intel_scu_ipc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
