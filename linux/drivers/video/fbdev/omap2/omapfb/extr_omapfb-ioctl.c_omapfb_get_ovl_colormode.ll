; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_get_ovl_colormode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_get_ovl_colormode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { i32, %struct.omap_overlay** }
%struct.omap_overlay = type { i32 }
%struct.omapfb_ovl_colormode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb2_device*, %struct.omapfb_ovl_colormode*)* @omapfb_get_ovl_colormode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_get_ovl_colormode(%struct.omapfb2_device* %0, %struct.omapfb_ovl_colormode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omapfb2_device*, align 8
  %5 = alloca %struct.omapfb_ovl_colormode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_overlay*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_var_screeninfo, align 4
  %11 = alloca i32, align 4
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %4, align 8
  store %struct.omapfb_ovl_colormode* %1, %struct.omapfb_ovl_colormode** %5, align 8
  %12 = load %struct.omapfb_ovl_colormode*, %struct.omapfb_ovl_colormode** %5, align 8
  %13 = getelementptr inbounds %struct.omapfb_ovl_colormode, %struct.omapfb_ovl_colormode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.omapfb_ovl_colormode*, %struct.omapfb_ovl_colormode** %5, align 8
  %16 = getelementptr inbounds %struct.omapfb_ovl_colormode, %struct.omapfb_ovl_colormode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %20 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %99

26:                                               ; preds = %2
  %27 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %28 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %27, i32 0, i32 1
  %29 = load %struct.omap_overlay**, %struct.omap_overlay*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %29, i64 %31
  %33 = load %struct.omap_overlay*, %struct.omap_overlay** %32, align 8
  store %struct.omap_overlay* %33, %struct.omap_overlay** %8, align 8
  %34 = load %struct.omap_overlay*, %struct.omap_overlay** %8, align 8
  %35 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.omapfb_ovl_colormode*, %struct.omapfb_ovl_colormode** %5, align 8
  %38 = getelementptr inbounds %struct.omapfb_ovl_colormode, %struct.omapfb_ovl_colormode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %64, %26
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 32
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %64

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 1, %52
  %54 = call i64 @dss_mode_to_fb_mode(i32 %53, %struct.fb_var_screeninfo* %10)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %64

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %67

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %56, %50
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %40

67:                                               ; preds = %62, %40
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp eq i64 %69, 32
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %99

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.omapfb_ovl_colormode*, %struct.omapfb_ovl_colormode** %5, align 8
  %78 = getelementptr inbounds %struct.omapfb_ovl_colormode, %struct.omapfb_ovl_colormode* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.omapfb_ovl_colormode*, %struct.omapfb_ovl_colormode** %5, align 8
  %82 = getelementptr inbounds %struct.omapfb_ovl_colormode, %struct.omapfb_ovl_colormode* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.omapfb_ovl_colormode*, %struct.omapfb_ovl_colormode** %5, align 8
  %86 = getelementptr inbounds %struct.omapfb_ovl_colormode, %struct.omapfb_ovl_colormode* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.omapfb_ovl_colormode*, %struct.omapfb_ovl_colormode** %5, align 8
  %90 = getelementptr inbounds %struct.omapfb_ovl_colormode, %struct.omapfb_ovl_colormode* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.omapfb_ovl_colormode*, %struct.omapfb_ovl_colormode** %5, align 8
  %94 = getelementptr inbounds %struct.omapfb_ovl_colormode, %struct.omapfb_ovl_colormode* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.omapfb_ovl_colormode*, %struct.omapfb_ovl_colormode** %5, align 8
  %98 = getelementptr inbounds %struct.omapfb_ovl_colormode, %struct.omapfb_ovl_colormode* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %74, %71, %23
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @dss_mode_to_fb_mode(i32, %struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
