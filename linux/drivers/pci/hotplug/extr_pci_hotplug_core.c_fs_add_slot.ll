; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c_fs_add_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pci_hotplug_core.c_fs_add_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pci_slot = type { i32 }

@hotplug_slot_attr_power = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@hotplug_slot_attr_attention = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@hotplug_slot_attr_latch = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@hotplug_slot_attr_presence = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@hotplug_slot_attr_test = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_slot*)* @fs_add_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_add_slot(%struct.pci_slot* %0) #0 {
  %2 = alloca %struct.pci_slot*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_slot* %0, %struct.pci_slot** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %5 = call i32 @pci_hp_create_module_link(%struct.pci_slot* %4)
  %6 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %7 = call i64 @has_power_file(%struct.pci_slot* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %11 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %10, i32 0, i32 0
  %12 = call i32 @sysfs_create_file(i32* %11, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hotplug_slot_attr_power, i32 0, i32 0))
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %102

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %19 = call i64 @has_attention_file(%struct.pci_slot* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %23 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %22, i32 0, i32 0
  %24 = call i32 @sysfs_create_file(i32* %23, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hotplug_slot_attr_attention, i32 0, i32 0))
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %93

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %31 = call i64 @has_latch_file(%struct.pci_slot* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %35 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %34, i32 0, i32 0
  %36 = call i32 @sysfs_create_file(i32* %35, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hotplug_slot_attr_latch, i32 0, i32 0))
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %84

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %43 = call i64 @has_adapter_file(%struct.pci_slot* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %47 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %46, i32 0, i32 0
  %48 = call i32 @sysfs_create_file(i32* %47, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hotplug_slot_attr_presence, i32 0, i32 0))
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %75

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %41
  %54 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %55 = call i64 @has_test_file(%struct.pci_slot* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %59 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %58, i32 0, i32 0
  %60 = call i32 @sysfs_create_file(i32* %59, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hotplug_slot_attr_test, i32 0, i32 0))
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %66

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %53
  br label %105

66:                                               ; preds = %63
  %67 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %68 = call i64 @has_adapter_file(%struct.pci_slot* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %72 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %71, i32 0, i32 0
  %73 = call i32 @sysfs_remove_file(i32* %72, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hotplug_slot_attr_presence, i32 0, i32 0))
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %51
  %76 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %77 = call i64 @has_latch_file(%struct.pci_slot* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %81 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %80, i32 0, i32 0
  %82 = call i32 @sysfs_remove_file(i32* %81, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hotplug_slot_attr_latch, i32 0, i32 0))
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %39
  %85 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %86 = call i64 @has_attention_file(%struct.pci_slot* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %90 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %89, i32 0, i32 0
  %91 = call i32 @sysfs_remove_file(i32* %90, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hotplug_slot_attr_attention, i32 0, i32 0))
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %27
  %94 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %95 = call i64 @has_power_file(%struct.pci_slot* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %99 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %98, i32 0, i32 0
  %100 = call i32 @sysfs_remove_file(i32* %99, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hotplug_slot_attr_power, i32 0, i32 0))
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %15
  %103 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %104 = call i32 @pci_hp_remove_module_link(%struct.pci_slot* %103)
  br label %105

105:                                              ; preds = %102, %65
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @pci_hp_create_module_link(%struct.pci_slot*) #1

declare dso_local i64 @has_power_file(%struct.pci_slot*) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i64 @has_attention_file(%struct.pci_slot*) #1

declare dso_local i64 @has_latch_file(%struct.pci_slot*) #1

declare dso_local i64 @has_adapter_file(%struct.pci_slot*) #1

declare dso_local i64 @has_test_file(%struct.pci_slot*) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

declare dso_local i32 @pci_hp_remove_module_link(%struct.pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
