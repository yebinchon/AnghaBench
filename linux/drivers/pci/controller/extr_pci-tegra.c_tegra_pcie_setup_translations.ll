; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_setup_translations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_setup_translations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { %struct.TYPE_3__*, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@AFI_AXI_BAR0_START = common dso_local global i32 0, align 4
@AFI_AXI_BAR0_SZ = common dso_local global i32 0, align 4
@AFI_AXI_BAR1_START = common dso_local global i32 0, align 4
@AFI_AXI_BAR1_SZ = common dso_local global i32 0, align 4
@AFI_FPCI_BAR1 = common dso_local global i32 0, align 4
@AFI_AXI_BAR2_START = common dso_local global i32 0, align 4
@AFI_AXI_BAR2_SZ = common dso_local global i32 0, align 4
@AFI_FPCI_BAR2 = common dso_local global i32 0, align 4
@AFI_AXI_BAR3_START = common dso_local global i32 0, align 4
@AFI_AXI_BAR3_SZ = common dso_local global i32 0, align 4
@AFI_FPCI_BAR3 = common dso_local global i32 0, align 4
@AFI_AXI_BAR4_START = common dso_local global i32 0, align 4
@AFI_AXI_BAR4_SZ = common dso_local global i32 0, align 4
@AFI_FPCI_BAR4 = common dso_local global i32 0, align 4
@AFI_AXI_BAR5_START = common dso_local global i32 0, align 4
@AFI_AXI_BAR5_SZ = common dso_local global i32 0, align 4
@AFI_FPCI_BAR5 = common dso_local global i32 0, align 4
@AFI_CACHE_BAR0_ST = common dso_local global i32 0, align 4
@AFI_CACHE_BAR0_SZ = common dso_local global i32 0, align 4
@AFI_CACHE_BAR1_ST = common dso_local global i32 0, align 4
@AFI_CACHE_BAR1_SZ = common dso_local global i32 0, align 4
@AFI_MSI_FPCI_BAR_ST = common dso_local global i32 0, align 4
@AFI_MSI_BAR_SZ = common dso_local global i32 0, align 4
@AFI_MSI_AXI_BAR_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie*)* @tegra_pcie_setup_translations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_setup_translations(%struct.tegra_pcie* %0) #0 {
  %2 = alloca %struct.tegra_pcie*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %2, align 8
  %6 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %6, i32 0, i32 4
  %8 = call i32 @resource_size(%struct.TYPE_4__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %10 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AFI_AXI_BAR0_START, align 4
  %15 = call i32 @afi_writel(%struct.tegra_pcie* %9, i32 %13, i32 %14)
  %16 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 12
  %19 = load i32, i32* @AFI_AXI_BAR0_SZ, align 4
  %20 = call i32 @afi_writel(%struct.tegra_pcie* %16, i32 %18, i32 %19)
  store i32 -33816576, i32* %3, align 4
  %21 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %22 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %21, i32 0, i32 3
  %23 = call i32 @resource_size(%struct.TYPE_4__* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %25 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @AFI_AXI_BAR1_START, align 4
  %31 = call i32 @afi_writel(%struct.tegra_pcie* %28, i32 %29, i32 %30)
  %32 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 12
  %35 = load i32, i32* @AFI_AXI_BAR1_SZ, align 4
  %36 = call i32 @afi_writel(%struct.tegra_pcie* %32, i32 %34, i32 %35)
  %37 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @AFI_FPCI_BAR1, align 4
  %40 = call i32 @afi_writel(%struct.tegra_pcie* %37, i32 %38, i32 %39)
  %41 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %42 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 12
  %46 = and i32 %45, 268435455
  %47 = shl i32 %46, 4
  %48 = or i32 %47, 1
  store i32 %48, i32* %3, align 4
  %49 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %50 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %49, i32 0, i32 2
  %51 = call i32 @resource_size(%struct.TYPE_4__* %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %53 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  %56 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @AFI_AXI_BAR2_START, align 4
  %59 = call i32 @afi_writel(%struct.tegra_pcie* %56, i32 %57, i32 %58)
  %60 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = ashr i32 %61, 12
  %63 = load i32, i32* @AFI_AXI_BAR2_SZ, align 4
  %64 = call i32 @afi_writel(%struct.tegra_pcie* %60, i32 %62, i32 %63)
  %65 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @AFI_FPCI_BAR2, align 4
  %68 = call i32 @afi_writel(%struct.tegra_pcie* %65, i32 %66, i32 %67)
  %69 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %70 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 12
  %74 = and i32 %73, 268435455
  %75 = shl i32 %74, 4
  %76 = or i32 %75, 1
  store i32 %76, i32* %3, align 4
  %77 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %78 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %77, i32 0, i32 1
  %79 = call i32 @resource_size(%struct.TYPE_4__* %78)
  store i32 %79, i32* %4, align 4
  %80 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %81 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %5, align 4
  %84 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @AFI_AXI_BAR3_START, align 4
  %87 = call i32 @afi_writel(%struct.tegra_pcie* %84, i32 %85, i32 %86)
  %88 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %89 = load i32, i32* %4, align 4
  %90 = ashr i32 %89, 12
  %91 = load i32, i32* @AFI_AXI_BAR3_SZ, align 4
  %92 = call i32 @afi_writel(%struct.tegra_pcie* %88, i32 %90, i32 %91)
  %93 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @AFI_FPCI_BAR3, align 4
  %96 = call i32 @afi_writel(%struct.tegra_pcie* %93, i32 %94, i32 %95)
  %97 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %98 = load i32, i32* @AFI_AXI_BAR4_START, align 4
  %99 = call i32 @afi_writel(%struct.tegra_pcie* %97, i32 0, i32 %98)
  %100 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %101 = load i32, i32* @AFI_AXI_BAR4_SZ, align 4
  %102 = call i32 @afi_writel(%struct.tegra_pcie* %100, i32 0, i32 %101)
  %103 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %104 = load i32, i32* @AFI_FPCI_BAR4, align 4
  %105 = call i32 @afi_writel(%struct.tegra_pcie* %103, i32 0, i32 %104)
  %106 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %107 = load i32, i32* @AFI_AXI_BAR5_START, align 4
  %108 = call i32 @afi_writel(%struct.tegra_pcie* %106, i32 0, i32 %107)
  %109 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %110 = load i32, i32* @AFI_AXI_BAR5_SZ, align 4
  %111 = call i32 @afi_writel(%struct.tegra_pcie* %109, i32 0, i32 %110)
  %112 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %113 = load i32, i32* @AFI_FPCI_BAR5, align 4
  %114 = call i32 @afi_writel(%struct.tegra_pcie* %112, i32 0, i32 %113)
  %115 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %116 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %1
  %122 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %123 = load i32, i32* @AFI_CACHE_BAR0_ST, align 4
  %124 = call i32 @afi_writel(%struct.tegra_pcie* %122, i32 0, i32 %123)
  %125 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %126 = load i32, i32* @AFI_CACHE_BAR0_SZ, align 4
  %127 = call i32 @afi_writel(%struct.tegra_pcie* %125, i32 0, i32 %126)
  %128 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %129 = load i32, i32* @AFI_CACHE_BAR1_ST, align 4
  %130 = call i32 @afi_writel(%struct.tegra_pcie* %128, i32 0, i32 %129)
  %131 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %132 = load i32, i32* @AFI_CACHE_BAR1_SZ, align 4
  %133 = call i32 @afi_writel(%struct.tegra_pcie* %131, i32 0, i32 %132)
  br label %134

134:                                              ; preds = %121, %1
  %135 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %136 = load i32, i32* @AFI_MSI_FPCI_BAR_ST, align 4
  %137 = call i32 @afi_writel(%struct.tegra_pcie* %135, i32 0, i32 %136)
  %138 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %139 = load i32, i32* @AFI_MSI_BAR_SZ, align 4
  %140 = call i32 @afi_writel(%struct.tegra_pcie* %138, i32 0, i32 %139)
  %141 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %142 = load i32, i32* @AFI_MSI_AXI_BAR_ST, align 4
  %143 = call i32 @afi_writel(%struct.tegra_pcie* %141, i32 0, i32 %142)
  %144 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %145 = load i32, i32* @AFI_MSI_BAR_SZ, align 4
  %146 = call i32 @afi_writel(%struct.tegra_pcie* %144, i32 0, i32 %145)
  ret void
}

declare dso_local i32 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i32 @afi_writel(%struct.tegra_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
