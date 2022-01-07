; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb862xxfb_init_accel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfb_accel.c_mb862xxfb_init_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.mb862xxfb_par* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mb862xxfb_par = type { i32 }

@cfb_fillrect = common dso_local global i32 0, align 4
@cfb_copyarea = common dso_local global i32 0, align 4
@cfb_imageblit = common dso_local global i32 0, align 4
@disp = common dso_local global i32 0, align 4
@GC_L0EM = common dso_local global i32 0, align 4
@mb86290fb_fillrect = common dso_local global i32 0, align 4
@mb86290fb_copyarea = common dso_local global i32 0, align 4
@mb86290fb_imageblit = common dso_local global i32 0, align 4
@draw = common dso_local global i32 0, align 4
@GDC_REG_DRAW_BASE = common dso_local global i32 0, align 4
@GDC_REG_MODE_MISC = common dso_local global i32 0, align 4
@GDC_REG_X_RESOLUTION = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_COPYAREA = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_FILLRECT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_IMAGEBLIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mb862xxfb_init_accel(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mb862xxfb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 4
  %8 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %7, align 8
  store %struct.mb862xxfb_par* %8, %struct.mb862xxfb_par** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i32, i32* @cfb_fillrect, align 4
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @cfb_copyarea, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @cfb_imageblit, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %49

30:                                               ; preds = %2
  %31 = load i32, i32* @disp, align 4
  %32 = load i32, i32* @GC_L0EM, align 4
  %33 = call i32 @outreg(i32 %31, i32 %32, i32 3)
  %34 = load i32, i32* @mb86290fb_fillrect, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* @mb86290fb_copyarea, align 4
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* @mb86290fb_imageblit, align 4
  %45 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %30, %14
  %50 = load i32, i32* @draw, align 4
  %51 = load i32, i32* @GDC_REG_DRAW_BASE, align 4
  %52 = call i32 @outreg(i32 %50, i32 %51, i32 0)
  %53 = load i32, i32* @draw, align 4
  %54 = load i32, i32* @GDC_REG_MODE_MISC, align 4
  %55 = call i32 @outreg(i32 %53, i32 %54, i32 32768)
  %56 = load i32, i32* @draw, align 4
  %57 = load i32, i32* @GDC_REG_X_RESOLUTION, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @outreg(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %61 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @FBINFO_HWACCEL_IMAGEBLIT, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 255, i32* %71, align 4
  ret void
}

declare dso_local i32 @outreg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
