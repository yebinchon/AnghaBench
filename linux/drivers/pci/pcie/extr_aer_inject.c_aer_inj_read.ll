; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer_inject.c_aer_inj_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer_inject.c_aer_inj_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_ops* }
%struct.pci_ops = type { i32 (%struct.pci_bus.0*, i32, i32, i32, i32*)* }
%struct.pci_bus.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @aer_inj_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aer_inj_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_ops*, align 8
  %13 = alloca %struct.pci_ops*, align 8
  %14 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = call %struct.pci_ops* @__find_pci_bus_ops(%struct.pci_bus* %15)
  store %struct.pci_ops* %16, %struct.pci_ops** %12, align 8
  %17 = load %struct.pci_ops*, %struct.pci_ops** %12, align 8
  %18 = icmp ne %struct.pci_ops* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %41

20:                                               ; preds = %5
  %21 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 0
  %23 = load %struct.pci_ops*, %struct.pci_ops** %22, align 8
  store %struct.pci_ops* %23, %struct.pci_ops** %13, align 8
  %24 = load %struct.pci_ops*, %struct.pci_ops** %12, align 8
  %25 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %26 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %25, i32 0, i32 0
  store %struct.pci_ops* %24, %struct.pci_ops** %26, align 8
  %27 = load %struct.pci_ops*, %struct.pci_ops** %12, align 8
  %28 = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.pci_bus.0*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus.0*, i32, i32, i32, i32*)** %28, align 8
  %30 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %31 = bitcast %struct.pci_bus* %30 to %struct.pci_bus.0*
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 %29(%struct.pci_bus.0* %31, i32 %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.pci_ops*, %struct.pci_ops** %13, align 8
  %38 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %39 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %38, i32 0, i32 0
  store %struct.pci_ops* %37, %struct.pci_ops** %39, align 8
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %20, %19
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local %struct.pci_ops* @__find_pci_bus_ops(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
