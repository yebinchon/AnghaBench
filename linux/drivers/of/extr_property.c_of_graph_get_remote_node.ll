; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_graph_get_remote_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_property.c_of_graph_get_remote_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"no valid endpoint (%d, %d) for node %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no valid remote node\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"not available for remote node\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node* %10, i32 %11, i32 %12)
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load %struct.device_node*, %struct.device_node** %8, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, %struct.device_node* %19)
  store %struct.device_node* null, %struct.device_node** %4, align 8
  br label %40

21:                                               ; preds = %3
  %22 = load %struct.device_node*, %struct.device_node** %8, align 8
  %23 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %22)
  store %struct.device_node* %23, %struct.device_node** %9, align 8
  %24 = load %struct.device_node*, %struct.device_node** %8, align 8
  %25 = call i32 @of_node_put(%struct.device_node* %24)
  %26 = load %struct.device_node*, %struct.device_node** %9, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* null, %struct.device_node** %4, align 8
  br label %40

30:                                               ; preds = %21
  %31 = load %struct.device_node*, %struct.device_node** %9, align 8
  %32 = call i32 @of_device_is_available(%struct.device_node* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.device_node*, %struct.device_node** %9, align 8
  %37 = call i32 @of_node_put(%struct.device_node* %36)
  store %struct.device_node* null, %struct.device_node** %4, align 8
  br label %40

38:                                               ; preds = %30
  %39 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %39, %struct.device_node** %4, align 8
  br label %40

40:                                               ; preds = %38, %34, %28, %16
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  ret %struct.device_node* %41
}

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
