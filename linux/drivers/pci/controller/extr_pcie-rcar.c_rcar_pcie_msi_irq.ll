; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_msi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_pcie_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { %struct.device*, %struct.rcar_msi }
%struct.device = type { i32 }
%struct.rcar_msi = type { i32, i32 }

@PCIEMSIFR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"unhandled MSI\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"unexpected MSI\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rcar_pcie_msi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_pcie_msi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rcar_pcie*, align 8
  %7 = alloca %struct.rcar_msi*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.rcar_pcie*
  store %struct.rcar_pcie* %13, %struct.rcar_pcie** %6, align 8
  %14 = load %struct.rcar_pcie*, %struct.rcar_pcie** %6, align 8
  %15 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %14, i32 0, i32 1
  store %struct.rcar_msi* %15, %struct.rcar_msi** %7, align 8
  %16 = load %struct.rcar_pcie*, %struct.rcar_pcie** %6, align 8
  %17 = getelementptr inbounds %struct.rcar_pcie, %struct.rcar_pcie* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.rcar_pcie*, %struct.rcar_pcie** %6, align 8
  %20 = load i32, i32* @PCIEMSIFR, align 4
  %21 = call i64 @rcar_pci_read_reg(%struct.rcar_pcie* %19, i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %67

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = call i32 @find_first_bit(i64* %9, i32 32)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.rcar_pcie*, %struct.rcar_pcie** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* @PCIEMSIFR, align 4
  %36 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %32, i32 %34, i32 %35)
  %37 = load %struct.rcar_msi*, %struct.rcar_msi** %7, align 8
  %38 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @irq_find_mapping(i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %30
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.rcar_msi*, %struct.rcar_msi** %7, align 8
  %47 = getelementptr inbounds %struct.rcar_msi, %struct.rcar_msi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @test_bit(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @generic_handle_irq(i32 %52)
  br label %57

54:                                               ; preds = %44
  %55 = load %struct.device*, %struct.device** %8, align 8
  %56 = call i32 @dev_info(%struct.device* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51
  br label %61

58:                                               ; preds = %30
  %59 = load %struct.device*, %struct.device** %8, align 8
  %60 = call i32 @dev_dbg(%struct.device* %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %57
  %62 = load %struct.rcar_pcie*, %struct.rcar_pcie** %6, align 8
  %63 = load i32, i32* @PCIEMSIFR, align 4
  %64 = call i64 @rcar_pci_read_reg(%struct.rcar_pcie* %62, i32 %63)
  store i64 %64, i64* %9, align 8
  br label %27

65:                                               ; preds = %27
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %24
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @rcar_pci_read_reg(%struct.rcar_pcie*, i32) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @rcar_pci_write_reg(%struct.rcar_pcie*, i32, i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
