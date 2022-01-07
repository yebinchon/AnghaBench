; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_handle_presence_or_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_handle_presence_or_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, i32, i32 }

@POWEROFF_STATE = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_DLLSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Slot(%s): Link Down\0A\00", align 1
@PCI_EXP_SLTSTA_PDC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Slot(%s): Card not present\0A\00", align 1
@SURPRISE_REMOVAL = common dso_local global i32 0, align 4
@POWERON_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Slot(%s): Card present\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Slot(%s): Link Up\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pciehp_handle_presence_or_link_change(%struct.controller* %0, i32 %1) #0 {
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.controller*, %struct.controller** %3, align 8
  %8 = getelementptr inbounds %struct.controller, %struct.controller* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.controller*, %struct.controller** %3, align 8
  %11 = getelementptr inbounds %struct.controller, %struct.controller* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %47 [
    i32 131, label %13
    i32 128, label %17
  ]

13:                                               ; preds = %2
  %14 = load %struct.controller*, %struct.controller** %3, align 8
  %15 = getelementptr inbounds %struct.controller, %struct.controller* %14, i32 0, i32 3
  %16 = call i32 @cancel_delayed_work(i32* %15)
  br label %17

17:                                               ; preds = %2, %13
  %18 = load i32, i32* @POWEROFF_STATE, align 4
  %19 = load %struct.controller*, %struct.controller** %3, align 8
  %20 = getelementptr inbounds %struct.controller, %struct.controller* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.controller*, %struct.controller** %3, align 8
  %22 = getelementptr inbounds %struct.controller, %struct.controller* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PCI_EXP_SLTSTA_DLLSC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.controller*, %struct.controller** %3, align 8
  %30 = load %struct.controller*, %struct.controller** %3, align 8
  %31 = call i32 @slot_name(%struct.controller* %30)
  %32 = call i32 @ctrl_info(%struct.controller* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %17
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PCI_EXP_SLTSTA_PDC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.controller*, %struct.controller** %3, align 8
  %40 = load %struct.controller*, %struct.controller** %3, align 8
  %41 = call i32 @slot_name(%struct.controller* %40)
  %42 = call i32 @ctrl_info(%struct.controller* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.controller*, %struct.controller** %3, align 8
  %45 = load i32, i32* @SURPRISE_REMOVAL, align 4
  %46 = call i32 @pciehp_disable_slot(%struct.controller* %44, i32 %45)
  br label %51

47:                                               ; preds = %2
  %48 = load %struct.controller*, %struct.controller** %3, align 8
  %49 = getelementptr inbounds %struct.controller, %struct.controller* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.controller*, %struct.controller** %3, align 8
  %53 = getelementptr inbounds %struct.controller, %struct.controller* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.controller*, %struct.controller** %3, align 8
  %56 = call i32 @pciehp_card_present(%struct.controller* %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.controller*, %struct.controller** %3, align 8
  %58 = call i32 @pciehp_check_link_active(%struct.controller* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load %struct.controller*, %struct.controller** %3, align 8
  %66 = getelementptr inbounds %struct.controller, %struct.controller* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %107

68:                                               ; preds = %61, %51
  %69 = load %struct.controller*, %struct.controller** %3, align 8
  %70 = getelementptr inbounds %struct.controller, %struct.controller* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %103 [
    i32 130, label %72
    i32 129, label %76
  ]

72:                                               ; preds = %68
  %73 = load %struct.controller*, %struct.controller** %3, align 8
  %74 = getelementptr inbounds %struct.controller, %struct.controller* %73, i32 0, i32 3
  %75 = call i32 @cancel_delayed_work(i32* %74)
  br label %76

76:                                               ; preds = %68, %72
  %77 = load i32, i32* @POWERON_STATE, align 4
  %78 = load %struct.controller*, %struct.controller** %3, align 8
  %79 = getelementptr inbounds %struct.controller, %struct.controller* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.controller*, %struct.controller** %3, align 8
  %81 = getelementptr inbounds %struct.controller, %struct.controller* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.controller*, %struct.controller** %3, align 8
  %87 = load %struct.controller*, %struct.controller** %3, align 8
  %88 = call i32 @slot_name(%struct.controller* %87)
  %89 = call i32 @ctrl_info(%struct.controller* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %76
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.controller*, %struct.controller** %3, align 8
  %95 = load %struct.controller*, %struct.controller** %3, align 8
  %96 = call i32 @slot_name(%struct.controller* %95)
  %97 = call i32 @ctrl_info(%struct.controller* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %90
  %99 = load %struct.controller*, %struct.controller** %3, align 8
  %100 = call i32 @pciehp_enable_slot(%struct.controller* %99)
  %101 = load %struct.controller*, %struct.controller** %3, align 8
  %102 = getelementptr inbounds %struct.controller, %struct.controller* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %107

103:                                              ; preds = %68
  %104 = load %struct.controller*, %struct.controller** %3, align 8
  %105 = getelementptr inbounds %struct.controller, %struct.controller* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  br label %107

107:                                              ; preds = %64, %103, %98
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.controller*) #1

declare dso_local i32 @pciehp_disable_slot(%struct.controller*, i32) #1

declare dso_local i32 @pciehp_card_present(%struct.controller*) #1

declare dso_local i32 @pciehp_check_link_active(%struct.controller*) #1

declare dso_local i32 @pciehp_enable_slot(%struct.controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
