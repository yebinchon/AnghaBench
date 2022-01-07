; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_setup_pci_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_setup_pci_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.pci_bus = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to find wifi PCI bus\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"hotplug_workqueue\00", align 1
@asus_hotplug_work = common dso_local global i32 0, align 4
@asus_hotplug_slot_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"asus-wifi\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to register hotplug slot - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*)* @asus_setup_pci_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_setup_pci_hotplug(%struct.asus_wmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_wmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  store %struct.asus_wmi* %0, %struct.asus_wmi** %3, align 8
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
  br label %52

15:                                               ; preds = %1
  %16 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %18 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %20 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %26 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %25, i32 0, i32 2
  %27 = load i32, i32* @asus_hotplug_work, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %30 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* @asus_hotplug_slot_ops, i32** %31, align 8
  %32 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %33 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %32, i32 0, i32 1
  %34 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %35 = call i32 @pci_hp_register(%struct.TYPE_2__* %33, %struct.pci_bus* %34, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %42

41:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %52

42:                                               ; preds = %38
  %43 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %44 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %47 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @destroy_workqueue(i32 %48)
  br label %50

50:                                               ; preds = %42, %23
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %41, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @pci_hp_register(%struct.TYPE_2__*, %struct.pci_bus*, i32, i8*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
