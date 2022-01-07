; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_handle_button_press.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_handle_button_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Slot(%s): Powering off due to button press\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Slot(%s) Powering on due to button press\0A\00", align 1
@PCI_EXP_SLTCTL_PWR_IND_BLINK = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_ATTN_IND_OFF = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Slot(%s): Button cancel\0A\00", align 1
@PCI_EXP_SLTCTL_PWR_IND_ON = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_PWR_IND_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Slot(%s): Action canceled due to button press\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Slot(%s): Ignoring invalid state %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pciehp_handle_button_press(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  store %struct.controller* %0, %struct.controller** %2, align 8
  %3 = load %struct.controller*, %struct.controller** %2, align 8
  %4 = getelementptr inbounds %struct.controller, %struct.controller* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.controller*, %struct.controller** %2, align 8
  %7 = getelementptr inbounds %struct.controller, %struct.controller* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %69 [
    i32 129, label %9
    i32 128, label %9
    i32 131, label %38
    i32 130, label %38
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.controller*, %struct.controller** %2, align 8
  %11 = getelementptr inbounds %struct.controller, %struct.controller* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.controller*, %struct.controller** %2, align 8
  %16 = getelementptr inbounds %struct.controller, %struct.controller* %15, i32 0, i32 0
  store i32 131, i32* %16, align 4
  %17 = load %struct.controller*, %struct.controller** %2, align 8
  %18 = load %struct.controller*, %struct.controller** %2, align 8
  %19 = call i32 @slot_name(%struct.controller* %18)
  %20 = call i32 @ctrl_info(%struct.controller* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %28

21:                                               ; preds = %9
  %22 = load %struct.controller*, %struct.controller** %2, align 8
  %23 = getelementptr inbounds %struct.controller, %struct.controller* %22, i32 0, i32 0
  store i32 130, i32* %23, align 4
  %24 = load %struct.controller*, %struct.controller** %2, align 8
  %25 = load %struct.controller*, %struct.controller** %2, align 8
  %26 = call i32 @slot_name(%struct.controller* %25)
  %27 = call i32 @ctrl_info(%struct.controller* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.controller*, %struct.controller** %2, align 8
  %30 = load i32, i32* @PCI_EXP_SLTCTL_PWR_IND_BLINK, align 4
  %31 = load i32, i32* @PCI_EXP_SLTCTL_ATTN_IND_OFF, align 4
  %32 = call i32 @pciehp_set_indicators(%struct.controller* %29, i32 %30, i32 %31)
  %33 = load %struct.controller*, %struct.controller** %2, align 8
  %34 = getelementptr inbounds %struct.controller, %struct.controller* %33, i32 0, i32 2
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 5, %35
  %37 = call i32 @schedule_delayed_work(i32* %34, i32 %36)
  br label %77

38:                                               ; preds = %1, %1
  %39 = load %struct.controller*, %struct.controller** %2, align 8
  %40 = load %struct.controller*, %struct.controller** %2, align 8
  %41 = call i32 @slot_name(%struct.controller* %40)
  %42 = call i32 @ctrl_info(%struct.controller* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.controller*, %struct.controller** %2, align 8
  %44 = getelementptr inbounds %struct.controller, %struct.controller* %43, i32 0, i32 2
  %45 = call i32 @cancel_delayed_work(i32* %44)
  %46 = load %struct.controller*, %struct.controller** %2, align 8
  %47 = getelementptr inbounds %struct.controller, %struct.controller* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 131
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load %struct.controller*, %struct.controller** %2, align 8
  %52 = getelementptr inbounds %struct.controller, %struct.controller* %51, i32 0, i32 0
  store i32 128, i32* %52, align 4
  %53 = load %struct.controller*, %struct.controller** %2, align 8
  %54 = load i32, i32* @PCI_EXP_SLTCTL_PWR_IND_ON, align 4
  %55 = load i32, i32* @PCI_EXP_SLTCTL_ATTN_IND_OFF, align 4
  %56 = call i32 @pciehp_set_indicators(%struct.controller* %53, i32 %54, i32 %55)
  br label %64

57:                                               ; preds = %38
  %58 = load %struct.controller*, %struct.controller** %2, align 8
  %59 = getelementptr inbounds %struct.controller, %struct.controller* %58, i32 0, i32 0
  store i32 129, i32* %59, align 4
  %60 = load %struct.controller*, %struct.controller** %2, align 8
  %61 = load i32, i32* @PCI_EXP_SLTCTL_PWR_IND_OFF, align 4
  %62 = load i32, i32* @PCI_EXP_SLTCTL_ATTN_IND_OFF, align 4
  %63 = call i32 @pciehp_set_indicators(%struct.controller* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.controller*, %struct.controller** %2, align 8
  %66 = load %struct.controller*, %struct.controller** %2, align 8
  %67 = call i32 @slot_name(%struct.controller* %66)
  %68 = call i32 @ctrl_info(%struct.controller* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %77

69:                                               ; preds = %1
  %70 = load %struct.controller*, %struct.controller** %2, align 8
  %71 = load %struct.controller*, %struct.controller** %2, align 8
  %72 = call i32 @slot_name(%struct.controller* %71)
  %73 = load %struct.controller*, %struct.controller** %2, align 8
  %74 = getelementptr inbounds %struct.controller, %struct.controller* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ctrl_err(%struct.controller* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %69, %64, %28
  %78 = load %struct.controller*, %struct.controller** %2, align 8
  %79 = getelementptr inbounds %struct.controller, %struct.controller* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.controller*) #1

declare dso_local i32 @pciehp_set_indicators(%struct.controller*, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
