; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.nwl_pcie* }
%struct.nwl_pcie = type { %struct.nwl_msi }
%struct.nwl_msi = type { i32, i32 }

@INT_PCI_MSI_NR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@nwl_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @nwl_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nwl_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nwl_pcie*, align 8
  %11 = alloca %struct.nwl_msi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %15 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %14, i32 0, i32 0
  %16 = load %struct.nwl_pcie*, %struct.nwl_pcie** %15, align 8
  store %struct.nwl_pcie* %16, %struct.nwl_pcie** %10, align 8
  %17 = load %struct.nwl_pcie*, %struct.nwl_pcie** %10, align 8
  %18 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %17, i32 0, i32 0
  store %struct.nwl_msi* %18, %struct.nwl_msi** %11, align 8
  %19 = load %struct.nwl_msi*, %struct.nwl_msi** %11, align 8
  %20 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.nwl_msi*, %struct.nwl_msi** %11, align 8
  %23 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INT_PCI_MSI_NR, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @get_count_order(i32 %26)
  %28 = call i32 @bitmap_find_free_region(i32 %24, i32 %25, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.nwl_msi*, %struct.nwl_msi** %11, align 8
  %33 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %62

37:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %55, %37
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %51 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %50, i32 0, i32 0
  %52 = load %struct.nwl_pcie*, %struct.nwl_pcie** %51, align 8
  %53 = load i32, i32* @handle_simple_irq, align 4
  %54 = call i32 @irq_domain_set_info(%struct.irq_domain* %43, i32 %46, i32 %49, i32* @nwl_irq_chip, %struct.nwl_pcie* %52, i32 %53, i32* null, i32* null)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %38

58:                                               ; preds = %38
  %59 = load %struct.nwl_msi*, %struct.nwl_msi** %11, align 8
  %60 = getelementptr inbounds %struct.nwl_msi, %struct.nwl_msi* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %31
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32*, %struct.nwl_pcie*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
