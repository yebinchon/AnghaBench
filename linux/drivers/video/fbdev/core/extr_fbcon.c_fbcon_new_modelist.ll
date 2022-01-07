; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_new_modelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_new_modelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.vc_data* }
%struct.vc_data = type { i32 }
%struct.fb_var_screeninfo = type { i32 }
%struct.fb_videomode = type { i32 }

@first_fb_vc = common dso_local global i32 0, align 4
@last_fb_vc = common dso_local global i32 0, align 4
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.TYPE_5__* null, align 8
@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbcon_new_modelist(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.fb_var_screeninfo, align 4
  %6 = alloca %struct.fb_videomode*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load i32, i32* @first_fb_vc, align 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %61, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @last_fb_vc, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %14 = load i64*, i64** @con2fb_map, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %13, i64 %18
  %20 = load %struct.fb_info*, %struct.fb_info** %19, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %22 = icmp ne %struct.fb_info* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %61

24:                                               ; preds = %12
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fb_display, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %61

33:                                               ; preds = %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.vc_data*, %struct.vc_data** %38, align 8
  store %struct.vc_data* %39, %struct.vc_data** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fb_display, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = call i32 @display_to_var(%struct.fb_var_screeninfo* %5, %struct.TYPE_5__* %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fb_display, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = call %struct.fb_videomode* @fb_find_nearest_mode(i32 %50, i32* %52)
  store %struct.fb_videomode* %53, %struct.fb_videomode** %6, align 8
  %54 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %55 = call i32 @fb_videomode_to_var(%struct.fb_var_screeninfo* %5, %struct.fb_videomode* %54)
  %56 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %57 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @fbcon_set_disp(%struct.fb_info* %56, %struct.fb_var_screeninfo* %5, i32 %59)
  br label %61

61:                                               ; preds = %33, %32, %23
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %8

64:                                               ; preds = %8
  ret void
}

declare dso_local i32 @display_to_var(%struct.fb_var_screeninfo*, %struct.TYPE_5__*) #1

declare dso_local %struct.fb_videomode* @fb_find_nearest_mode(i32, i32*) #1

declare dso_local i32 @fb_videomode_to_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #1

declare dso_local i32 @fbcon_set_disp(%struct.fb_info*, %struct.fb_var_screeninfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
