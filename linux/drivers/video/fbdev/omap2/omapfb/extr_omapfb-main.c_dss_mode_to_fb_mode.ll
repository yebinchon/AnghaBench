; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_dss_mode_to_fb_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_dss_mode_to_fb_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_colormode = type { i32 }
%struct.fb_var_screeninfo = type { i32 }

@omapfb_colormodes = common dso_local global %struct.omapfb_colormode* null, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_mode_to_fb_mode(i32 %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omapfb_colormode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** @omapfb_colormodes, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.omapfb_colormode* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** @omapfb_colormodes, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %14, i64 %16
  store %struct.omapfb_colormode* %17, %struct.omapfb_colormode** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %7, align 8
  %20 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %25 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %7, align 8
  %26 = call i32 @assign_colormode_to_var(%struct.fb_var_screeninfo* %24, %struct.omapfb_colormode* %25)
  store i32 0, i32* %3, align 4
  br label %34

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ARRAY_SIZE(%struct.omapfb_colormode*) #1

declare dso_local i32 @assign_colormode_to_var(%struct.fb_var_screeninfo*, %struct.omapfb_colormode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
