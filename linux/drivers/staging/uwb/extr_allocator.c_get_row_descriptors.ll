; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_allocator.c_get_row_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_allocator.c_get_row_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv_alloc_info = type { i8*, %struct.uwb_rsv_row_info }
%struct.uwb_rsv_row_info = type { i32, i32* }

@UWB_MAS_PER_ZONE = common dso_local global i32 0, align 4
@UWB_NUM_ZONES = common dso_local global i32 0, align 4
@UWB_RSV_MAS_NOT_AVAIL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rsv_alloc_info*)* @get_row_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_row_descriptors(%struct.uwb_rsv_alloc_info* %0) #0 {
  %2 = alloca %struct.uwb_rsv_alloc_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.uwb_rsv_row_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uwb_rsv_alloc_info* %0, %struct.uwb_rsv_alloc_info** %2, align 8
  %7 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %8 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %11 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %10, i32 0, i32 1
  store %struct.uwb_rsv_row_info* %11, %struct.uwb_rsv_row_info** %4, align 8
  %12 = load %struct.uwb_rsv_row_info*, %struct.uwb_rsv_row_info** %4, align 8
  %13 = getelementptr inbounds %struct.uwb_rsv_row_info, %struct.uwb_rsv_row_info* %12, i32 0, i32 0
  store i32 16, i32* %13, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %59, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load %struct.uwb_rsv_row_info*, %struct.uwb_rsv_row_info** %4, align 8
  %20 = getelementptr inbounds %struct.uwb_rsv_row_info, %struct.uwb_rsv_row_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 1, i32* %24, align 4
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %55, %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @UWB_NUM_ZONES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @UWB_NUM_ZONES, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %30, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @UWB_RSV_MAS_NOT_AVAIL, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %29
  %44 = load %struct.uwb_rsv_row_info*, %struct.uwb_rsv_row_info** %4, align 8
  %45 = getelementptr inbounds %struct.uwb_rsv_row_info, %struct.uwb_rsv_row_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.uwb_rsv_row_info*, %struct.uwb_rsv_row_info** %4, align 8
  %49 = getelementptr inbounds %struct.uwb_rsv_row_info, %struct.uwb_rsv_row_info* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 0, i32* %53, align 4
  br label %58

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %25

58:                                               ; preds = %43, %25
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %14

62:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
