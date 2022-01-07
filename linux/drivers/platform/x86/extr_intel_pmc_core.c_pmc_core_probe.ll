; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_core.c_pmc_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_pmc_core.c_pmc_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_dev = type { i32, i32, i32, %struct.pmc_reg_map*, i64 }
%struct.pmc_reg_map = type { i32, i64 }
%struct.platform_device = type { i32 }
%struct.x86_cpu_id = type { i64 }

@pmc_core_probe.device_initialized = internal global i32 0, align 4
@pmc = common dso_local global %struct.pmc_dev zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@intel_pmc_core_ids = common dso_local global i32 0, align 4
@spt_reg_map = common dso_local global %struct.pmc_reg_map zeroinitializer, align 8
@pmc_pci_ids = common dso_local global i32 0, align 4
@cnp_reg_map = common dso_local global %struct.pmc_reg_map zeroinitializer, align 8
@PMC_BASE_ADDR_DEFAULT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@pmc_core_dmi_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c" initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pmc_core_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_core_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pmc_dev*, align 8
  %5 = alloca %struct.x86_cpu_id*, align 8
  %6 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.pmc_dev* @pmc, %struct.pmc_dev** %4, align 8
  %7 = load i32, i32* @pmc_core_probe.device_initialized, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %101

12:                                               ; preds = %1
  %13 = load i32, i32* @intel_pmc_core_ids, align 4
  %14 = call %struct.x86_cpu_id* @x86_match_cpu(i32 %13)
  store %struct.x86_cpu_id* %14, %struct.x86_cpu_id** %5, align 8
  %15 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %5, align 8
  %16 = icmp ne %struct.x86_cpu_id* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %101

20:                                               ; preds = %12
  %21 = load %struct.x86_cpu_id*, %struct.x86_cpu_id** %5, align 8
  %22 = getelementptr inbounds %struct.x86_cpu_id, %struct.x86_cpu_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.pmc_reg_map*
  %25 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %25, i32 0, i32 3
  store %struct.pmc_reg_map* %24, %struct.pmc_reg_map** %26, align 8
  %27 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %27, i32 0, i32 3
  %29 = load %struct.pmc_reg_map*, %struct.pmc_reg_map** %28, align 8
  %30 = icmp eq %struct.pmc_reg_map* %29, @spt_reg_map
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i32, i32* @pmc_pci_ids, align 4
  %33 = call i32 @pci_dev_present(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %36, i32 0, i32 3
  store %struct.pmc_reg_map* @cnp_reg_map, %struct.pmc_reg_map** %37, align 8
  br label %38

38:                                               ; preds = %35, %31, %20
  %39 = call i64 @lpit_read_residency_count_address(i64* %6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i64, i64* @PMC_BASE_ADDR_DEFAULT, align 8
  %43 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @PHYS_PFN(i64 %47)
  %49 = call i64 @page_is_ram(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %101

54:                                               ; preds = %41
  br label %65

55:                                               ; preds = %38
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %57, i32 0, i32 3
  %59 = load %struct.pmc_reg_map*, %struct.pmc_reg_map** %58, align 8
  %60 = getelementptr inbounds %struct.pmc_reg_map, %struct.pmc_reg_map* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %56, %61
  %63 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %55, %54
  %66 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %69, i32 0, i32 3
  %71 = load %struct.pmc_reg_map*, %struct.pmc_reg_map** %70, align 8
  %72 = getelementptr inbounds %struct.pmc_reg_map, %struct.pmc_reg_map* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ioremap(i64 %68, i32 %73)
  %75 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %65
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %101

84:                                               ; preds = %65
  %85 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %85, i32 0, i32 1
  %87 = call i32 @mutex_init(i32* %86)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %90 = call i32 @platform_set_drvdata(%struct.platform_device* %88, %struct.pmc_dev* %89)
  %91 = call i32 (...) @pmc_core_check_read_lock_bit()
  %92 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @pmc_core_dmi_table, align 4
  %95 = call i32 @dmi_check_system(i32 %94)
  %96 = load %struct.pmc_dev*, %struct.pmc_dev** %4, align 8
  %97 = call i32 @pmc_core_dbgfs_register(%struct.pmc_dev* %96)
  store i32 1, i32* @pmc_core_probe.device_initialized, align 4
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_info(i32* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %84, %81, %51, %17, %9
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.x86_cpu_id* @x86_match_cpu(i32) #1

declare dso_local i32 @pci_dev_present(i32) #1

declare dso_local i64 @lpit_read_residency_count_address(i64*) #1

declare dso_local i64 @page_is_ram(i32) #1

declare dso_local i32 @PHYS_PFN(i64) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pmc_dev*) #1

declare dso_local i32 @pmc_core_check_read_lock_bit(...) #1

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i32 @pmc_core_dbgfs_register(%struct.pmc_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
