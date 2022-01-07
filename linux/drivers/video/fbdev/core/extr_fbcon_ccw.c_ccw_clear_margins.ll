; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ccw.c_ccw_clear_margins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ccw.c_ccw_clear_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32)* @ccw_clear_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_clear_margins(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fb_fillrect, align 8
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store %struct.fb_info* %1, %struct.fb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul i32 %29, %30
  %32 = sub i32 %26, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = mul i32 %39, %40
  %42 = sub i32 %36, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = mul i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %7, align 4
  %49 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @ROP_COPY, align 4
  %51 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 5
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 3
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %74, align 8
  %76 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %77 = call i32 %75(%struct.fb_info* %76, %struct.fb_fillrect* %14)
  br label %78

78:                                               ; preds = %57, %54, %4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %78
  %82 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 4
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %12, align 4
  %97 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %101, align 8
  %103 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %104 = call i32 %102(%struct.fb_info* %103, %struct.fb_fillrect* %14)
  br label %105

105:                                              ; preds = %81, %78
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
