; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpaphp_slot.c_alloc_slot_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpaphp_slot.c_alloc_slot_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@rpaphp_hotplug_slot_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.slot* @alloc_slot_struct(%struct.device_node* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.slot*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.slot*, align 8
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.slot* @kzalloc(i32 24, i32 %11)
  store %struct.slot* %12, %struct.slot** %10, align 8
  %13 = load %struct.slot*, %struct.slot** %10, align 8
  %14 = icmp ne %struct.slot* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %45

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kstrdup(i8* %17, i32 %18)
  %20 = load %struct.slot*, %struct.slot** %10, align 8
  %21 = getelementptr inbounds %struct.slot, %struct.slot* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.slot*, %struct.slot** %10, align 8
  %23 = getelementptr inbounds %struct.slot, %struct.slot* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %42

27:                                               ; preds = %16
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call i32 @of_node_get(%struct.device_node* %28)
  %30 = load %struct.slot*, %struct.slot** %10, align 8
  %31 = getelementptr inbounds %struct.slot, %struct.slot* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.slot*, %struct.slot** %10, align 8
  %34 = getelementptr inbounds %struct.slot, %struct.slot* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.slot*, %struct.slot** %10, align 8
  %37 = getelementptr inbounds %struct.slot, %struct.slot* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.slot*, %struct.slot** %10, align 8
  %39 = getelementptr inbounds %struct.slot, %struct.slot* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* @rpaphp_hotplug_slot_ops, i32** %40, align 8
  %41 = load %struct.slot*, %struct.slot** %10, align 8
  store %struct.slot* %41, %struct.slot** %5, align 8
  br label %46

42:                                               ; preds = %26
  %43 = load %struct.slot*, %struct.slot** %10, align 8
  %44 = call i32 @kfree(%struct.slot* %43)
  br label %45

45:                                               ; preds = %42, %15
  store %struct.slot* null, %struct.slot** %5, align 8
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.slot*, %struct.slot** %5, align 8
  ret %struct.slot* %47
}

declare dso_local %struct.slot* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @kfree(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
