; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_enable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_enable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PCI_EXP_SLTCTL_PWR_IND_OFF = common dso_local global i32 0, align 4
@INDICATOR_NOOP = common dso_local global i32 0, align 4
@OFF_STATE = common dso_local global i32 0, align 4
@ON_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @pciehp_enable_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pciehp_enable_slot(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %2, align 8
  %4 = load %struct.controller*, %struct.controller** %2, align 8
  %5 = getelementptr inbounds %struct.controller, %struct.controller* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @pm_runtime_get_sync(i32* %9)
  %11 = load %struct.controller*, %struct.controller** %2, align 8
  %12 = call i32 @__pciehp_enable_slot(%struct.controller* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.controller*, %struct.controller** %2, align 8
  %17 = call i64 @ATTN_BUTTN(%struct.controller* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.controller*, %struct.controller** %2, align 8
  %21 = load i32, i32* @PCI_EXP_SLTCTL_PWR_IND_OFF, align 4
  %22 = load i32, i32* @INDICATOR_NOOP, align 4
  %23 = call i32 @pciehp_set_indicators(%struct.controller* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %15, %1
  %25 = load %struct.controller*, %struct.controller** %2, align 8
  %26 = getelementptr inbounds %struct.controller, %struct.controller* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @pm_runtime_put(i32* %30)
  %32 = load %struct.controller*, %struct.controller** %2, align 8
  %33 = getelementptr inbounds %struct.controller, %struct.controller* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @OFF_STATE, align 4
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @ON_STATE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.controller*, %struct.controller** %2, align 8
  %44 = getelementptr inbounds %struct.controller, %struct.controller* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.controller*, %struct.controller** %2, align 8
  %46 = getelementptr inbounds %struct.controller, %struct.controller* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @__pciehp_enable_slot(%struct.controller*) #1

declare dso_local i64 @ATTN_BUTTN(%struct.controller*) #1

declare dso_local i32 @pciehp_set_indicators(%struct.controller*, i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
