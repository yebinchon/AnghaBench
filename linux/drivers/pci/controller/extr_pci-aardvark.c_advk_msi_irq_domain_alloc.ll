; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_msi_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-aardvark.c_advk_msi_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.advk_pcie* }
%struct.advk_pcie = type { i32, i32, i32 }

@MSI_IRQ_NUM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @advk_msi_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advk_msi_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.advk_pcie*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %14 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %13, i32 0, i32 0
  %15 = load %struct.advk_pcie*, %struct.advk_pcie** %14, align 8
  store %struct.advk_pcie* %15, %struct.advk_pcie** %10, align 8
  %16 = load %struct.advk_pcie*, %struct.advk_pcie** %10, align 8
  %17 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.advk_pcie*, %struct.advk_pcie** %10, align 8
  %20 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MSI_IRQ_NUM, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @bitmap_find_next_zero_area(i32 %21, i32 %22, i32 0, i32 %23, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @MSI_IRQ_NUM, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.advk_pcie*, %struct.advk_pcie** %10, align 8
  %30 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* @ENOSPC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %68

34:                                               ; preds = %4
  %35 = load %struct.advk_pcie*, %struct.advk_pcie** %10, align 8
  %36 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @bitmap_set(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.advk_pcie*, %struct.advk_pcie** %10, align 8
  %42 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %63, %34
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.advk_pcie*, %struct.advk_pcie** %10, align 8
  %57 = getelementptr inbounds %struct.advk_pcie, %struct.advk_pcie* %56, i32 0, i32 0
  %58 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %59 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %58, i32 0, i32 0
  %60 = load %struct.advk_pcie*, %struct.advk_pcie** %59, align 8
  %61 = load i32, i32* @handle_simple_irq, align 4
  %62 = call i32 @irq_domain_set_info(%struct.irq_domain* %49, i32 %52, i32 %55, i32* %57, %struct.advk_pcie* %60, i32 %61, i32* null, i32* null)
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %28
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32*, %struct.advk_pcie*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
