; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_2__, i32, %struct.i740fb_par* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i740fb_par = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"pan_display: xoffset: %i yoffset: %i base: %i\0A\00", align 1
@VGA_CRTC_START_LO = common dso_local global i64 0, align 8
@VGA_CRTC_START_HI = common dso_local global i64 0, align 8
@EXT_START_ADDR_ENABLE = common dso_local global i32 0, align 4
@VGA_CRT_IC = common dso_local global i32 0, align 4
@EXT_START_ADDR_HI = common dso_local global i64 0, align 8
@EXT_START_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @i740fb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i740fb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.i740fb_par*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load %struct.i740fb_par*, %struct.i740fb_par** %8, align 8
  store %struct.i740fb_par* %9, %struct.i740fb_par** %5, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %12, %16
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, -8
  %22 = add nsw i32 %17, %21
  %23 = ashr i32 %22, 2
  store i32 %23, i32* %6, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %33)
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %51 [
    i32 8, label %39
    i32 15, label %40
    i32 16, label %40
    i32 24, label %43
    i32 32, label %48
  ]

39:                                               ; preds = %2
  br label %51

40:                                               ; preds = %2, %2
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %6, align 4
  br label %51

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, -2
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 3
  store i32 %47, i32* %6, align 4
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %49, 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %2, %48, %43, %40, %39
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 255
  %54 = load %struct.i740fb_par*, %struct.i740fb_par** %5, align 8
  %55 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @VGA_CRTC_START_LO, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 65280
  %61 = ashr i32 %60, 8
  %62 = load %struct.i740fb_par*, %struct.i740fb_par** %5, align 8
  %63 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @VGA_CRTC_START_HI, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 1069547520
  %69 = ashr i32 %68, 22
  %70 = load %struct.i740fb_par*, %struct.i740fb_par** %5, align 8
  %71 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 4128768
  %74 = ashr i32 %73, 16
  %75 = load i32, i32* @EXT_START_ADDR_ENABLE, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.i740fb_par*, %struct.i740fb_par** %5, align 8
  %78 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.i740fb_par*, %struct.i740fb_par** %5, align 8
  %80 = load i32, i32* @VGA_CRT_IC, align 4
  %81 = load i64, i64* @VGA_CRTC_START_LO, align 8
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 255
  %84 = call i32 @i740outreg(%struct.i740fb_par* %79, i32 %80, i64 %81, i32 %83)
  %85 = load %struct.i740fb_par*, %struct.i740fb_par** %5, align 8
  %86 = load i32, i32* @VGA_CRT_IC, align 4
  %87 = load i64, i64* @VGA_CRTC_START_HI, align 8
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 65280
  %90 = ashr i32 %89, 8
  %91 = call i32 @i740outreg(%struct.i740fb_par* %85, i32 %86, i64 %87, i32 %90)
  %92 = load %struct.i740fb_par*, %struct.i740fb_par** %5, align 8
  %93 = load i32, i32* @VGA_CRT_IC, align 4
  %94 = load i64, i64* @EXT_START_ADDR_HI, align 8
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, 1069547520
  %97 = ashr i32 %96, 22
  %98 = call i32 @i740outreg(%struct.i740fb_par* %92, i32 %93, i64 %94, i32 %97)
  %99 = load %struct.i740fb_par*, %struct.i740fb_par** %5, align 8
  %100 = load i32, i32* @VGA_CRT_IC, align 4
  %101 = load i64, i64* @EXT_START_ADDR, align 8
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 4128768
  %104 = ashr i32 %103, 16
  %105 = load i32, i32* @EXT_START_ADDR_ENABLE, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @i740outreg(%struct.i740fb_par* %99, i32 %100, i64 %101, i32 %106)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @i740outreg(%struct.i740fb_par*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
