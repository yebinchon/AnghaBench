; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_apb_err_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_apb_err_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }
%struct.iproc_pcie = type { i64 }

@IPROC_PCIE_APB_ERR_EN = common dso_local global i32 0, align 4
@APB_ERR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*, i32)* @iproc_pcie_apb_err_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_pcie_apb_err_disable(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iproc_pcie*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %8 = call %struct.iproc_pcie* @iproc_data(%struct.pci_bus* %7)
  store %struct.iproc_pcie* %8, %struct.iproc_pcie** %5, align 8
  %9 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %10 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %15 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %20 = load i32, i32* @IPROC_PCIE_APB_ERR_EN, align 4
  %21 = call i32 @iproc_pcie_read_reg(%struct.iproc_pcie* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @APB_ERR_EN, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @APB_ERR_EN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.iproc_pcie*, %struct.iproc_pcie** %5, align 8
  %35 = load i32, i32* @IPROC_PCIE_APB_ERR_EN, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @iproc_pcie_write_reg(%struct.iproc_pcie* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %13, %2
  ret void
}

declare dso_local %struct.iproc_pcie* @iproc_data(%struct.pci_bus*) #1

declare dso_local i32 @iproc_pcie_read_reg(%struct.iproc_pcie*, i32) #1

declare dso_local i32 @iproc_pcie_write_reg(%struct.iproc_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
