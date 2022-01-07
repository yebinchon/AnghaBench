; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_irq_msi_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_irq_msi_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.mobiveil_pcie* }
%struct.mobiveil_pcie = type { %struct.mobiveil_msi }
%struct.mobiveil_msi = type { i64, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@mobiveil_msi_bottom_irq_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @mobiveil_irq_msi_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mobiveil_irq_msi_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mobiveil_pcie*, align 8
  %11 = alloca %struct.mobiveil_msi*, align 8
  %12 = alloca i64, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %14 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %13, i32 0, i32 0
  %15 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %14, align 8
  store %struct.mobiveil_pcie* %15, %struct.mobiveil_pcie** %10, align 8
  %16 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %10, align 8
  %17 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %16, i32 0, i32 0
  store %struct.mobiveil_msi* %17, %struct.mobiveil_msi** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %11, align 8
  %23 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %11, align 8
  %26 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %11, align 8
  %29 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @find_first_zero_bit(i32 %27, i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %11, align 8
  %34 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp uge i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %11, align 8
  %39 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %60

43:                                               ; preds = %4
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %11, align 8
  %46 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @set_bit(i64 %44, i32 %47)
  %49 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %11, align 8
  %50 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %56 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %55, i32 0, i32 0
  %57 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %56, align 8
  %58 = load i32, i32* @handle_level_irq, align 4
  %59 = call i32 @irq_domain_set_info(%struct.irq_domain* %52, i32 %53, i64 %54, i32* @mobiveil_msi_bottom_irq_chip, %struct.mobiveil_pcie* %57, i32 %58, i32* null, i32* null)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %43, %37
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i64, i32*, %struct.mobiveil_pcie*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
