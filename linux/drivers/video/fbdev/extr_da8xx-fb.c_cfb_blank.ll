; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_cfb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_da8xx-fb.c_cfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.da8xx_fb_par* }
%struct.da8xx_fb_par = type { i32, i32 }

@DA8XX_FRAME_WAIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @cfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.da8xx_fb_par*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %9, align 8
  store %struct.da8xx_fb_par* %10, %struct.da8xx_fb_par** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %6, align 8
  %12 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %6, align 8
  %20 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %57 [
    i32 129, label %22
    i32 131, label %39
    i32 128, label %39
    i32 132, label %39
    i32 130, label %39
  ]

22:                                               ; preds = %17
  %23 = call i32 (...) @lcd_enable_raster()
  %24 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %6, align 8
  %25 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %6, align 8
  %30 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_enable(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %62

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %22
  br label %60

39:                                               ; preds = %17, %17, %17, %17
  %40 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %6, align 8
  %41 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %6, align 8
  %46 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @regulator_disable(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %62

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %39
  %55 = load i32, i32* @DA8XX_FRAME_WAIT, align 4
  %56 = call i32 @lcd_disable_raster(i32 %55)
  br label %60

57:                                               ; preds = %17
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %54, %38
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %51, %35, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @lcd_enable_raster(...) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @lcd_disable_raster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
