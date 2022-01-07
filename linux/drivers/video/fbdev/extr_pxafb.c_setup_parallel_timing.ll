; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_setup_parallel_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_setup_parallel_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxafb_info = type { i32, i32, i32, i64, i64 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LCCR0_SDS = common dso_local global i32 0, align 4
@LCCR0_Dual = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@LCCR3_HorSnchH = common dso_local global i32 0, align 4
@LCCR3_HorSnchL = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@LCCR3_VrtSnchH = common dso_local global i32 0, align 4
@LCCR3_VrtSnchL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxafb_info*, %struct.fb_var_screeninfo*)* @setup_parallel_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_parallel_timing(%struct.pxafb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.pxafb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pxafb_info* %0, %struct.pxafb_info** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %7 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @get_pcd(%struct.pxafb_info* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @LCCR1_DisWdth(i32 %14)
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @LCCR1_HorSnchWdth(i32 %18)
  %20 = add nsw i64 %15, %19
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @LCCR1_BegLnDel(i32 %23)
  %25 = add nsw i64 %20, %24
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @LCCR1_EndLnDel(i32 %28)
  %30 = add nsw i64 %25, %29
  %31 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %32 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %37 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LCCR0_SDS, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @LCCR0_Dual, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = udiv i32 %44, 2
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %2
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @LCCR2_DisHght(i32 %47)
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @LCCR2_VrtSnchWdth(i32 %51)
  %53 = add nsw i64 %48, %52
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @LCCR2_BegFrmDel(i32 %56)
  %58 = add nsw i64 %53, %57
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @LCCR2_EndFrmDel(i32 %61)
  %63 = add nsw i64 %58, %62
  %64 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %65 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %67 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %46
  %76 = load i32, i32* @LCCR3_HorSnchH, align 4
  br label %79

77:                                               ; preds = %46
  %78 = load i32, i32* @LCCR3_HorSnchL, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = or i32 %68, %80
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* @LCCR3_VrtSnchH, align 4
  br label %92

90:                                               ; preds = %79
  %91 = load i32, i32* @LCCR3_VrtSnchL, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = or i32 %81, %93
  %95 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %96 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @LCCR3_PixClkDiv(i32 %100)
  %102 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %103 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @set_hsync_time(%struct.pxafb_info* %106, i32 %107)
  br label %109

109:                                              ; preds = %99, %92
  ret void
}

declare dso_local i32 @get_pcd(%struct.pxafb_info*, i32) #1

declare dso_local i64 @LCCR1_DisWdth(i32) #1

declare dso_local i64 @LCCR1_HorSnchWdth(i32) #1

declare dso_local i64 @LCCR1_BegLnDel(i32) #1

declare dso_local i64 @LCCR1_EndLnDel(i32) #1

declare dso_local i64 @LCCR2_DisHght(i32) #1

declare dso_local i64 @LCCR2_VrtSnchWdth(i32) #1

declare dso_local i64 @LCCR2_BegFrmDel(i32) #1

declare dso_local i64 @LCCR2_EndFrmDel(i32) #1

declare dso_local i32 @LCCR3_PixClkDiv(i32) #1

declare dso_local i32 @set_hsync_time(%struct.pxafb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
