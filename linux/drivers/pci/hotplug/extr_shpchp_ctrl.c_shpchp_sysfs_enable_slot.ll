; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_ctrl.c_shpchp_sysfs_enable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_ctrl.c_shpchp_sysfs_enable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, i32, i32, %struct.controller* }
%struct.controller = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Slot %s is already in powering on state\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Already enabled on slot %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Not a valid state on slot %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shpchp_sysfs_enable_slot(%struct.slot* %0) #0 {
  %2 = alloca %struct.slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.controller*, align 8
  store %struct.slot* %0, %struct.slot** %2, align 8
  %5 = load i32, i32* @ENODEV, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.slot*, %struct.slot** %2, align 8
  %8 = getelementptr inbounds %struct.slot, %struct.slot* %7, i32 0, i32 3
  %9 = load %struct.controller*, %struct.controller** %8, align 8
  store %struct.controller* %9, %struct.controller** %4, align 8
  %10 = load %struct.slot*, %struct.slot** %2, align 8
  %11 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.slot*, %struct.slot** %2, align 8
  %14 = getelementptr inbounds %struct.slot, %struct.slot* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %43 [
    i32 131, label %16
    i32 128, label %20
    i32 129, label %33
    i32 132, label %38
    i32 130, label %38
  ]

16:                                               ; preds = %1
  %17 = load %struct.slot*, %struct.slot** %2, align 8
  %18 = getelementptr inbounds %struct.slot, %struct.slot* %17, i32 0, i32 2
  %19 = call i32 @cancel_delayed_work(i32* %18)
  br label %20

20:                                               ; preds = %1, %16
  %21 = load %struct.slot*, %struct.slot** %2, align 8
  %22 = getelementptr inbounds %struct.slot, %struct.slot* %21, i32 0, i32 0
  store i32 129, i32* %22, align 8
  %23 = load %struct.slot*, %struct.slot** %2, align 8
  %24 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.slot*, %struct.slot** %2, align 8
  %27 = call i32 @shpchp_enable_slot(%struct.slot* %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.slot*, %struct.slot** %2, align 8
  %29 = getelementptr inbounds %struct.slot, %struct.slot* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.slot*, %struct.slot** %2, align 8
  %32 = getelementptr inbounds %struct.slot, %struct.slot* %31, i32 0, i32 0
  store i32 128, i32* %32, align 8
  br label %48

33:                                               ; preds = %1
  %34 = load %struct.controller*, %struct.controller** %4, align 8
  %35 = load %struct.slot*, %struct.slot** %2, align 8
  %36 = call i32 @slot_name(%struct.slot* %35)
  %37 = call i32 @ctrl_info(%struct.controller* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %48

38:                                               ; preds = %1, %1
  %39 = load %struct.controller*, %struct.controller** %4, align 8
  %40 = load %struct.slot*, %struct.slot** %2, align 8
  %41 = call i32 @slot_name(%struct.slot* %40)
  %42 = call i32 @ctrl_info(%struct.controller* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %48

43:                                               ; preds = %1
  %44 = load %struct.controller*, %struct.controller** %4, align 8
  %45 = load %struct.slot*, %struct.slot** %2, align 8
  %46 = call i32 @slot_name(%struct.slot* %45)
  %47 = call i32 @ctrl_err(%struct.controller* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %38, %33, %20
  %49 = load %struct.slot*, %struct.slot** %2, align 8
  %50 = getelementptr inbounds %struct.slot, %struct.slot* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @shpchp_enable_slot(%struct.slot*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.slot*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
