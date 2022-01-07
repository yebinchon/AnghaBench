; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32)* @pci_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_bus_reset(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %8 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %13 = call i32 @pci_bus_resetable(%struct.pci_bus* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @ENOTTY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %33

22:                                               ; preds = %18
  %23 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %24 = call i32 @pci_bus_lock(%struct.pci_bus* %23)
  %25 = call i32 (...) @might_sleep()
  %26 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %27 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_bridge_secondary_bus_reset(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %31 = call i32 @pci_bus_unlock(%struct.pci_bus* %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %21, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @pci_bus_resetable(%struct.pci_bus*) #1

declare dso_local i32 @pci_bus_lock(%struct.pci_bus*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @pci_bridge_secondary_bus_reset(i32) #1

declare dso_local i32 @pci_bus_unlock(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
