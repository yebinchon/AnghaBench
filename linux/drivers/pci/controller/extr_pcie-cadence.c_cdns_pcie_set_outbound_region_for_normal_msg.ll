; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence.c_cdns_pcie_set_outbound_region_for_normal_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence.c_cdns_pcie_set_outbound_region_for_normal_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_pcie = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_NORMAL_MSG = common dso_local global i32 0, align 4
@CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdns_pcie_set_outbound_region_for_normal_msg(%struct.cdns_pcie* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cdns_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdns_pcie* %0, %struct.cdns_pcie** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_NORMAL_MSG, align 4
  store i32 %13, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %15 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i32, i32* @CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID, align 4
  %20 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN(i32 0)
  %21 = or i32 %19, %20
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %11, align 4
  %24 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %25 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC1_BUS(i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  br label %35

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %30, %18
  %36 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %37 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = call i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS(i32 17)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @lower_32_bits(i32 %46)
  %48 = call i32 @GENMASK(i32 31, i32 8)
  %49 = and i32 %47, %48
  %50 = or i32 %45, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @upper_32_bits(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR0(i32 %54)
  %56 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %53, i32 %55, i32 0)
  %57 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR1(i32 %58)
  %60 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %57, i32 %59, i32 0)
  %61 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC0(i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %61, i32 %63, i32 %64)
  %66 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC1(i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %66, i32 %68, i32 %69)
  %71 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR0(i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %71, i32 %73, i32 %74)
  %76 = load %struct.cdns_pcie*, %struct.cdns_pcie** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR1(i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %76, i32 %78, i32 %79)
  ret void
}

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_DESC1_BUS(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @cdns_pcie_writel(%struct.cdns_pcie*, i32, i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR0(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR1(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_DESC0(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_DESC1(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR0(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
