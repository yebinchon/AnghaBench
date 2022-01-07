; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_setup_pci_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_setup_pci_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.pci_bus = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to find wifi PCI bus\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@eeepc_hotplug_slot_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"eeepc-wifi\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to register hotplug slot - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_laptop*)* @eeepc_setup_pci_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_setup_pci_hotplug(%struct.eeepc_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeepc_laptop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = call %struct.pci_bus* @pci_find_bus(i32 0, i32 1)
  store %struct.pci_bus* %8, %struct.pci_bus** %5, align 8
  %9 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %10 = icmp ne %struct.pci_bus* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %17 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* @eeepc_hotplug_slot_ops, i32** %18, align 8
  %19 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %20 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %19, i32 0, i32 0
  %21 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %22 = call i32 @pci_hp_register(%struct.TYPE_2__* %20, %struct.pci_bus* %21, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %34

29:                                               ; preds = %25
  %30 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %31 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %28, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pci_hp_register(%struct.TYPE_2__*, %struct.pci_bus*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
