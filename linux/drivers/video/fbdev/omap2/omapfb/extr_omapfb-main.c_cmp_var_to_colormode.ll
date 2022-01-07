; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_cmp_var_to_colormode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_cmp_var_to_colormode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.omapfb_colormode = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.omapfb_colormode*)* @cmp_var_to_colormode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_var_to_colormode(%struct.fb_var_screeninfo* %0, %struct.omapfb_colormode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.omapfb_colormode*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.omapfb_colormode* %1, %struct.omapfb_colormode** %5, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %10, %2
  store i32 0, i32* %3, align 4
  br label %68

29:                                               ; preds = %22
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %5, align 8
  %34 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %29
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 4
  %40 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %5, align 8
  %41 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %40, i32 0, i32 4
  %42 = call i64 @cmp_component(%struct.TYPE_2__* %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %37
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 3
  %47 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %5, align 8
  %48 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %47, i32 0, i32 3
  %49 = call i64 @cmp_component(%struct.TYPE_2__* %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 2
  %54 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %5, align 8
  %55 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %54, i32 0, i32 2
  %56 = call i64 @cmp_component(%struct.TYPE_2__* %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 1
  %61 = load %struct.omapfb_colormode*, %struct.omapfb_colormode** %5, align 8
  %62 = getelementptr inbounds %struct.omapfb_colormode, %struct.omapfb_colormode* %61, i32 0, i32 1
  %63 = call i64 @cmp_component(%struct.TYPE_2__* %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %58, %51, %44, %37, %29
  %66 = phi i1 [ false, %51 ], [ false, %44 ], [ false, %37 ], [ false, %29 ], [ %64, %58 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @cmp_component(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
