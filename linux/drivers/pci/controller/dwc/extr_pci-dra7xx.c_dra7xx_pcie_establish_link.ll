; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_establish_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_establish_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.dra7xx_pcie = type { i32 }

@EXP_CAP_ID_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"link is already up\0A\00", align 1
@PCI_EXP_LNKCAP = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP_SLS_2_5GB = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL2 = common dso_local global i32 0, align 4
@PCIECTRL_DRA7XX_CONF_DEVICE_CMD = common dso_local global i32 0, align 4
@LTSSM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_pcie*)* @dra7xx_pcie_establish_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dra7xx_pcie_establish_link(%struct.dw_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_pcie*, align 8
  %4 = alloca %struct.dra7xx_pcie*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dw_pcie* %0, %struct.dw_pcie** %3, align 8
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %9 = call %struct.dra7xx_pcie* @to_dra7xx_pcie(%struct.dw_pcie* %8)
  store %struct.dra7xx_pcie* %9, %struct.dra7xx_pcie** %4, align 8
  %10 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load i32, i32* @EXP_CAP_ID_OFFSET, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %15 = call i64 @dw_pcie_link_up(%struct.dw_pcie* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %4, align 8
  %22 = getelementptr inbounds %struct.dra7xx_pcie, %struct.dra7xx_pcie* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %88

25:                                               ; preds = %20
  %26 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %27 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @dw_pcie_read(i32 %32, i32 4, i32* %6)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %25
  %40 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %48 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @PCI_EXP_LNKCAP, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dw_pcie_write(i32 %53, i32 4, i32 %54)
  br label %56

56:                                               ; preds = %39, %25
  %57 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %58 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @PCI_EXP_LNKCTL2, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @dw_pcie_read(i32 %63, i32 2, i32* %6)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %56
  %71 = load i32, i32* @PCI_EXP_LNKCAP_SLS, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @PCI_EXP_LNKCAP_SLS_2_5GB, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load %struct.dw_pcie*, %struct.dw_pcie** %3, align 8
  %79 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* @PCI_EXP_LNKCTL2, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dw_pcie_write(i32 %84, i32 2, i32 %85)
  br label %87

87:                                               ; preds = %70, %56
  br label %88

88:                                               ; preds = %87, %20
  %89 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %4, align 8
  %90 = load i32, i32* @PCIECTRL_DRA7XX_CONF_DEVICE_CMD, align 4
  %91 = call i32 @dra7xx_pcie_readl(%struct.dra7xx_pcie* %89, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @LTSSM_EN, align 4
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.dra7xx_pcie*, %struct.dra7xx_pcie** %4, align 8
  %96 = load i32, i32* @PCIECTRL_DRA7XX_CONF_DEVICE_CMD, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @dra7xx_pcie_writel(%struct.dra7xx_pcie* %95, i32 %96, i32 %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %88, %17
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.dra7xx_pcie* @to_dra7xx_pcie(%struct.dw_pcie*) #1

declare dso_local i64 @dw_pcie_link_up(%struct.dw_pcie*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dw_pcie_read(i32, i32, i32*) #1

declare dso_local i32 @dw_pcie_write(i32, i32, i32) #1

declare dso_local i32 @dra7xx_pcie_readl(%struct.dra7xx_pcie*, i32) #1

declare dso_local i32 @dra7xx_pcie_writel(%struct.dra7xx_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
