; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_search.c_pci_find_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_search.c_pci_find_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_bus* @pci_find_bus(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca %struct.pci_bus*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.pci_bus* null, %struct.pci_bus** %6, align 8
  br label %8

8:                                                ; preds = %26, %17, %2
  %9 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %10 = call %struct.pci_bus* @pci_find_next_bus(%struct.pci_bus* %9)
  store %struct.pci_bus* %10, %struct.pci_bus** %6, align 8
  %11 = icmp ne %struct.pci_bus* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %14 = call i32 @pci_domain_nr(%struct.pci_bus* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %8

18:                                               ; preds = %12
  %19 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.pci_bus* @pci_do_find_bus(%struct.pci_bus* %19, i32 %20)
  store %struct.pci_bus* %21, %struct.pci_bus** %7, align 8
  %22 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %23 = icmp ne %struct.pci_bus* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  store %struct.pci_bus* %25, %struct.pci_bus** %3, align 8
  br label %28

26:                                               ; preds = %18
  br label %8

27:                                               ; preds = %8
  store %struct.pci_bus* null, %struct.pci_bus** %3, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  ret %struct.pci_bus* %29
}

declare dso_local %struct.pci_bus* @pci_find_next_bus(%struct.pci_bus*) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local %struct.pci_bus* @pci_do_find_bus(%struct.pci_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
