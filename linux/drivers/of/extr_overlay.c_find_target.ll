; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_find_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_find_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"find target, node: %pOF, phandle 0x%x not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"target-path\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"find target, node: %pOF, path '%s' not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"find target, node: %pOF, no target property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device_node*)* @find_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @find_target(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = call i32 @of_property_read_u32(%struct.device_node* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.device_node* @of_find_node_by_phandle(i32 %13)
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i8*, %struct.device_node*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %22, %struct.device_node** %2, align 8
  br label %42

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %3, align 8
  %25 = call i32 @of_property_read_string(%struct.device_node* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %5)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = call %struct.device_node* @of_find_node_by_path(i8* %29)
  store %struct.device_node* %30, %struct.device_node** %4, align 8
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = icmp ne %struct.device_node* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.device_node*, %struct.device_node** %3, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 (i8*, %struct.device_node*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %38, %struct.device_node** %2, align 8
  br label %42

39:                                               ; preds = %23
  %40 = load %struct.device_node*, %struct.device_node** %3, align 8
  %41 = call i32 (i8*, %struct.device_node*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %40)
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %42

42:                                               ; preds = %39, %37, %21
  %43 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %43
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, ...) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
