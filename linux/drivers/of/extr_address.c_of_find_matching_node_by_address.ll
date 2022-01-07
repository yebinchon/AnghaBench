; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_find_matching_node_by_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_find_matching_node_by_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 }
%struct.resource = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_find_matching_node_by_address(%struct.device_node* %0, %struct.of_device_id* %1, i64 %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.resource, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %12 = call %struct.device_node* @of_find_matching_node(%struct.device_node* %10, %struct.of_device_id* %11)
  store %struct.device_node* %12, %struct.device_node** %8, align 8
  br label %13

13:                                               ; preds = %27, %3
  %14 = load %struct.device_node*, %struct.device_node** %8, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.device_node*, %struct.device_node** %8, align 8
  %18 = call i32 @of_address_to_resource(%struct.device_node* %17, i32 0, %struct.resource* %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %26, %struct.device_node** %4, align 8
  br label %32

27:                                               ; preds = %20, %16
  %28 = load %struct.device_node*, %struct.device_node** %8, align 8
  %29 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %30 = call %struct.device_node* @of_find_matching_node(%struct.device_node* %28, %struct.of_device_id* %29)
  store %struct.device_node* %30, %struct.device_node** %8, align 8
  br label %13

31:                                               ; preds = %13
  store %struct.device_node* null, %struct.device_node** %4, align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  ret %struct.device_node* %33
}

declare dso_local %struct.device_node* @of_find_matching_node(%struct.device_node*, %struct.of_device_id*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
