; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_setup_base_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_setup_base_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxafb_info = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fb_fix_screeninfo }
%struct.fb_fix_screeninfo = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i64 }

@DMA_BASE = common dso_local global i32 0, align 4
@DMA_MAX = common dso_local global i32 0, align 4
@PAL_NONE = common dso_local global i32 0, align 4
@PAL_BASE = common dso_local global i32 0, align 4
@PAL_MAX = common dso_local global i32 0, align 4
@LCCR0_SDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxafb_info*, %struct.fb_var_screeninfo*, i32)* @setup_base_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_base_frame(%struct.pxafb_info* %0, %struct.fb_var_screeninfo* %1, i32 %2) #0 {
  %4 = alloca %struct.pxafb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_fix_screeninfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.pxafb_info* %0, %struct.pxafb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %14 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.fb_fix_screeninfo* %15, %struct.fb_fix_screeninfo** %7, align 8
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @DMA_BASE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @DMA_MAX, align 4
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = add nsw i32 %19, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sge i32 %28, 16
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @PAL_NONE, align 4
  br label %42

32:                                               ; preds = %25
  %33 = load i32, i32* @PAL_BASE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @PAL_MAX, align 4
  br label %39

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = add nsw i32 %33, %40
  br label %42

42:                                               ; preds = %39, %30
  %43 = phi i32 [ %31, %30 ], [ %41, %39 ]
  store i32 %43, i32* %10, align 4
  %44 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %7, align 8
  %45 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %7, align 8
  %52 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 %54, %57
  %59 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %60 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %58, %61
  store i64 %62, i64* %12, align 8
  %63 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %64 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @LCCR0_SDS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %42
  %70 = load i32, i32* %8, align 4
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %8, align 4
  %72 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* @PAL_NONE, align 4
  %76 = load i64, i64* %12, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %76, %78
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @setup_frame_dma(%struct.pxafb_info* %72, i32 %74, i32 %75, i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %69, %42
  %83 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @setup_frame_dma(%struct.pxafb_info* %83, i32 %84, i32 %85, i64 %86, i32 %87)
  ret void
}

declare dso_local i32 @setup_frame_dma(%struct.pxafb_info*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
