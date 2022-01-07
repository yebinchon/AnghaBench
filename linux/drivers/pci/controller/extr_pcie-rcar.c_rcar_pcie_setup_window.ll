; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_setup_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_setup_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { i32 }
%struct.resource = type { i32, i32 }

@SZ_128 = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PAR_ENABLE = common dso_local global i32 0, align 4
@IO_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rcar_pcie*, %struct.resource*)* @rcar_pcie_setup_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_pcie_setup_window(i32 %0, %struct.rcar_pcie* %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_pcie*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.rcar_pcie* %1, %struct.rcar_pcie** %5, align 8
  store %struct.resource* %2, %struct.resource** %6, align 8
  %10 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @PCIEPTCTLR(i32 %11)
  %13 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %10, i32 0, i32 %12)
  %14 = load %struct.resource*, %struct.resource** %6, align 8
  %15 = call i32 @resource_size(%struct.resource* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @roundup_pow_of_two(i32 %16)
  %18 = load i32, i32* @SZ_128, align 4
  %19 = sdiv i32 %17, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 7
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @PCIEPAMR(i32 %24)
  %26 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %21, i32 %23, i32 %25)
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IORESOURCE_IO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pci_pio_to_address(i32 %36)
  store i32 %37, i32* %8, align 4
  br label %42

38:                                               ; preds = %3
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @upper_32_bits(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @PCIEPAUR(i32 %46)
  %48 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %43, i32 %45, i32 %47)
  %49 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @lower_32_bits(i32 %50)
  %52 = and i32 %51, -128
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @PCIEPALR(i32 %53)
  %55 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %49, i32 %52, i32 %54)
  %56 = load i32, i32* @PAR_ENABLE, align 4
  store i32 %56, i32* %9, align 4
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IORESOURCE_IO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %42
  %64 = load i32, i32* @IO_SPACE, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %42
  %68 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @PCIEPTCTLR(i32 %70)
  %72 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %68, i32 %69, i32 %71)
  ret void
}

declare dso_local i32 @rcar_pci_write_reg(%struct.rcar_pcie*, i32, i32) #1

declare dso_local i32 @PCIEPTCTLR(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @PCIEPAMR(i32) #1

declare dso_local i32 @pci_pio_to_address(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @PCIEPAUR(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @PCIEPALR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
