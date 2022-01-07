; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_page_pool = type { i32, i32, i64, i64 }
%struct.page = type { i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ion_page_pool_shrink(%struct.ion_page_pool* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ion_page_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  store %struct.ion_page_pool* %0, %struct.ion_page_pool** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = call i64 (...) @current_is_kswapd()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @__GFP_HIGHMEM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %14, %13
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ion_page_pool_total(%struct.ion_page_pool* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %76

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %61, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  %35 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %36 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %39 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %44 = call %struct.page* @ion_page_pool_remove(%struct.ion_page_pool* %43, i32 0)
  store %struct.page* %44, %struct.page** %10, align 8
  br label %61

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %50 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %55 = call %struct.page* @ion_page_pool_remove(%struct.ion_page_pool* %54, i32 1)
  store %struct.page* %55, %struct.page** %10, align 8
  br label %60

56:                                               ; preds = %48, %45
  %57 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %58 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %74

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %63 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %66 = load %struct.page*, %struct.page** %10, align 8
  %67 = call i32 @ion_page_pool_free_pages(%struct.ion_page_pool* %65, %struct.page* %66)
  %68 = load %struct.ion_page_pool*, %struct.ion_page_pool** %5, align 8
  %69 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 1, %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %30

74:                                               ; preds = %56, %30
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %25
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @current_is_kswapd(...) #1

declare dso_local i32 @ion_page_pool_total(%struct.ion_page_pool*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @ion_page_pool_remove(%struct.ion_page_pool*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ion_page_pool_free_pages(%struct.ion_page_pool*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
