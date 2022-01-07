; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_calc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_calc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_info = type { i64 }
%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_fix_screeninfo = type { i32 }

@OMAP_DSS_ROT_VRFB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"offset %d, %d = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"paddr %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omapfb_info*, %struct.fb_var_screeninfo*, %struct.fb_fix_screeninfo*, i32, i32*)* @omapfb_calc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapfb_calc_addr(%struct.omapfb_info* %0, %struct.fb_var_screeninfo* %1, %struct.fb_fix_screeninfo* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.omapfb_info*, align 8
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  %8 = alloca %struct.fb_fix_screeninfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.omapfb_info* %0, %struct.omapfb_info** %6, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %7, align 8
  store %struct.fb_fix_screeninfo* %2, %struct.fb_fix_screeninfo** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %14 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OMAP_DSS_ROT_VRFB, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @omapfb_get_region_rot_paddr(%struct.omapfb_info* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  br label %25

22:                                               ; preds = %5
  %23 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %24 = call i32 @omapfb_get_region_paddr(%struct.omapfb_info* %23)
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %27 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OMAP_DSS_ROT_VRFB, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %33 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @calc_rotation_offset_vrfb(%struct.fb_var_screeninfo* %32, %struct.fb_fix_screeninfo* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  br label %41

36:                                               ; preds = %25
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %38 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @calc_rotation_offset_dma(%struct.fb_var_screeninfo* %37, %struct.fb_fix_screeninfo* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %41
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  ret void
}

declare dso_local i32 @omapfb_get_region_rot_paddr(%struct.omapfb_info*, i32) #1

declare dso_local i32 @omapfb_get_region_paddr(%struct.omapfb_info*) #1

declare dso_local i32 @calc_rotation_offset_vrfb(%struct.fb_var_screeninfo*, %struct.fb_fix_screeninfo*, i32) #1

declare dso_local i32 @calc_rotation_offset_dma(%struct.fb_var_screeninfo*, %struct.fb_fix_screeninfo*, i32) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
