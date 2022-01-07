; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pci_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pci_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*)* @__pci_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_reset_bus(%struct.pci_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %5 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %6 = call i32 @pci_bus_reset(%struct.pci_bus* %5, i32 1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %13 = call i64 @pci_bus_trylock(%struct.pci_bus* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %17 = call i32 @pci_bus_save_and_disable_locked(%struct.pci_bus* %16)
  %18 = call i32 (...) @might_sleep()
  %19 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %20 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pci_bridge_secondary_bus_reset(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %24 = call i32 @pci_bus_restore_locked(%struct.pci_bus* %23)
  %25 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %26 = call i32 @pci_bus_unlock(%struct.pci_bus* %25)
  br label %30

27:                                               ; preds = %11
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %15
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @pci_bus_reset(%struct.pci_bus*, i32) #1

declare dso_local i64 @pci_bus_trylock(%struct.pci_bus*) #1

declare dso_local i32 @pci_bus_save_and_disable_locked(%struct.pci_bus*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @pci_bridge_secondary_bus_reset(i32) #1

declare dso_local i32 @pci_bus_restore_locked(%struct.pci_bus*) #1

declare dso_local i32 @pci_bus_unlock(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
