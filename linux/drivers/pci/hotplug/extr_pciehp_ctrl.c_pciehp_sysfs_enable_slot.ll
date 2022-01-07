; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_sysfs_enable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_sysfs_enable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.controller = type { i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_PDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Slot(%s): Already in powering on state\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Slot(%s): Already enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Slot(%s): Invalid state %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pciehp_sysfs_enable_slot(%struct.hotplug_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hotplug_slot*, align 8
  %4 = alloca %struct.controller*, align 8
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %3, align 8
  %5 = load %struct.hotplug_slot*, %struct.hotplug_slot** %3, align 8
  %6 = call %struct.controller* @to_ctrl(%struct.hotplug_slot* %5)
  store %struct.controller* %6, %struct.controller** %4, align 8
  %7 = load %struct.controller*, %struct.controller** %4, align 8
  %8 = getelementptr inbounds %struct.controller, %struct.controller* %7, i32 0, i32 2
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.controller*, %struct.controller** %4, align 8
  %11 = getelementptr inbounds %struct.controller, %struct.controller* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %47 [
    i32 132, label %13
    i32 131, label %13
    i32 128, label %37
    i32 133, label %42
    i32 130, label %42
    i32 129, label %42
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.controller*, %struct.controller** %4, align 8
  %15 = getelementptr inbounds %struct.controller, %struct.controller* %14, i32 0, i32 2
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = load %struct.controller*, %struct.controller** %4, align 8
  %20 = getelementptr inbounds %struct.controller, %struct.controller* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.controller*, %struct.controller** %4, align 8
  %22 = load i32, i32* @PCI_EXP_SLTSTA_PDC, align 4
  %23 = call i32 @pciehp_request(%struct.controller* %21, i32 %22)
  %24 = load %struct.controller*, %struct.controller** %4, align 8
  %25 = getelementptr inbounds %struct.controller, %struct.controller* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.controller*, %struct.controller** %4, align 8
  %28 = getelementptr inbounds %struct.controller, %struct.controller* %27, i32 0, i32 3
  %29 = call i32 @atomic_read(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @wait_event(i32 %26, i32 %32)
  %34 = load %struct.controller*, %struct.controller** %4, align 8
  %35 = getelementptr inbounds %struct.controller, %struct.controller* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %1
  %38 = load %struct.controller*, %struct.controller** %4, align 8
  %39 = load %struct.controller*, %struct.controller** %4, align 8
  %40 = call i32 @slot_name(%struct.controller* %39)
  %41 = call i32 @ctrl_info(%struct.controller* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %55

42:                                               ; preds = %1, %1, %1
  %43 = load %struct.controller*, %struct.controller** %4, align 8
  %44 = load %struct.controller*, %struct.controller** %4, align 8
  %45 = call i32 @slot_name(%struct.controller* %44)
  %46 = call i32 @ctrl_info(%struct.controller* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %55

47:                                               ; preds = %1
  %48 = load %struct.controller*, %struct.controller** %4, align 8
  %49 = load %struct.controller*, %struct.controller** %4, align 8
  %50 = call i32 @slot_name(%struct.controller* %49)
  %51 = load %struct.controller*, %struct.controller** %4, align 8
  %52 = getelementptr inbounds %struct.controller, %struct.controller* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ctrl_err(%struct.controller* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %42, %37
  %56 = load %struct.controller*, %struct.controller** %4, align 8
  %57 = getelementptr inbounds %struct.controller, %struct.controller* %56, i32 0, i32 2
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.controller* @to_ctrl(%struct.hotplug_slot*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pciehp_request(%struct.controller*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.controller*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
