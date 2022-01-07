; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_pmc_atom.c_pmc_setup_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_pmc_atom.c_pmc_setup_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_dev = type { i32, i32, %struct.pmc_reg_map*, i32 }
%struct.pmc_reg_map = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.pmc_data = type { %struct.pmc_reg_map* }

@pmc_device = common dso_local global %struct.pmc_dev zeroinitializer, align 8
@ACPI_BASE_ADDR_OFFSET = common dso_local global i32 0, align 4
@acpi_base_addr = common dso_local global i32 0, align 4
@ACPI_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i32* null, align 8
@pmc_power_off = common dso_local global i32* null, align 8
@PMC_BASE_ADDR_OFFSET = common dso_local global i32 0, align 4
@PMC_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@PMC_MMIO_REG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error: ioremap failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"platform clocks register failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pmc_setup_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_setup_dev(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.pmc_dev*, align 8
  %7 = alloca %struct.pmc_data*, align 8
  %8 = alloca %struct.pmc_reg_map*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.pmc_dev* @pmc_device, %struct.pmc_dev** %6, align 8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.pmc_data*
  store %struct.pmc_data* %13, %struct.pmc_data** %7, align 8
  %14 = load %struct.pmc_data*, %struct.pmc_data** %7, align 8
  %15 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %14, i32 0, i32 0
  %16 = load %struct.pmc_reg_map*, %struct.pmc_reg_map** %15, align 8
  store %struct.pmc_reg_map* %16, %struct.pmc_reg_map** %8, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* @ACPI_BASE_ADDR_OFFSET, align 4
  %19 = call i32 @pci_read_config_dword(%struct.pci_dev* %17, i32 %18, i32* @acpi_base_addr)
  %20 = load i32, i32* @ACPI_BASE_ADDR_MASK, align 4
  %21 = load i32, i32* @acpi_base_addr, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* @acpi_base_addr, align 4
  %23 = load i32, i32* @acpi_base_addr, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32*, i32** @pm_power_off, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32*, i32** @pmc_power_off, align 8
  store i32* %29, i32** @pm_power_off, align 8
  br label %30

30:                                               ; preds = %28, %25, %2
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* @PMC_BASE_ADDR_OFFSET, align 4
  %33 = load %struct.pmc_dev*, %struct.pmc_dev** %6, align 8
  %34 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %33, i32 0, i32 3
  %35 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i32 %32, i32* %34)
  %36 = load i32, i32* @PMC_BASE_ADDR_MASK, align 4
  %37 = load %struct.pmc_dev*, %struct.pmc_dev** %6, align 8
  %38 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.pmc_dev*, %struct.pmc_dev** %6, align 8
  %42 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PMC_MMIO_REG_LEN, align 4
  %45 = call i32 @ioremap_nocache(i32 %43, i32 %44)
  %46 = load %struct.pmc_dev*, %struct.pmc_dev** %6, align 8
  %47 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pmc_dev*, %struct.pmc_dev** %6, align 8
  %49 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %30
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %83

58:                                               ; preds = %30
  %59 = load %struct.pmc_reg_map*, %struct.pmc_reg_map** %8, align 8
  %60 = load %struct.pmc_dev*, %struct.pmc_dev** %6, align 8
  %61 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %60, i32 0, i32 2
  store %struct.pmc_reg_map* %59, %struct.pmc_reg_map** %61, align 8
  %62 = load %struct.pmc_dev*, %struct.pmc_dev** %6, align 8
  %63 = call i32 @pmc_hw_reg_setup(%struct.pmc_dev* %62)
  %64 = load %struct.pmc_dev*, %struct.pmc_dev** %6, align 8
  %65 = call i32 @pmc_dbgfs_register(%struct.pmc_dev* %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = load %struct.pmc_dev*, %struct.pmc_dev** %6, align 8
  %68 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pmc_data*, %struct.pmc_data** %7, align 8
  %71 = call i32 @pmc_setup_clks(%struct.pci_dev* %66, i32 %69, %struct.pmc_data* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @dev_warn(i32* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %58
  %80 = load %struct.pmc_dev*, %struct.pmc_dev** %6, align 8
  %81 = getelementptr inbounds %struct.pmc_dev, %struct.pmc_dev* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %52
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pmc_hw_reg_setup(%struct.pmc_dev*) #1

declare dso_local i32 @pmc_dbgfs_register(%struct.pmc_dev*) #1

declare dso_local i32 @pmc_setup_clks(%struct.pci_dev*, i32, %struct.pmc_data*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
