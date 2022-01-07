; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ud.c_ud_clear_margins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ud.c_ud_clear_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32)* @ud_clear_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ud_clear_margins(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_fillrect, align 8
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store %struct.fb_info* %1, %struct.fb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul i32 %28, %29
  %31 = sub i32 %25, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul i32 %38, %39
  %41 = sub i32 %35, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %13, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* @ROP_COPY, align 4
  %45 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %13, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %13, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %13, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %13, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %13, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %68, align 8
  %70 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %71 = call i32 %69(%struct.fb_info* %70, %struct.fb_fillrect* %13)
  br label %72

72:                                               ; preds = %51, %48, %4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %13, i32 0, i32 4
  store i64 %79, i64* %80, align 8
  %81 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %13, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %12, align 4
  %87 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %13, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %13, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %96, align 8
  %98 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %99 = call i32 %97(%struct.fb_info* %98, %struct.fb_fillrect* %13)
  br label %100

100:                                              ; preds = %75, %72
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
