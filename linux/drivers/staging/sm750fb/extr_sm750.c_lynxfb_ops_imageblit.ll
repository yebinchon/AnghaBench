; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_imageblit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.lynxfb_par* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.lynxfb_par = type { %struct.TYPE_5__, %struct.sm750_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.sm750_dev = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* }
%struct.fb_image = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@HW_ROP2_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @lynxfb_ops_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lynxfb_ops_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lynxfb_par*, align 8
  %11 = alloca %struct.sm750_dev*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 3
  %14 = load %struct.lynxfb_par*, %struct.lynxfb_par** %13, align 8
  store %struct.lynxfb_par* %14, %struct.lynxfb_par** %10, align 8
  %15 = load %struct.lynxfb_par*, %struct.lynxfb_par** %10, align 8
  %16 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %15, i32 0, i32 1
  %17 = load %struct.sm750_dev*, %struct.sm750_dev** %16, align 8
  store %struct.sm750_dev* %17, %struct.sm750_dev** %11, align 8
  %18 = load %struct.lynxfb_par*, %struct.lynxfb_par** %10, align 8
  %19 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 3
  store i32 %30, i32* %7, align 4
  %31 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %32 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %38 = call i32 @cfb_imageblit(%struct.fb_info* %36, %struct.fb_image* %37)
  br label %120

39:                                               ; preds = %2
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %46, %39
  %54 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %59 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %68 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  br label %81

72:                                               ; preds = %46
  %73 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %74 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  %77 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %78 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %72, %53
  %82 = load %struct.sm750_dev*, %struct.sm750_dev** %11, align 8
  %83 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %82, i32 0, i32 0
  %84 = call i32 @spin_lock(i32* %83)
  %85 = load %struct.sm750_dev*, %struct.sm750_dev** %11, align 8
  %86 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %87, align 8
  %89 = load %struct.sm750_dev*, %struct.sm750_dev** %11, align 8
  %90 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %89, i32 0, i32 1
  %91 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %92 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %95 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = ashr i32 %96, 3
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %102 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %105 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %108 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %111 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @HW_ROP2_COPY, align 4
  %116 = call i32 %88(%struct.TYPE_8__* %90, i32 %93, i32 %97, i32 0, i32 %98, i32 %99, i32 %100, i32 %103, i32 %106, i32 %109, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load %struct.sm750_dev*, %struct.sm750_dev** %11, align 8
  %118 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock(i32* %118)
  br label %120

120:                                              ; preds = %81, %35
  ret void
}

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
