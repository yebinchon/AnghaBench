; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_get_next_cpu_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_get_next_cpu_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, %struct.device_node* }

@.str = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@devtree_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_get_next_cpu_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  store %struct.device_node* null, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %2, align 8
  %7 = icmp ne %struct.device_node* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* @devtree_lock, i64 %11)
  %13 = load %struct.device_node*, %struct.device_node** %2, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.device_node*, %struct.device_node** %2, align 8
  %17 = getelementptr inbounds %struct.device_node, %struct.device_node* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %3, align 8
  br label %29

19:                                               ; preds = %10
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = getelementptr inbounds %struct.device_node, %struct.device_node* %23, i32 0, i32 1
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  store %struct.device_node* %25, %struct.device_node** %3, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  br label %28

28:                                               ; preds = %22, %19
  br label %29

29:                                               ; preds = %28, %15
  br label %30

30:                                               ; preds = %48, %29
  %31 = load %struct.device_node*, %struct.device_node** %3, align 8
  %32 = icmp ne %struct.device_node* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.device_node*, %struct.device_node** %3, align 8
  %35 = call i64 @of_node_name_eq(%struct.device_node* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load %struct.device_node*, %struct.device_node** %3, align 8
  %39 = call i64 @__of_node_is_type(%struct.device_node* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %48

42:                                               ; preds = %37, %33
  %43 = load %struct.device_node*, %struct.device_node** %3, align 8
  %44 = call i64 @of_node_get(%struct.device_node* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %52

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.device_node*, %struct.device_node** %3, align 8
  %50 = getelementptr inbounds %struct.device_node, %struct.device_node* %49, i32 0, i32 0
  %51 = load %struct.device_node*, %struct.device_node** %50, align 8
  store %struct.device_node* %51, %struct.device_node** %3, align 8
  br label %30

52:                                               ; preds = %46, %30
  %53 = load %struct.device_node*, %struct.device_node** %2, align 8
  %54 = call i32 @of_node_put(%struct.device_node* %53)
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @raw_spin_unlock_irqrestore(i32* @devtree_lock, i64 %55)
  %57 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %57
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i64 @__of_node_is_type(%struct.device_node*, i8*) #1

declare dso_local i64 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
