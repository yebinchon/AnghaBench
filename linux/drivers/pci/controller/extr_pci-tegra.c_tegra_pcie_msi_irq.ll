; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { %struct.tegra_msi, %struct.device* }
%struct.tegra_msi = type { i32, i32 }
%struct.device = type { i32 }

@AFI_MSI_VEC0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"unhandled MSI\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"unexpected MSI\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_pcie_msi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_msi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tegra_msi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.tegra_pcie*
  store %struct.tegra_pcie* %15, %struct.tegra_pcie** %5, align 8
  %16 = load %struct.tegra_pcie*, %struct.tegra_pcie** %5, align 8
  %17 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %16, i32 0, i32 1
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.tegra_pcie*, %struct.tegra_pcie** %5, align 8
  %20 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %19, i32 0, i32 0
  store %struct.tegra_msi* %20, %struct.tegra_msi** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %85, %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %24, label %88

24:                                               ; preds = %21
  %25 = load %struct.tegra_pcie*, %struct.tegra_pcie** %5, align 8
  %26 = load i64, i64* @AFI_MSI_VEC0, align 8
  %27 = load i32, i32* %8, align 4
  %28 = mul i32 %27, 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i64 @afi_readl(%struct.tegra_pcie* %25, i64 %30)
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %74, %24
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %32
  %36 = call i32 @find_first_bit(i64* %10, i32 32)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul i32 %37, 32
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load %struct.tegra_pcie*, %struct.tegra_pcie** %5, align 8
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 1, %42
  %44 = load i64, i64* @AFI_MSI_VEC0, align 8
  %45 = load i32, i32* %8, align 4
  %46 = mul i32 %45, 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i32 @afi_writel(%struct.tegra_pcie* %41, i32 %43, i64 %48)
  %50 = load %struct.tegra_msi*, %struct.tegra_msi** %7, align 8
  %51 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @irq_find_mapping(i32 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %35
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.tegra_msi*, %struct.tegra_msi** %7, align 8
  %60 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @test_bit(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @generic_handle_irq(i32 %65)
  br label %70

67:                                               ; preds = %57
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = call i32 @dev_info(%struct.device* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  br label %74

71:                                               ; preds = %35
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 @dev_info(%struct.device* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %70
  %75 = load %struct.tegra_pcie*, %struct.tegra_pcie** %5, align 8
  %76 = load i64, i64* @AFI_MSI_VEC0, align 8
  %77 = load i32, i32* %8, align 4
  %78 = mul i32 %77, 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = call i64 @afi_readl(%struct.tegra_pcie* %75, i64 %80)
  store i64 %81, i64* %10, align 8
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %32

84:                                               ; preds = %32
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %21

88:                                               ; preds = %21
  %89 = load i32, i32* %9, align 4
  %90 = icmp ugt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  br label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @IRQ_NONE, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  ret i32 %96
}

declare dso_local i64 @afi_readl(%struct.tegra_pcie*, i64) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @afi_writel(%struct.tegra_pcie*, i32, i64) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
