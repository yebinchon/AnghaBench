; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh7760fb.c_sh7760fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh7760fb.c_sh7760fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i64 }
%struct.fb_info = type { i32, %struct.sh7760fb_par*, %struct.fb_fix_screeninfo }
%struct.sh7760fb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fb_fix_screeninfo = type { i32 }

@FB_VISUAL_MONO10 = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @sh7760fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7760fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fb_fix_screeninfo*, align 8
  %7 = alloca %struct.sh7760fb_par*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  store %struct.fb_fix_screeninfo* %11, %struct.fb_fix_screeninfo** %6, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 1
  %14 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %13, align 8
  store %struct.sh7760fb_par* %14, %struct.sh7760fb_par** %7, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %7, align 8
  %19 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sh7760fb_get_color_info(i32 %17, i32 %22, i32* %9, i32* null)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %60

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @FB_VISUAL_MONO10, align 4
  %43 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %44 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %59

45:                                               ; preds = %36, %28
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 15
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %52 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %53 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %56 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %57 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %41
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @sh7760fb_get_color_info(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
