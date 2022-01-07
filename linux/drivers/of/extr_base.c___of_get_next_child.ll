; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_get_next_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_get_next_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, %struct.device_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device_node*, %struct.device_node*)* @__of_get_next_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @__of_get_next_child(%struct.device_node* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %40

10:                                               ; preds = %2
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = getelementptr inbounds %struct.device_node, %struct.device_node* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  br label %21

17:                                               ; preds = %10
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 1
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi %struct.device_node* [ %16, %13 ], [ %20, %17 ]
  store %struct.device_node* %22, %struct.device_node** %6, align 8
  br label %23

23:                                               ; preds = %32, %21
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call i64 @of_node_get(%struct.device_node* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %36

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 0
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  store %struct.device_node* %35, %struct.device_node** %6, align 8
  br label %23

36:                                               ; preds = %30, %23
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = call i32 @of_node_put(%struct.device_node* %37)
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %39, %struct.device_node** %3, align 8
  br label %40

40:                                               ; preds = %36, %9
  %41 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %41
}

declare dso_local i64 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
