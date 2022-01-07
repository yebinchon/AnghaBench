; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_odm_PTDecision_8188E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal8188e_rate_adaptive.c_odm_PTDecision_8188E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_ra_info = type { i32, i32*, i32, i32, i32 }

@PT_PENALTY = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_ra_info*)* @odm_PTDecision_8188E to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odm_PTDecision_8188E(%struct.odm_ra_info* %0) #0 {
  %2 = alloca %struct.odm_ra_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.odm_ra_info* %0, %struct.odm_ra_info** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %9 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32*, i32** @PT_PENALTY, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 5
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %39, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 4
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %20 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @PT_PENALTY, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %25, %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  br label %42

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %15

42:                                               ; preds = %37, %15
  %43 = load i32, i32* %3, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %3, align 4
  %45 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %46 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %7, align 4
  br label %58

57:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %60 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 1
  %63 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %64 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 2
  %67 = add nsw i32 %62, %66
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 %68, 16
  %70 = add nsw i32 %67, %69
  %71 = add nsw i32 %70, 2
  %72 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %73 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %75 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 192
  br i1 %77, label %78, label %81

78:                                               ; preds = %58
  %79 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %80 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %79, i32 0, i32 3
  store i32 192, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %58
  %82 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %83 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 6
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %86, 2
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %81
  %94 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %95 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 3
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %93
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.odm_ra_info*, %struct.odm_ra_info** %2, align 8
  %102 = getelementptr inbounds %struct.odm_ra_info, %struct.odm_ra_info* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
