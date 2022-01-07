; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_ctrl.c_shpchp_handle_power_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_ctrl.c_shpchp_handle_power_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }
%struct.slot = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.slot*)* }

@.str = private unnamed_addr constant [32 x i8] c"Power fault interrupt received\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Power fault cleared on Slot(%s)\0A\00", align 1
@INT_POWER_FAULT_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Power fault on Slot(%s)\0A\00", align 1
@INT_POWER_FAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Power fault bit %x set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shpchp_handle_power_fault(i32 %0, %struct.controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.controller*, align 8
  %5 = alloca %struct.slot*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.controller* %1, %struct.controller** %4, align 8
  %7 = load %struct.controller*, %struct.controller** %4, align 8
  %8 = call i32 @ctrl_dbg(%struct.controller* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.controller*, %struct.controller** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.controller*, %struct.controller** %4, align 8
  %12 = getelementptr inbounds %struct.controller, %struct.controller* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  %15 = call %struct.slot* @shpchp_find_slot(%struct.controller* %9, i32 %14)
  store %struct.slot* %15, %struct.slot** %5, align 8
  %16 = load %struct.slot*, %struct.slot** %5, align 8
  %17 = getelementptr inbounds %struct.slot, %struct.slot* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.slot*)*, i32 (%struct.slot*)** %19, align 8
  %21 = load %struct.slot*, %struct.slot** %5, align 8
  %22 = call i32 %20(%struct.slot* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load %struct.controller*, %struct.controller** %4, align 8
  %26 = load %struct.slot*, %struct.slot** %5, align 8
  %27 = call i32 @slot_name(%struct.slot* %26)
  %28 = call i32 @ctrl_info(%struct.controller* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.slot*, %struct.slot** %5, align 8
  %30 = getelementptr inbounds %struct.slot, %struct.slot* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* @INT_POWER_FAULT_CLEAR, align 4
  store i32 %31, i32* %6, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.controller*, %struct.controller** %4, align 8
  %34 = load %struct.slot*, %struct.slot** %5, align 8
  %35 = call i32 @slot_name(%struct.slot* %34)
  %36 = call i32 @ctrl_info(%struct.controller* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @INT_POWER_FAULT, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.slot*, %struct.slot** %5, align 8
  %39 = getelementptr inbounds %struct.slot, %struct.slot* %38, i32 0, i32 0
  store i32 255, i32* %39, align 8
  %40 = load %struct.controller*, %struct.controller** %4, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ctrl_info(%struct.controller* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %32, %24
  %44 = load %struct.slot*, %struct.slot** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @queue_interrupt_event(%struct.slot* %44, i32 %45)
  ret i32 1
}

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*) #1

declare dso_local %struct.slot* @shpchp_find_slot(%struct.controller*, i32) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.slot*) #1

declare dso_local i32 @queue_interrupt_event(%struct.slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
