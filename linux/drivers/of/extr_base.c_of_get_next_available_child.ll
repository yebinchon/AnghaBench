; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_get_next_available_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_get_next_available_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, %struct.device_node* }

@devtree_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %50

11:                                               ; preds = %2
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @raw_spin_lock_irqsave(i32* @devtree_lock, i64 %12)
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = getelementptr inbounds %struct.device_node, %struct.device_node* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  br label %24

20:                                               ; preds = %11
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = getelementptr inbounds %struct.device_node, %struct.device_node* %21, i32 0, i32 1
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi %struct.device_node* [ %19, %16 ], [ %23, %20 ]
  store %struct.device_node* %25, %struct.device_node** %6, align 8
  br label %26

26:                                               ; preds = %40, %24
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.device_node*, %struct.device_node** %6, align 8
  %31 = call i32 @__of_device_is_available(%struct.device_node* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %40

34:                                               ; preds = %29
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call i64 @of_node_get(%struct.device_node* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %44

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = getelementptr inbounds %struct.device_node, %struct.device_node* %41, i32 0, i32 0
  %43 = load %struct.device_node*, %struct.device_node** %42, align 8
  store %struct.device_node* %43, %struct.device_node** %6, align 8
  br label %26

44:                                               ; preds = %38, %26
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = call i32 @of_node_put(%struct.device_node* %45)
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @raw_spin_unlock_irqrestore(i32* @devtree_lock, i64 %47)
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %49, %struct.device_node** %3, align 8
  br label %50

50:                                               ; preds = %44, %10
  %51 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %51
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__of_device_is_available(%struct.device_node*) #1

declare dso_local i64 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
