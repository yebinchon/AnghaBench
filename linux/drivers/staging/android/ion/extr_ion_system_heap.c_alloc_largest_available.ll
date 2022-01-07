; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c_alloc_largest_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c_alloc_largest_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.ion_system_heap = type { i32 }
%struct.ion_buffer = type { i32 }

@NUM_ORDERS = common dso_local global i32 0, align 4
@orders = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.ion_system_heap*, %struct.ion_buffer*, i64, i32)* @alloc_largest_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @alloc_largest_available(%struct.ion_system_heap* %0, %struct.ion_buffer* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.ion_system_heap*, align 8
  %7 = alloca %struct.ion_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.ion_system_heap* %0, %struct.ion_system_heap** %6, align 8
  store %struct.ion_buffer* %1, %struct.ion_buffer** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %49, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @NUM_ORDERS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load i64, i64* %8, align 8
  %18 = load i32*, i32** @orders, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @order_to_size(i32 %22)
  %24 = icmp ult i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %49

26:                                               ; preds = %16
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** @orders, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %49

35:                                               ; preds = %26
  %36 = load %struct.ion_system_heap*, %struct.ion_system_heap** %6, align 8
  %37 = load %struct.ion_buffer*, %struct.ion_buffer** %7, align 8
  %38 = load i32*, i32** @orders, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.page* @alloc_buffer_page(%struct.ion_system_heap* %36, %struct.ion_buffer* %37, i32 %42)
  store %struct.page* %43, %struct.page** %10, align 8
  %44 = load %struct.page*, %struct.page** %10, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  br label %49

47:                                               ; preds = %35
  %48 = load %struct.page*, %struct.page** %10, align 8
  store %struct.page* %48, %struct.page** %5, align 8
  br label %53

49:                                               ; preds = %46, %34, %25
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %12

52:                                               ; preds = %12
  store %struct.page* null, %struct.page** %5, align 8
  br label %53

53:                                               ; preds = %52, %47
  %54 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %54
}

declare dso_local i64 @order_to_size(i32) #1

declare dso_local %struct.page* @alloc_buffer_page(%struct.ion_system_heap*, %struct.ion_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
