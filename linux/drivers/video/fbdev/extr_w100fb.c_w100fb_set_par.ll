; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_8__, %struct.TYPE_5__, %struct.w100fb_par* }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.w100fb_par = type { i64, i64, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@BITS_PER_PIXEL = common dso_local global i32 0, align 4
@MEM_INT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @w100fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w100fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.w100fb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 3
  %6 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  store %struct.w100fb_par* %6, %struct.w100fb_par** %3, align 8
  %7 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %8 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %17 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %112

24:                                               ; preds = %15, %1
  %25 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %30 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %36 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %38 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %39 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %38, i32 0, i32 0
  %40 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %41 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %40, i32 0, i32 1
  %42 = call i32 @w100fb_get_mode(%struct.w100fb_par* %37, i64* %39, i64* %41, i32 0)
  %43 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %44 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 8
  %49 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %56 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @BITS_PER_PIXEL, align 4
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %57, %59
  %61 = sdiv i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %70 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %73 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = mul nsw i64 %71, %74
  %76 = load i32, i32* @BITS_PER_PIXEL, align 4
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %75, %77
  %79 = sdiv i64 %78, 8
  %80 = load i32, i32* @MEM_INT_SIZE, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = icmp sgt i64 %79, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %24
  %85 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %86 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %88 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  br label %106

98:                                               ; preds = %24
  %99 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %100 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %99, i32 0, i32 2
  store i32 0, i32* %100, align 8
  %101 = load i32, i32* @MEM_INT_SIZE, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  br label %106

106:                                              ; preds = %98, %84
  %107 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load %struct.w100fb_par*, %struct.w100fb_par** %3, align 8
  %111 = call i32 @w100fb_activate_var(%struct.w100fb_par* %110)
  br label %112

112:                                              ; preds = %106, %15
  ret i32 0
}

declare dso_local i32 @w100fb_get_mode(%struct.w100fb_par*, i64*, i64*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @w100fb_activate_var(%struct.w100fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
