; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_tlp_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_tlp_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { i32 }

@TLP_LOOP = common dso_local global i32 0, align 4
@RP_RXCPL_STATUS = common dso_local global i32 0, align 4
@RP_RXCPL_SOP = common dso_local global i32 0, align 4
@RP_RXCPL_EOP = common dso_local global i32 0, align 4
@RP_RXCPL_REG0 = common dso_local global i32 0, align 4
@RP_RXCPL_REG1 = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_pcie*, i32*)* @tlp_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlp_read_packet(%struct.altera_pcie* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.altera_pcie*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.altera_pcie* %0, %struct.altera_pcie** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %67, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TLP_LOOP, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = load %struct.altera_pcie*, %struct.altera_pcie** %4, align 8
  %18 = load i32, i32* @RP_RXCPL_STATUS, align 4
  %19 = call i32 @cra_readl(%struct.altera_pcie* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @RP_RXCPL_SOP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @RP_RXCPL_EOP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %29, %24, %16
  %33 = load %struct.altera_pcie*, %struct.altera_pcie** %4, align 8
  %34 = load i32, i32* @RP_RXCPL_REG0, align 4
  %35 = call i32 @cra_readl(%struct.altera_pcie* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.altera_pcie*, %struct.altera_pcie** %4, align 8
  %37 = load i32, i32* @RP_RXCPL_REG1, align 4
  %38 = call i32 @cra_readl(%struct.altera_pcie* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @RP_RXCPL_SOP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @TLP_COMP_STATUS(i32 %44)
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %32
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @RP_RXCPL_EOP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %63, i32* %3, align 4
  br label %72

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %64, %29
  %66 = call i32 @udelay(i32 5)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %12

70:                                               ; preds = %12
  %71 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %62, %54
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @cra_readl(%struct.altera_pcie*, i32) #1

declare dso_local i32 @TLP_COMP_STATUS(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
