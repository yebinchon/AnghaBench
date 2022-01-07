; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_graph_get_port_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_graph_get_port_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_graph_get_port_parent(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %35

8:                                                ; preds = %1
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = call i32 @of_node_get(%struct.device_node* %9)
  store i32 3, i32* %4, align 4
  br label %11

11:                                               ; preds = %30, %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = load %struct.device_node*, %struct.device_node** %3, align 8
  %21 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %20)
  store %struct.device_node* %21, %struct.device_node** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.device_node*, %struct.device_node** %3, align 8
  %26 = call i32 @of_node_name_eq(%struct.device_node* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %33

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %4, align 4
  br label %11

33:                                               ; preds = %28, %17
  %34 = load %struct.device_node*, %struct.device_node** %3, align 8
  store %struct.device_node* %34, %struct.device_node** %2, align 8
  br label %35

35:                                               ; preds = %33, %7
  %36 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %36
}

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_name_eq(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
