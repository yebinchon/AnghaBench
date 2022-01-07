; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_pci_irq_get_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_pci_irq_get_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cpumask = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_irq_get_node(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpumask*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.cpumask* @pci_irq_get_affinity(%struct.pci_dev* %7, i32 %8)
  store %struct.cpumask* %9, %struct.cpumask** %6, align 8
  %10 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %11 = icmp ne %struct.cpumask* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %14 = call i32 @cpumask_first(%struct.cpumask* %13)
  %15 = call i32 @cpu_to_node(i32 %14)
  %16 = call i32 @local_memory_node(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 @dev_to_node(i32* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.cpumask* @pci_irq_get_affinity(%struct.pci_dev*, i32) #1

declare dso_local i32 @local_memory_node(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @dev_to_node(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
