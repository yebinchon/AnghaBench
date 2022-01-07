; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_arena_clear_freelist_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_arena_clear_freelist_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*, i64)* @arena_clear_freelist_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arena_clear_freelist_error(%struct.arena_info* %0, i64 %1) #0 {
  %3 = alloca %struct.arena_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.arena_info* %0, %struct.arena_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %12 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %2
  %20 = call i32 @ZERO_PAGE(i32 0)
  %21 = call i8* @page_address(i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %23 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @to_namespace_offset(%struct.arena_info* %29, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %33 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %36 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  br label %38

38:                                               ; preds = %69, %19
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = call i64 @min(i64 %42, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @arena_write_bytes(%struct.arena_info* %45, i64 %46, i8* %47, i64 %48, i32 0)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %70

53:                                               ; preds = %41
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %64 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %62, %53
  br label %38

70:                                               ; preds = %52, %38
  %71 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %72 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  br label %74

74:                                               ; preds = %70, %2
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @ZERO_PAGE(i32) #1

declare dso_local i64 @to_namespace_offset(%struct.arena_info*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @arena_write_bytes(%struct.arena_info*, i64, i8*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
