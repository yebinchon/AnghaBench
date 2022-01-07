; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera-msi.c_altera_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera-msi.c_altera_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.altera_msi* }
%struct.altera_msi = type { i64, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@altera_msi_bottom_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@MSI_INTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @altera_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.altera_msi*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %14 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %13, i32 0, i32 0
  %15 = load %struct.altera_msi*, %struct.altera_msi** %14, align 8
  store %struct.altera_msi* %15, %struct.altera_msi** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.altera_msi*, %struct.altera_msi** %10, align 8
  %21 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.altera_msi*, %struct.altera_msi** %10, align 8
  %24 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.altera_msi*, %struct.altera_msi** %10, align 8
  %27 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @find_first_zero_bit(i32 %25, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.altera_msi*, %struct.altera_msi** %10, align 8
  %32 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load %struct.altera_msi*, %struct.altera_msi** %10, align 8
  %37 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %70

41:                                               ; preds = %4
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.altera_msi*, %struct.altera_msi** %10, align 8
  %44 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @set_bit(i64 %42, i32 %45)
  %47 = load %struct.altera_msi*, %struct.altera_msi** %10, align 8
  %48 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %54 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %53, i32 0, i32 0
  %55 = load %struct.altera_msi*, %struct.altera_msi** %54, align 8
  %56 = load i32, i32* @handle_simple_irq, align 4
  %57 = call i32 @irq_domain_set_info(%struct.irq_domain* %50, i32 %51, i64 %52, i32* @altera_msi_bottom_irq_chip, %struct.altera_msi* %55, i32 %56, i32* null, i32* null)
  %58 = load %struct.altera_msi*, %struct.altera_msi** %10, align 8
  %59 = load i32, i32* @MSI_INTMASK, align 4
  %60 = call i32 @msi_readl(%struct.altera_msi* %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i64, i64* %11, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 1, %62
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load %struct.altera_msi*, %struct.altera_msi** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @MSI_INTMASK, align 4
  %69 = call i32 @msi_writel(%struct.altera_msi* %66, i32 %67, i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %41, %35
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i64, i32*, %struct.altera_msi*, i32, i32*, i32*) #1

declare dso_local i32 @msi_readl(%struct.altera_msi*, i32) #1

declare dso_local i32 @msi_writel(%struct.altera_msi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
