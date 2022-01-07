; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_of_regulator.c_of_coupling_find_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_of_regulator.c_of_coupling_find_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"regulator-coupled-with\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.device_node*, i32*)* @of_coupling_find_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_coupling_find_node(%struct.device_node* %0, %struct.device_node* %1, i32* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call i32 @of_count_phandle_with_args(%struct.device_node* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %38, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.device_node* %20, %struct.device_node** %10, align 8
  %21 = load %struct.device_node*, %struct.device_node** %10, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %41

24:                                               ; preds = %17
  %25 = load %struct.device_node*, %struct.device_node** %10, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = icmp eq %struct.device_node* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load %struct.device_node*, %struct.device_node** %10, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  br label %41

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %13

41:                                               ; preds = %34, %23, %13
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
