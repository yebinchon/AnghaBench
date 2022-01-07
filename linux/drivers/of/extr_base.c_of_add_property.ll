; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_add_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_add_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32 }

@of_mutex = common dso_local global i32 0, align 4
@devtree_lock = common dso_local global i32 0, align 4
@OF_RECONFIG_ADD_PROPERTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_add_property(%struct.device_node* %0, %struct.property* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.property* %1, %struct.property** %4, align 8
  %7 = call i32 @mutex_lock(i32* @of_mutex)
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @raw_spin_lock_irqsave(i32* @devtree_lock, i64 %8)
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = load %struct.property*, %struct.property** %4, align 8
  %12 = call i32 @__of_add_property(%struct.device_node* %10, %struct.property* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @raw_spin_unlock_irqrestore(i32* @devtree_lock, i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = load %struct.property*, %struct.property** %4, align 8
  %20 = call i32 @__of_add_property_sysfs(%struct.device_node* %18, %struct.property* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = call i32 @mutex_unlock(i32* @of_mutex)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @OF_RECONFIG_ADD_PROPERTY, align 4
  %27 = load %struct.device_node*, %struct.device_node** %3, align 8
  %28 = load %struct.property*, %struct.property** %4, align 8
  %29 = call i32 @of_property_notify(i32 %26, %struct.device_node* %27, %struct.property* %28, i32* null)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__of_add_property(%struct.device_node*, %struct.property*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__of_add_property_sysfs(%struct.device_node*, %struct.property*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @of_property_notify(i32, %struct.device_node*, %struct.property*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
