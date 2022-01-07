; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_allocator.c_uwb_rsv_find_best_row_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_allocator.c_uwb_rsv_find_best_row_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv_alloc_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@UWB_USABLE_MAS_PER_ROW = common dso_local global i32 0, align 4
@UWB_RSV_ALLOC_FOUND = common dso_local global i32 0, align 4
@UWB_RSV_ALLOC_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rsv_alloc_info*)* @uwb_rsv_find_best_row_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rsv_find_best_row_alloc(%struct.uwb_rsv_alloc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rsv_alloc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uwb_rsv_alloc_info* %0, %struct.uwb_rsv_alloc_info** %3, align 8
  %7 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %3, align 8
  %8 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UWB_USABLE_MAS_PER_ROW, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %3, align 8
  %13 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UWB_USABLE_MAS_PER_ROW, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %3, align 8
  %18 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UWB_USABLE_MAS_PER_ROW, align 4
  %21 = srem i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %50, %26
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %3, align 8
  %35 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %33, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %3, align 8
  %42 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %3, align 8
  %45 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %44, i32 0, i32 2
  store i32 1, i32* %45, align 4
  %46 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %3, align 8
  %47 = call i32 @uwb_rsv_fill_row_alloc(%struct.uwb_rsv_alloc_info* %46)
  %48 = load i32, i32* @UWB_RSV_ALLOC_FOUND, align 4
  store i32 %48, i32* %2, align 4
  br label %55

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  br label %28

53:                                               ; preds = %28
  %54 = load i32, i32* @UWB_RSV_ALLOC_NOT_FOUND, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %39
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @uwb_rsv_fill_row_alloc(%struct.uwb_rsv_alloc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
