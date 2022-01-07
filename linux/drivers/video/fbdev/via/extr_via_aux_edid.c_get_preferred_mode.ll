; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_aux_edid.c_get_preferred_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_aux_edid.c_get_preferred_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }
%struct.via_aux_drv = type { %struct.fb_monspecs* }
%struct.fb_monspecs = type { i32, i32, %struct.fb_videomode* }

@FB_MISC_1ST_DETAIL = common dso_local global i32 0, align 4
@FB_MODE_IS_FIRST = common dso_local global i32 0, align 4
@FB_MODE_IS_DETAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_videomode* (%struct.via_aux_drv*)* @get_preferred_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_videomode* @get_preferred_mode(%struct.via_aux_drv* %0) #0 {
  %2 = alloca %struct.fb_videomode*, align 8
  %3 = alloca %struct.via_aux_drv*, align 8
  %4 = alloca %struct.fb_monspecs*, align 8
  %5 = alloca i32, align 4
  store %struct.via_aux_drv* %0, %struct.via_aux_drv** %3, align 8
  %6 = load %struct.via_aux_drv*, %struct.via_aux_drv** %3, align 8
  %7 = getelementptr inbounds %struct.via_aux_drv, %struct.via_aux_drv* %6, i32 0, i32 0
  %8 = load %struct.fb_monspecs*, %struct.fb_monspecs** %7, align 8
  store %struct.fb_monspecs* %8, %struct.fb_monspecs** %4, align 8
  %9 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %10 = icmp ne %struct.fb_monspecs* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %13 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %12, i32 0, i32 2
  %14 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  %15 = icmp ne %struct.fb_videomode* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %18 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FB_MISC_1ST_DETAIL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16, %11, %1
  store %struct.fb_videomode* null, %struct.fb_videomode** %2, align 8
  br label %67

24:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %28 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %33 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %32, i32 0, i32 2
  %34 = load %struct.fb_videomode*, %struct.fb_videomode** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %34, i64 %36
  %38 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FB_MODE_IS_FIRST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %31
  %44 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %45 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %44, i32 0, i32 2
  %46 = load %struct.fb_videomode*, %struct.fb_videomode** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %46, i64 %48
  %50 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FB_MODE_IS_DETAILED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %43
  %56 = load %struct.fb_monspecs*, %struct.fb_monspecs** %4, align 8
  %57 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %56, i32 0, i32 2
  %58 = load %struct.fb_videomode*, %struct.fb_videomode** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %58, i64 %60
  store %struct.fb_videomode* %61, %struct.fb_videomode** %2, align 8
  br label %67

62:                                               ; preds = %43, %31
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %25

66:                                               ; preds = %25
  store %struct.fb_videomode* null, %struct.fb_videomode** %2, align 8
  br label %67

67:                                               ; preds = %66, %55, %23
  %68 = load %struct.fb_videomode*, %struct.fb_videomode** %2, align 8
  ret %struct.fb_videomode* %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
