; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpfb_set_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpfb_set_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.mmpfb_info* }
%struct.fb_var_screeninfo = type { i32 }
%struct.mmpfb_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mmp_win = type { i32*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @mmpfb_set_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmpfb_set_win(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.mmpfb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.mmp_win, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.mmpfb_info*, %struct.mmpfb_info** %8, align 8
  store %struct.mmpfb_info* %9, %struct.mmpfb_info** %3, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  store %struct.fb_var_screeninfo* %11, %struct.fb_var_screeninfo** %4, align 8
  %12 = call i32 @memset(%struct.mmp_win* %5, i32 0, i32 32)
  %13 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %14 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %5, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %5, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %20 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %5, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %26 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pixfmt_to_stride(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  %37 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %5, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %1
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 1
  br label %48

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i32 [ %46, %42 ], [ 0, %47 ]
  %50 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %5, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.mmp_win, %struct.mmp_win* %5, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %49, i32* %55, align 4
  %56 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %57 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mmp_overlay_set_win(i32 %58, %struct.mmp_win* %5)
  ret void
}

declare dso_local i32 @memset(%struct.mmp_win*, i32, i32) #1

declare dso_local i32 @pixfmt_to_stride(i32) #1

declare dso_local i32 @mmp_overlay_set_win(i32, %struct.mmp_win*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
