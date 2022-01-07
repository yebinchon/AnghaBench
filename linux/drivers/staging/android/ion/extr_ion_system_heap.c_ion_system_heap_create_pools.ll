; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c_ion_system_heap_create_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_system_heap.c_ion_system_heap_create_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_page_pool = type { i32 }

@NUM_ORDERS = common dso_local global i32 0, align 4
@low_order_gfp_flags = common dso_local global i32 0, align 4
@orders = common dso_local global i32* null, align 8
@high_order_gfp_flags = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ion_page_pool**)* @ion_system_heap_create_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ion_system_heap_create_pools(%struct.ion_page_pool** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ion_page_pool**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ion_page_pool*, align 8
  %6 = alloca i32, align 4
  store %struct.ion_page_pool** %0, %struct.ion_page_pool*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NUM_ORDERS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = load i32, i32* @low_order_gfp_flags, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** @orders, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @high_order_gfp_flags, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %11
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** @orders, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ion_page_pool* @ion_page_pool_create(i32 %22, i32 %27)
  store %struct.ion_page_pool* %28, %struct.ion_page_pool** %5, align 8
  %29 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %30 = icmp ne %struct.ion_page_pool* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %42

32:                                               ; preds = %21
  %33 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %34 = load %struct.ion_page_pool**, %struct.ion_page_pool*** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ion_page_pool*, %struct.ion_page_pool** %34, i64 %36
  store %struct.ion_page_pool* %33, %struct.ion_page_pool** %37, align 8
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %7

41:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %47

42:                                               ; preds = %31
  %43 = load %struct.ion_page_pool**, %struct.ion_page_pool*** %3, align 8
  %44 = call i32 @ion_system_heap_destroy_pools(%struct.ion_page_pool** %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ion_page_pool* @ion_page_pool_create(i32, i32) #1

declare dso_local i32 @ion_system_heap_destroy_pools(%struct.ion_page_pool**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
