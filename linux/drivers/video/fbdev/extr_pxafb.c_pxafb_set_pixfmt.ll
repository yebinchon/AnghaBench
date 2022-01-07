; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_set_pixfmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_set_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, i32)* @pxafb_set_pixfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxafb_set_pixfmt(%struct.fb_var_screeninfo* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %7, %2
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %41

16:                                               ; preds = %11
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 8, i32* %22, align 8
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 8, i32* %28, align 8
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 8, i32* %34, align 8
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 8, i32* %40, align 8
  br label %41

41:                                               ; preds = %16, %11
  %42 = load i32, i32* %4, align 4
  switch i32 %42, label %80 [
    i32 16, label %43
    i32 18, label %57
    i32 19, label %60
    i32 24, label %63
    i32 25, label %77
  ]

43:                                               ; preds = %41
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %51 = call i32 @SET_PIXFMT(%struct.fb_var_screeninfo* %50, i32 5, i32 5, i32 5, i32 1)
  br label %55

52:                                               ; preds = %43
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %54 = call i32 @SET_PIXFMT(%struct.fb_var_screeninfo* %53, i32 5, i32 6, i32 5, i32 0)
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ %51, %49 ], [ %54, %52 ]
  br label %80

57:                                               ; preds = %41
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %59 = call i32 @SET_PIXFMT(%struct.fb_var_screeninfo* %58, i32 6, i32 6, i32 6, i32 0)
  br label %80

60:                                               ; preds = %41
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %62 = call i32 @SET_PIXFMT(%struct.fb_var_screeninfo* %61, i32 6, i32 6, i32 6, i32 1)
  br label %80

63:                                               ; preds = %41
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %71 = call i32 @SET_PIXFMT(%struct.fb_var_screeninfo* %70, i32 8, i32 8, i32 7, i32 1)
  br label %75

72:                                               ; preds = %63
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %74 = call i32 @SET_PIXFMT(%struct.fb_var_screeninfo* %73, i32 8, i32 8, i32 8, i32 0)
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i32 [ %71, %69 ], [ %74, %72 ]
  br label %80

77:                                               ; preds = %41
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %79 = call i32 @SET_PIXFMT(%struct.fb_var_screeninfo* %78, i32 8, i32 8, i32 8, i32 1)
  br label %80

80:                                               ; preds = %41, %77, %75, %60, %57, %55
  ret void
}

declare dso_local i32 @SET_PIXFMT(%struct.fb_var_screeninfo*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
