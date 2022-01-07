; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.xgene_msi* }
%struct.xgene_msi = type { i32, i32, i32 }

@NR_MSI_VEC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@xgene_msi_bottom_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @xgene_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xgene_msi*, align 8
  %11 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %13 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %12, i32 0, i32 0
  %14 = load %struct.xgene_msi*, %struct.xgene_msi** %13, align 8
  store %struct.xgene_msi* %14, %struct.xgene_msi** %10, align 8
  %15 = load %struct.xgene_msi*, %struct.xgene_msi** %10, align 8
  %16 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.xgene_msi*, %struct.xgene_msi** %10, align 8
  %19 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NR_MSI_VEC, align 4
  %22 = load %struct.xgene_msi*, %struct.xgene_msi** %10, align 8
  %23 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bitmap_find_next_zero_area(i32 %20, i32 %21, i32 0, i32 %24, i32 0)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @NR_MSI_VEC, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load %struct.xgene_msi*, %struct.xgene_msi** %10, align 8
  %31 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.xgene_msi*, %struct.xgene_msi** %10, align 8
  %35 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bitmap_set(i32 %32, i32 %33, i32 %36)
  br label %41

38:                                               ; preds = %4
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.xgene_msi*, %struct.xgene_msi** %10, align 8
  %43 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %54 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %53, i32 0, i32 0
  %55 = load %struct.xgene_msi*, %struct.xgene_msi** %54, align 8
  %56 = load i32, i32* @handle_simple_irq, align 4
  %57 = call i32 @irq_domain_set_info(%struct.irq_domain* %50, i32 %51, i32 %52, i32* @xgene_msi_bottom_irq_chip, %struct.xgene_msi* %55, i32 %56, i32* null, i32* null)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %49, %47
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32*, %struct.xgene_msi*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
