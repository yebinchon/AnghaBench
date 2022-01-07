; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750_hw.c_hw_sm750_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynxfb_crtc = type { i64, i64 }
%struct.fb_var_screeninfo = type { i32, i64, i64, i32, i64, i64, i32 }
%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@sm750_primary = common dso_local global i64 0, align 8
@PANEL_FB_ADDRESS = common dso_local global i32 0, align 4
@PANEL_FB_ADDRESS_ADDRESS_MASK = common dso_local global i32 0, align 4
@CRT_FB_ADDRESS = common dso_local global i32 0, align 4
@CRT_FB_ADDRESS_ADDRESS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_sm750_pan_display(%struct.lynxfb_crtc* %0, %struct.fb_var_screeninfo* %1, %struct.fb_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lynxfb_crtc*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.lynxfb_crtc* %0, %struct.lynxfb_crtc** %5, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %6, align 8
  store %struct.fb_info* %2, %struct.fb_info** %7, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %34, label %21

21:                                               ; preds = %3
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %21, %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %86

37:                                               ; preds = %21
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %40, %44
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  %53 = ashr i32 %52, 3
  %54 = add nsw i32 %45, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %5, align 8
  %56 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %5, align 8
  %63 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @sm750_primary, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %37
  %68 = load i32, i32* @PANEL_FB_ADDRESS, align 4
  %69 = load i32, i32* @PANEL_FB_ADDRESS, align 4
  %70 = call i32 @peek32(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PANEL_FB_ADDRESS_ADDRESS_MASK, align 4
  %73 = and i32 %71, %72
  %74 = or i32 %70, %73
  %75 = call i32 @poke32(i32 %68, i32 %74)
  br label %85

76:                                               ; preds = %37
  %77 = load i32, i32* @CRT_FB_ADDRESS, align 4
  %78 = load i32, i32* @CRT_FB_ADDRESS, align 4
  %79 = call i32 @peek32(i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @CRT_FB_ADDRESS_ADDRESS_MASK, align 4
  %82 = and i32 %80, %81
  %83 = or i32 %79, %82
  %84 = call i32 @poke32(i32 %77, i32 %83)
  br label %85

85:                                               ; preds = %76, %67
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %34
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @poke32(i32, i32) #1

declare dso_local i32 @peek32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
