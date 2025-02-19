; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c___pci_hp_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c___pci_hp_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i8*, %struct.pci_slot*, %struct.module*, i32* }
%struct.pci_slot = type { %struct.hotplug_slot* }
%struct.pci_bus = type { i32 }
%struct.module = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pci_hp_initialize(%struct.hotplug_slot* %0, %struct.pci_bus* %1, i32 %2, i8* %3, %struct.module* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hotplug_slot*, align 8
  %9 = alloca %struct.pci_bus*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.module*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pci_slot*, align 8
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %8, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.module* %4, %struct.module** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %16 = icmp eq %struct.hotplug_slot* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %53

20:                                               ; preds = %6
  %21 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %22 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.module*, %struct.module** %12, align 8
  %30 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %31 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %30, i32 0, i32 2
  store %struct.module* %29, %struct.module** %31, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %34 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %39 = call %struct.pci_slot* @pci_create_slot(%struct.pci_bus* %35, i32 %36, i8* %37, %struct.hotplug_slot* %38)
  store %struct.pci_slot* %39, %struct.pci_slot** %14, align 8
  %40 = load %struct.pci_slot*, %struct.pci_slot** %14, align 8
  %41 = call i64 @IS_ERR(%struct.pci_slot* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load %struct.pci_slot*, %struct.pci_slot** %14, align 8
  %45 = call i32 @PTR_ERR(%struct.pci_slot* %44)
  store i32 %45, i32* %7, align 4
  br label %53

46:                                               ; preds = %28
  %47 = load %struct.pci_slot*, %struct.pci_slot** %14, align 8
  %48 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %49 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %48, i32 0, i32 1
  store %struct.pci_slot* %47, %struct.pci_slot** %49, align 8
  %50 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %51 = load %struct.pci_slot*, %struct.pci_slot** %14, align 8
  %52 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %51, i32 0, i32 0
  store %struct.hotplug_slot* %50, %struct.hotplug_slot** %52, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %46, %43, %25, %17
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.pci_slot* @pci_create_slot(%struct.pci_bus*, i32, i8*, %struct.hotplug_slot*) #1

declare dso_local i64 @IS_ERR(%struct.pci_slot*) #1

declare dso_local i32 @PTR_ERR(%struct.pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
