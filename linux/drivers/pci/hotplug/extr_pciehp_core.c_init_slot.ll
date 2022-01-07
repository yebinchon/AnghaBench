; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_core.c_init_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_core.c_init_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.hotplug_slot_ops* }
%struct.hotplug_slot_ops = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SLOT_NAME_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pciehp_sysfs_enable_slot = common dso_local global i32 0, align 4
@pciehp_sysfs_disable_slot = common dso_local global i32 0, align 4
@get_power_status = common dso_local global i32 0, align 4
@get_adapter_status = common dso_local global i32 0, align 4
@pciehp_reset_slot = common dso_local global i32 0, align 4
@get_latch_status = common dso_local global i32 0, align 4
@pciehp_get_attention_status = common dso_local global i32 0, align 4
@set_attention_status = common dso_local global i32 0, align 4
@pciehp_get_raw_indicator_status = common dso_local global i32 0, align 4
@pciehp_set_raw_indicator_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"pci_hp_initialize failed: error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @init_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_slot(%struct.controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controller*, align 8
  %4 = alloca %struct.hotplug_slot_ops*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  %9 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hotplug_slot_ops* @kzalloc(i32 32, i32 %13)
  store %struct.hotplug_slot_ops* %14, %struct.hotplug_slot_ops** %4, align 8
  %15 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %16 = icmp ne %struct.hotplug_slot_ops* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %100

20:                                               ; preds = %1
  %21 = load i32, i32* @pciehp_sysfs_enable_slot, align 4
  %22 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %23 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @pciehp_sysfs_disable_slot, align 4
  %25 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %26 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @get_power_status, align 4
  %28 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %29 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @get_adapter_status, align 4
  %31 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %32 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @pciehp_reset_slot, align 4
  %34 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %35 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.controller*, %struct.controller** %3, align 8
  %37 = call i64 @MRL_SENS(%struct.controller* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %20
  %40 = load i32, i32* @get_latch_status, align 4
  %41 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %42 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %20
  %44 = load %struct.controller*, %struct.controller** %3, align 8
  %45 = call i64 @ATTN_LED(%struct.controller* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* @pciehp_get_attention_status, align 4
  %49 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %50 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @set_attention_status, align 4
  %52 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %53 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %71

54:                                               ; preds = %43
  %55 = load %struct.controller*, %struct.controller** %3, align 8
  %56 = getelementptr inbounds %struct.controller, %struct.controller* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load i32, i32* @pciehp_get_raw_indicator_status, align 4
  %65 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %66 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @pciehp_set_raw_indicator_status, align 4
  %68 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %69 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %54
  br label %71

71:                                               ; preds = %70, %47
  %72 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %73 = load %struct.controller*, %struct.controller** %3, align 8
  %74 = getelementptr inbounds %struct.controller, %struct.controller* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store %struct.hotplug_slot_ops* %72, %struct.hotplug_slot_ops** %75, align 8
  %76 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %77 = load %struct.controller*, %struct.controller** %3, align 8
  %78 = call i32 @PSN(%struct.controller* %77)
  %79 = call i32 @snprintf(i8* %12, i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.controller*, %struct.controller** %3, align 8
  %81 = getelementptr inbounds %struct.controller, %struct.controller* %80, i32 0, i32 1
  %82 = load %struct.controller*, %struct.controller** %3, align 8
  %83 = getelementptr inbounds %struct.controller, %struct.controller* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pci_hp_initialize(%struct.TYPE_6__* %81, i32 %88, i32 0, i8* %12)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %71
  %93 = load %struct.controller*, %struct.controller** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @ctrl_err(%struct.controller* %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %97 = call i32 @kfree(%struct.hotplug_slot_ops* %96)
  br label %98

98:                                               ; preds = %92, %71
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %100

100:                                              ; preds = %98, %17
  %101 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hotplug_slot_ops* @kzalloc(i32, i32) #2

declare dso_local i64 @MRL_SENS(%struct.controller*) #2

declare dso_local i64 @ATTN_LED(%struct.controller*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @PSN(%struct.controller*) #2

declare dso_local i32 @pci_hp_initialize(%struct.TYPE_6__*, i32, i32, i8*) #2

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32) #2

declare dso_local i32 @kfree(%struct.hotplug_slot_ops*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
