; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_of_reserved_mem.c_of_reserved_mem_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_of_reserved_mem.c_of_reserved_mem_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reserved_mem = type { i32 }
%struct.device_node = type { i32 }

@reserved_mem_count = common dso_local global i32 0, align 4
@reserved_mem = common dso_local global %struct.reserved_mem* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.reserved_mem* @of_reserved_mem_lookup(%struct.device_node* %0) #0 {
  %2 = alloca %struct.reserved_mem*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = getelementptr inbounds %struct.device_node, %struct.device_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.reserved_mem* null, %struct.reserved_mem** %2, align 8
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @kbasename(i32 %14)
  store i8* %15, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %36, %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @reserved_mem_count, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.reserved_mem*, %struct.reserved_mem** @reserved_mem, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %21, i64 %23
  %25 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strcmp(i32 %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = load %struct.reserved_mem*, %struct.reserved_mem** @reserved_mem, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.reserved_mem, %struct.reserved_mem* %31, i64 %33
  store %struct.reserved_mem* %34, %struct.reserved_mem** %2, align 8
  br label %40

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %16

39:                                               ; preds = %16
  store %struct.reserved_mem* null, %struct.reserved_mem** %2, align 8
  br label %40

40:                                               ; preds = %39, %30, %10
  %41 = load %struct.reserved_mem*, %struct.reserved_mem** %2, align 8
  ret %struct.reserved_mem* %41
}

declare dso_local i8* @kbasename(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
