; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c___pci_bridge_assign_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-bus.c___pci_bridge_assign_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.pci_bus* }
%struct.pci_bus = type { i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"not setting up bridge for bus %04x:%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.list_head*, %struct.list_head*)* @__pci_bridge_assign_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pci_bridge_assign_resources(%struct.pci_dev* %0, %struct.list_head* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.pci_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load %struct.list_head*, %struct.list_head** %5, align 8
  %10 = load %struct.list_head*, %struct.list_head** %6, align 8
  %11 = call i32 @pdev_assign_resources_sorted(%struct.pci_dev* %8, %struct.list_head* %9, %struct.list_head* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load %struct.pci_bus*, %struct.pci_bus** %13, align 8
  store %struct.pci_bus* %14, %struct.pci_bus** %7, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = icmp ne %struct.pci_bus* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %20 = load %struct.list_head*, %struct.list_head** %5, align 8
  %21 = load %struct.list_head*, %struct.list_head** %6, align 8
  %22 = call i32 @__pci_bus_assign_resources(%struct.pci_bus* %19, %struct.list_head* %20, %struct.list_head* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %25, 8
  switch i32 %26, label %33 [
    i32 128, label %27
    i32 129, label %30
  ]

27:                                               ; preds = %18
  %28 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %29 = call i32 @pci_setup_bridge(%struct.pci_bus* %28)
  br label %41

30:                                               ; preds = %18
  %31 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %32 = call i32 @pci_setup_cardbus(%struct.pci_bus* %31)
  br label %41

33:                                               ; preds = %18
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %36 = call i32 @pci_domain_nr(%struct.pci_bus* %35)
  %37 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %38 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_info(%struct.pci_dev* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %17, %33, %30, %27
  ret void
}

declare dso_local i32 @pdev_assign_resources_sorted(%struct.pci_dev*, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @__pci_bus_assign_resources(%struct.pci_bus*, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @pci_setup_bridge(%struct.pci_bus*) #1

declare dso_local i32 @pci_setup_cardbus(%struct.pci_bus*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
