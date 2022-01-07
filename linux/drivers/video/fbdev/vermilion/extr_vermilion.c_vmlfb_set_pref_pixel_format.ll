; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/vermilion/extr_vermilion.c_vmlfb_set_pref_pixel_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/vermilion/extr_vermilion.c_vmlfb_set_pref_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*)* @vmlfb_set_pref_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmlfb_set_pref_pixel_format(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %2, align 8
  %3 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %4 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %56 [
    i32 16, label %6
    i32 32, label %31
  ]

6:                                                ; preds = %1
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 5, i32* %12, align 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 5, i32* %15, align 8
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 5, i32* %18, align 4
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 10, i32* %21, align 8
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 5, i32* %24, align 4
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 15, i32* %27, align 8
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %57

31:                                               ; preds = %1
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 8, i32* %37, align 8
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 8, i32* %40, align 8
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 8, i32* %43, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 16, i32* %46, align 8
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 8, i32* %49, align 4
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 24, i32* %52, align 8
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %57

56:                                               ; preds = %1
  br label %57

57:                                               ; preds = %56, %31, %6
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
