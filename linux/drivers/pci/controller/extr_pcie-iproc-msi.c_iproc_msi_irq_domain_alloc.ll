; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.iproc_msi* }
%struct.iproc_msi = type { i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@iproc_msi_bottom_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @iproc_msi_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_msi_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iproc_msi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %14 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %13, i32 0, i32 0
  %15 = load %struct.iproc_msi*, %struct.iproc_msi** %14, align 8
  store %struct.iproc_msi* %15, %struct.iproc_msi** %10, align 8
  %16 = load %struct.iproc_msi*, %struct.iproc_msi** %10, align 8
  %17 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.iproc_msi*, %struct.iproc_msi** %10, align 8
  %20 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iproc_msi*, %struct.iproc_msi** %10, align 8
  %23 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iproc_msi*, %struct.iproc_msi** %10, align 8
  %26 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bitmap_find_next_zero_area(i32 %21, i32 %24, i32 0, i32 %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.iproc_msi*, %struct.iproc_msi** %10, align 8
  %31 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %4
  %35 = load %struct.iproc_msi*, %struct.iproc_msi** %10, align 8
  %36 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.iproc_msi*, %struct.iproc_msi** %10, align 8
  %40 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bitmap_set(i32 %37, i32 %38, i32 %41)
  br label %49

43:                                               ; preds = %4
  %44 = load %struct.iproc_msi*, %struct.iproc_msi** %10, align 8
  %45 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %75

49:                                               ; preds = %34
  %50 = load %struct.iproc_msi*, %struct.iproc_msi** %10, align 8
  %51 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %70, %49
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %62, %63
  %65 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %66 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %65, i32 0, i32 0
  %67 = load %struct.iproc_msi*, %struct.iproc_msi** %66, align 8
  %68 = load i32, i32* @handle_simple_irq, align 4
  %69 = call i32 @irq_domain_set_info(%struct.irq_domain* %58, i32 %61, i32 %64, i32* @iproc_msi_bottom_irq_chip, %struct.iproc_msi* %67, i32 %68, i32* null, i32* null)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %53

73:                                               ; preds = %53
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %43
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32*, %struct.iproc_msi*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
