; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_match_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_match_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device_id = type { i64*, i64*, i64* }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.of_device_id* (%struct.of_device_id*, %struct.device_node*)* @__of_match_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.of_device_id* @__of_match_node(%struct.of_device_id* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.of_device_id*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.of_device_id* %0, %struct.of_device_id** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.of_device_id* null, %struct.of_device_id** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %10 = icmp ne %struct.of_device_id* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.of_device_id* null, %struct.of_device_id** %3, align 8
  br label %60

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %55, %12
  %14 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %15 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %13
  %21 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %22 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %29 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %27, %20, %13
  %35 = phi i1 [ true, %20 ], [ true, %13 ], [ %33, %27 ]
  br i1 %35, label %36, label %58

36:                                               ; preds = %34
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %39 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %42 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %45 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @__of_device_is_compatible(%struct.device_node* %37, i64* %40, i64* %43, i64* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  store %struct.of_device_id* %52, %struct.of_device_id** %6, align 8
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %36
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %57 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %56, i32 1
  store %struct.of_device_id* %57, %struct.of_device_id** %4, align 8
  br label %13

58:                                               ; preds = %34
  %59 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  store %struct.of_device_id* %59, %struct.of_device_id** %3, align 8
  br label %60

60:                                               ; preds = %58, %11
  %61 = load %struct.of_device_id*, %struct.of_device_id** %3, align 8
  ret %struct.of_device_id* %61
}

declare dso_local i32 @__of_device_is_compatible(%struct.device_node*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
