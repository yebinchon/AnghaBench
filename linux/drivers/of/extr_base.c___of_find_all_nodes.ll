; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_find_all_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_find_all_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, %struct.device_node*, %struct.device_node* }

@of_root = common dso_local global %struct.device_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @__of_find_all_nodes(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %4 = load %struct.device_node*, %struct.device_node** %2, align 8
  %5 = icmp ne %struct.device_node* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load %struct.device_node*, %struct.device_node** @of_root, align 8
  store %struct.device_node* %7, %struct.device_node** %3, align 8
  br label %41

8:                                                ; preds = %1
  %9 = load %struct.device_node*, %struct.device_node** %2, align 8
  %10 = getelementptr inbounds %struct.device_node, %struct.device_node* %9, i32 0, i32 2
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.device_node*, %struct.device_node** %2, align 8
  %15 = getelementptr inbounds %struct.device_node, %struct.device_node* %14, i32 0, i32 2
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %3, align 8
  br label %40

17:                                               ; preds = %8
  %18 = load %struct.device_node*, %struct.device_node** %2, align 8
  store %struct.device_node* %18, %struct.device_node** %3, align 8
  br label %19

19:                                               ; preds = %32, %17
  %20 = load %struct.device_node*, %struct.device_node** %3, align 8
  %21 = getelementptr inbounds %struct.device_node, %struct.device_node* %20, i32 0, i32 1
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.device_node*, %struct.device_node** %3, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 0
  %27 = load %struct.device_node*, %struct.device_node** %26, align 8
  %28 = icmp ne %struct.device_node* %27, null
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i1 [ false, %19 ], [ %29, %24 ]
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = load %struct.device_node*, %struct.device_node** %3, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 1
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  store %struct.device_node* %35, %struct.device_node** %3, align 8
  br label %19

36:                                               ; preds = %30
  %37 = load %struct.device_node*, %struct.device_node** %3, align 8
  %38 = getelementptr inbounds %struct.device_node, %struct.device_node* %37, i32 0, i32 0
  %39 = load %struct.device_node*, %struct.device_node** %38, align 8
  store %struct.device_node* %39, %struct.device_node** %3, align 8
  br label %40

40:                                               ; preds = %36, %13
  br label %41

41:                                               ; preds = %40, %6
  %42 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
