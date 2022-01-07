; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_sysfs_disable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_sysfs_disable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32 }
%struct.controller = type { i32, i32, i32, i32, i32 }

@DISABLE_SLOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Slot(%s): Already in powering off state\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Slot(%s): Already disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Slot(%s): Invalid state %#x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pciehp_sysfs_disable_slot(%struct.hotplug_slot* %0) #0 {
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
  switch i32 %12, label %43 [
    i32 133, label %13
    i32 130, label %13
    i32 129, label %33
    i32 132, label %38
    i32 131, label %38
    i32 128, label %38
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.controller*, %struct.controller** %4, align 8
  %15 = getelementptr inbounds %struct.controller, %struct.controller* %14, i32 0, i32 2
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load %struct.controller*, %struct.controller** %4, align 8
  %18 = load i32, i32* @DISABLE_SLOT, align 4
  %19 = call i32 @pciehp_request(%struct.controller* %17, i32 %18)
  %20 = load %struct.controller*, %struct.controller** %4, align 8
  %21 = getelementptr inbounds %struct.controller, %struct.controller* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.controller*, %struct.controller** %4, align 8
  %24 = getelementptr inbounds %struct.controller, %struct.controller* %23, i32 0, i32 3
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @wait_event(i32 %22, i32 %28)
  %30 = load %struct.controller*, %struct.controller** %4, align 8
  %31 = getelementptr inbounds %struct.controller, %struct.controller* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %1
  %34 = load %struct.controller*, %struct.controller** %4, align 8
  %35 = load %struct.controller*, %struct.controller** %4, align 8
  %36 = call i32 @slot_name(%struct.controller* %35)
  %37 = call i32 @ctrl_info(%struct.controller* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %51

38:                                               ; preds = %1, %1, %1
  %39 = load %struct.controller*, %struct.controller** %4, align 8
  %40 = load %struct.controller*, %struct.controller** %4, align 8
  %41 = call i32 @slot_name(%struct.controller* %40)
  %42 = call i32 @ctrl_info(%struct.controller* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %51

43:                                               ; preds = %1
  %44 = load %struct.controller*, %struct.controller** %4, align 8
  %45 = load %struct.controller*, %struct.controller** %4, align 8
  %46 = call i32 @slot_name(%struct.controller* %45)
  %47 = load %struct.controller*, %struct.controller** %4, align 8
  %48 = getelementptr inbounds %struct.controller, %struct.controller* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ctrl_err(%struct.controller* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %38, %33
  %52 = load %struct.controller*, %struct.controller** %4, align 8
  %53 = getelementptr inbounds %struct.controller, %struct.controller* %52, i32 0, i32 2
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
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
