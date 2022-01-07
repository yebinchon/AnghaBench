; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_allocator.c_uwb_rsv_fill_column_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_allocator.c_uwb_rsv_fill_column_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv_alloc_info = type { i8*, %struct.uwb_rsv_col_info* }
%struct.uwb_rsv_col_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@UWB_NUM_ZONES = common dso_local global i32 0, align 4
@UWB_MAS_PER_ZONE = common dso_local global i32 0, align 4
@UWB_RSV_MAS_SAFE = common dso_local global i8 0, align 1
@UWB_RSV_MAS_UNSAFE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rsv_alloc_info*)* @uwb_rsv_fill_column_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rsv_fill_column_alloc(%struct.uwb_rsv_alloc_info* %0) #0 {
  %2 = alloca %struct.uwb_rsv_alloc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.uwb_rsv_col_info*, align 8
  %9 = alloca i8, align 1
  store %struct.uwb_rsv_alloc_info* %0, %struct.uwb_rsv_alloc_info** %2, align 8
  %10 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %11 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.uwb_rsv_alloc_info*, %struct.uwb_rsv_alloc_info** %2, align 8
  %14 = getelementptr inbounds %struct.uwb_rsv_alloc_info, %struct.uwb_rsv_alloc_info* %13, i32 0, i32 1
  %15 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %14, align 8
  store %struct.uwb_rsv_col_info* %15, %struct.uwb_rsv_col_info** %8, align 8
  %16 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %8, align 8
  %17 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %80, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @UWB_NUM_ZONES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %20
  %25 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %8, align 8
  %26 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %8, align 8
  %30 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %76, %24
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %38, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  %55 = load i8, i8* @UWB_RSV_MAS_SAFE, align 1
  store i8 %55, i8* %9, align 1
  br label %65

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4
  %62 = load i8, i8* @UWB_RSV_MAS_UNSAFE, align 1
  store i8 %62, i8* %9, align 1
  br label %64

63:                                               ; preds = %56
  br label %79

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %52
  %66 = load i8, i8* %9, align 1
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @UWB_MAS_PER_ZONE, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %67, i64 %73
  store i8 %66, i8* %74, align 1
  br label %75

75:                                               ; preds = %65, %37
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %33

79:                                               ; preds = %63, %33
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.uwb_rsv_col_info*, %struct.uwb_rsv_col_info** %8, align 8
  %82 = getelementptr inbounds %struct.uwb_rsv_col_info, %struct.uwb_rsv_col_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %3, align 4
  br label %20

89:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
