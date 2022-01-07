; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_irq_set_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_irq_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.cpumask = type { i32 }
%struct.iproc_msi = type { i32 }

@IRQ_SET_MASK_OK_DONE = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @iproc_msi_irq_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_msi_irq_set_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iproc_msi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %12 = call %struct.iproc_msi* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.iproc_msi* %12, %struct.iproc_msi** %8, align 8
  %13 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %14 = call i32 @cpumask_first(%struct.cpumask* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.iproc_msi*, %struct.iproc_msi** %8, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @hwirq_to_cpu(%struct.iproc_msi* %15, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @IRQ_SET_MASK_OK_DONE, align 4
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.iproc_msi*, %struct.iproc_msi** %8, align 8
  %27 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %28 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @hwirq_to_canonical_hwirq(%struct.iproc_msi* %26, i64 %29)
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %35 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @IRQ_SET_MASK_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %25, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.iproc_msi* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @hwirq_to_cpu(%struct.iproc_msi*, i64) #1

declare dso_local i64 @hwirq_to_canonical_hwirq(%struct.iproc_msi*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
