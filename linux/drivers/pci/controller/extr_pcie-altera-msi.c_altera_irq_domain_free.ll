; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera-msi.c_altera_irq_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera-msi.c_altera_irq_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_data = type { i32 }
%struct.altera_msi = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"trying to free unused MSI#%lu\0A\00", align 1
@MSI_INTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @altera_irq_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_irq_domain_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.altera_msi*, align 8
  %9 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %10, i32 %11)
  store %struct.irq_data* %12, %struct.irq_data** %7, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %14 = call %struct.altera_msi* @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  store %struct.altera_msi* %14, %struct.altera_msi** %8, align 8
  %15 = load %struct.altera_msi*, %struct.altera_msi** %8, align 8
  %16 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.altera_msi*, %struct.altera_msi** %8, align 8
  %22 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @test_bit(i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %3
  %27 = load %struct.altera_msi*, %struct.altera_msi** %8, align 8
  %28 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %32 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %57

35:                                               ; preds = %3
  %36 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %37 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.altera_msi*, %struct.altera_msi** %8, align 8
  %40 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__clear_bit(i32 %38, i32 %41)
  %43 = load %struct.altera_msi*, %struct.altera_msi** %8, align 8
  %44 = load i32, i32* @MSI_INTMASK, align 4
  %45 = call i32 @msi_readl(%struct.altera_msi* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %47 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.altera_msi*, %struct.altera_msi** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @MSI_INTMASK, align 4
  %56 = call i32 @msi_writel(%struct.altera_msi* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %35, %26
  %58 = load %struct.altera_msi*, %struct.altera_msi** %8, align 8
  %59 = getelementptr inbounds %struct.altera_msi, %struct.altera_msi* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  ret void
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local %struct.altera_msi* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @msi_readl(%struct.altera_msi*, i32) #1

declare dso_local i32 @msi_writel(%struct.altera_msi*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
