; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_inbound_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_inbound_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { i32 }
%struct.of_pci_range = type { i32, i32, i32, i32 }

@LAM_64BIT = common dso_local global i32 0, align 4
@LAR_ENABLE = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@LAM_PREFETCH = common dso_local global i32 0, align 4
@MAX_NR_INBOUND_MAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to map inbound regions!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_pcie*, %struct.of_pci_range*, i32*)* @rcar_pcie_inbound_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pcie_inbound_ranges(%struct.rcar_pcie* %0, %struct.of_pci_range* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_pcie*, align 8
  %6 = alloca %struct.of_pci_range*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %5, align 8
  store %struct.of_pci_range* %1, %struct.of_pci_range** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load %struct.of_pci_range*, %struct.of_pci_range** %6, align 8
  %19 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.of_pci_range*, %struct.of_pci_range** %6, align 8
  %22 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.of_pci_range*, %struct.of_pci_range** %6, align 8
  %25 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.of_pci_range*, %struct.of_pci_range** %6, align 8
  %28 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.of_pci_range*, %struct.of_pci_range** %6, align 8
  %32 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @LAM_64BIT, align 4
  %35 = load i32, i32* @LAR_ENABLE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %3
  %44 = load i32, i32* @LAM_PREFETCH, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %43, %3
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @__ffs64(i32 %51)
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %16, align 8
  %54 = shl i64 1, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %17, align 4
  %56 = load %struct.of_pci_range*, %struct.of_pci_range** %6, align 8
  %57 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @min(i32 %58, i64 %60)
  store i32 %61, i32* %14, align 4
  br label %66

62:                                               ; preds = %47
  %63 = load %struct.of_pci_range*, %struct.of_pci_range** %6, align 8
  %64 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %62, %50
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @min(i32 %67, i64 4294967296)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @roundup_pow_of_two(i32 %69)
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = and i32 %72, -16
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %136, %66
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %137

78:                                               ; preds = %74
  %79 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @lower_32_bits(i32 %80)
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @PCIEPRAR(i32 %82)
  %84 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %79, i32 %81, i32 %83)
  %85 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @lower_32_bits(i32 %86)
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @PCIELAR(i32 %88)
  %90 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %85, i32 %87, i32 %89)
  %91 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @lower_32_bits(i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @PCIELAMR(i32 %96)
  %98 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %91, i32 %95, i32 %97)
  %99 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @upper_32_bits(i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  %104 = call i32 @PCIEPRAR(i32 %103)
  %105 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %99, i32 %101, i32 %104)
  %106 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @upper_32_bits(i32 %107)
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  %111 = call i32 @PCIELAR(i32 %110)
  %112 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %106, i32 %108, i32 %111)
  %113 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  %116 = call i32 @PCIELAMR(i32 %115)
  %117 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %113, i32 0, i32 %116)
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @MAX_NR_INBOUND_MAPS, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %78
  %130 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %131 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %140

136:                                              ; preds = %78
  br label %74

137:                                              ; preds = %74
  %138 = load i32, i32* %15, align 4
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %137, %129
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i64 @__ffs64(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @rcar_pci_write_reg(%struct.rcar_pcie*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @PCIEPRAR(i32) #1

declare dso_local i32 @PCIELAR(i32) #1

declare dso_local i32 @PCIELAMR(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
