; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_update_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_update_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@of_mutex = common dso_local global i32 0, align 4
@devtree_lock = common dso_local global i32 0, align 4
@OF_RECONFIG_UPDATE_PROPERTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_update_property(%struct.device_node* %0, %struct.property* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.property*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.property* %1, %struct.property** %5, align 8
  %9 = load %struct.property*, %struct.property** %5, align 8
  %10 = getelementptr inbounds %struct.property, %struct.property* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = call i32 @mutex_lock(i32* @of_mutex)
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @raw_spin_lock_irqsave(i32* @devtree_lock, i64 %18)
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = load %struct.property*, %struct.property** %5, align 8
  %22 = call i32 @__of_update_property(%struct.device_node* %20, %struct.property* %21, %struct.property** %6)
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @raw_spin_unlock_irqrestore(i32* @devtree_lock, i64 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = load %struct.property*, %struct.property** %5, align 8
  %30 = load %struct.property*, %struct.property** %6, align 8
  %31 = call i32 @__of_update_property_sysfs(%struct.device_node* %28, %struct.property* %29, %struct.property* %30)
  br label %32

32:                                               ; preds = %27, %16
  %33 = call i32 @mutex_unlock(i32* @of_mutex)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @OF_RECONFIG_UPDATE_PROPERTY, align 4
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = load %struct.property*, %struct.property** %5, align 8
  %40 = load %struct.property*, %struct.property** %6, align 8
  %41 = call i32 @of_property_notify(i32 %37, %struct.device_node* %38, %struct.property* %39, %struct.property* %40)
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__of_update_property(%struct.device_node*, %struct.property*, %struct.property**) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__of_update_property_sysfs(%struct.device_node*, %struct.property*, %struct.property*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @of_property_notify(i32, %struct.device_node*, %struct.property*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
