; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_alloc_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_alloc_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_SPEED_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_bus* (%struct.pci_bus*)* @pci_alloc_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_bus* @pci_alloc_bus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.pci_bus* @kzalloc(i32 48, i32 %5)
  store %struct.pci_bus* %6, %struct.pci_bus** %4, align 8
  %7 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %8 = icmp ne %struct.pci_bus* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.pci_bus* null, %struct.pci_bus** %2, align 8
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %12 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %11, i32 0, i32 7
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 6
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 5
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %21 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %20, i32 0, i32 4
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load i8*, i8** @PCI_SPEED_UNKNOWN, align 8
  %27 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %28 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @PCI_SPEED_UNKNOWN, align 8
  %30 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %31 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  store %struct.pci_bus* %32, %struct.pci_bus** %2, align 8
  br label %33

33:                                               ; preds = %10, %9
  %34 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  ret %struct.pci_bus* %34
}

declare dso_local %struct.pci_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
