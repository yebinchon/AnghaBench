; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence.c_cdns_pcie_set_outbound_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence.c_cdns_pcie_set_outbound_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_pcie = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_IO = common dso_local global i32 0, align 4
@CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_MEM = common dso_local global i32 0, align 4
@CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdns_pcie_set_outbound_region(%struct.cdns_pcie* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.cdns_pcie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.cdns_pcie* %0, %struct.cdns_pcie** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = sub i64 %21, 1
  %23 = call i64 @fls64(i64 %22)
  %24 = shl i64 1, %23
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @ilog2(i64 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %7
  store i32 8, i32* %16, align 4
  br label %30

30:                                               ; preds = %29, %7
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR0_NBITS(i32 %31)
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @lower_32_bits(i64 %33)
  %35 = call i32 @GENMASK(i32 31, i32 8)
  %36 = and i32 %34, %35
  %37 = or i32 %32, %36
  store i32 %37, i32* %17, align 4
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @upper_32_bits(i64 %38)
  store i32 %39, i32* %18, align 4
  %40 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR0(i32 %41)
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %40, i32 %42, i32 %43)
  %45 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR1(i32 %46)
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %45, i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = load i32, i32* @CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_IO, align 4
  store i32 %53, i32* %19, align 4
  br label %56

54:                                               ; preds = %30
  %55 = load i32, i32* @CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_MEM, align 4
  store i32 %55, i32* %19, align 4
  br label %56

56:                                               ; preds = %54, %52
  store i32 0, i32* %20, align 4
  %57 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %58 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i32, i32* @CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID, align 4
  %63 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN(i32 0)
  %64 = or i32 %62, %63
  %65 = load i32, i32* %19, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %19, align 4
  %67 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %68 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC1_BUS(i32 %69)
  %71 = load i32, i32* %20, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %20, align 4
  br label %78

73:                                               ; preds = %56
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN(i32 %74)
  %76 = load i32, i32* %19, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %19, align 4
  br label %78

78:                                               ; preds = %73, %61
  %79 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC0(i32 %80)
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %79, i32 %81, i32 %82)
  %84 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @CDNS_PCIE_AT_OB_REGION_DESC1(i32 %85)
  %87 = load i32, i32* %20, align 4
  %88 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %84, i32 %86, i32 %87)
  %89 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %90 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = sub i64 %94, %93
  store i64 %95, i64* %12, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS(i32 %96)
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @lower_32_bits(i64 %98)
  %100 = call i32 @GENMASK(i32 31, i32 8)
  %101 = and i32 %99, %100
  %102 = or i32 %97, %101
  store i32 %102, i32* %17, align 4
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @upper_32_bits(i64 %103)
  store i32 %104, i32* %18, align 4
  %105 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR0(i32 %106)
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %105, i32 %107, i32 %108)
  %110 = load %struct.cdns_pcie*, %struct.cdns_pcie** %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR1(i32 %111)
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @cdns_pcie_writel(%struct.cdns_pcie* %110, i32 %112, i32 %113)
  ret void
}

declare dso_local i64 @fls64(i64) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR0_NBITS(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @cdns_pcie_writel(%struct.cdns_pcie*, i32, i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR0(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_PCI_ADDR1(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_DESC1_BUS(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_DESC0(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_DESC1(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR0(i32) #1

declare dso_local i32 @CDNS_PCIE_AT_OB_REGION_CPU_ADDR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
