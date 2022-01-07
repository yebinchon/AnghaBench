; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_irq_msi_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-mobiveil.c_mobiveil_irq_msi_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_data = type { i32 }
%struct.mobiveil_pcie = type { %struct.TYPE_2__*, %struct.mobiveil_msi }
%struct.TYPE_2__ = type { i32 }
%struct.mobiveil_msi = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"trying to free unused MSI#%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @mobiveil_irq_msi_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mobiveil_irq_msi_domain_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.mobiveil_pcie*, align 8
  %9 = alloca %struct.mobiveil_msi*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %10, i32 %11)
  store %struct.irq_data* %12, %struct.irq_data** %7, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %14 = call %struct.mobiveil_pcie* @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  store %struct.mobiveil_pcie* %14, %struct.mobiveil_pcie** %8, align 8
  %15 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %8, align 8
  %16 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %15, i32 0, i32 1
  store %struct.mobiveil_msi* %16, %struct.mobiveil_msi** %9, align 8
  %17 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %9, align 8
  %18 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %21 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %9, align 8
  %24 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @test_bit(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %3
  %29 = load %struct.mobiveil_pcie*, %struct.mobiveil_pcie** %8, align 8
  %30 = getelementptr inbounds %struct.mobiveil_pcie, %struct.mobiveil_pcie* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %34 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %45

37:                                               ; preds = %3
  %38 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %39 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %9, align 8
  %42 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__clear_bit(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %37, %28
  %46 = load %struct.mobiveil_msi*, %struct.mobiveil_msi** %9, align 8
  %47 = getelementptr inbounds %struct.mobiveil_msi, %struct.mobiveil_msi* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local %struct.mobiveil_pcie* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
