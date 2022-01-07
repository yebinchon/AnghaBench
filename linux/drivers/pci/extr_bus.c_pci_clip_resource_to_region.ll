; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_bus.c_pci_clip_resource_to_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_bus.c_pci_clip_resource_to_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.resource = type { i64, i64 }
%struct.pci_bus_region = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*, %struct.resource*, %struct.pci_bus_region*)* @pci_clip_resource_to_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_clip_resource_to_region(%struct.pci_bus* %0, %struct.resource* %1, %struct.pci_bus_region* %2) #0 {
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.pci_bus_region*, align 8
  %7 = alloca %struct.pci_bus_region, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store %struct.pci_bus_region* %2, %struct.pci_bus_region** %6, align 8
  %8 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %9 = load %struct.resource*, %struct.resource** %5, align 8
  %10 = call i32 @pcibios_resource_to_bus(%struct.pci_bus* %8, %struct.pci_bus_region* %7, %struct.resource* %9)
  %11 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %7, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pci_bus_region*, %struct.pci_bus_region** %6, align 8
  %14 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.pci_bus_region*, %struct.pci_bus_region** %6, align 8
  %19 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %7, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %17, %3
  %23 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %7, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pci_bus_region*, %struct.pci_bus_region** %6, align 8
  %26 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.pci_bus_region*, %struct.pci_bus_region** %6, align 8
  %31 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %7, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %22
  %35 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %7, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  %45 = load %struct.resource*, %struct.resource** %5, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %51

47:                                               ; preds = %34
  %48 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %49 = load %struct.resource*, %struct.resource** %5, align 8
  %50 = call i32 @pcibios_bus_to_resource(%struct.pci_bus* %48, %struct.resource* %49, %struct.pci_bus_region* %7)
  br label %51

51:                                               ; preds = %47, %40
  ret void
}

declare dso_local i32 @pcibios_resource_to_bus(%struct.pci_bus*, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pcibios_bus_to_resource(%struct.pci_bus*, %struct.resource*, %struct.pci_bus_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
