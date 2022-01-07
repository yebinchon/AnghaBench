; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_check_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_check_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i64 }
%struct.fb_info = type { %struct.TYPE_4__, i32, %struct.uvesafb_par* }
%struct.TYPE_4__ = type { i64 }
%struct.uvesafb_par = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fb_videomode = type { i64, i64, i32 }

@FB_VSYNCTIMINGS = common dso_local global i32 0, align 4
@FB_IGNOREMON = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_MAXTIMINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.fb_info*)* @uvesafb_check_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvesafb_check_limits(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_videomode*, align 8
  %6 = alloca %struct.uvesafb_par*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load %struct.uvesafb_par*, %struct.uvesafb_par** %8, align 8
  store %struct.uvesafb_par* %9, %struct.uvesafb_par** %6, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.uvesafb_par*, %struct.uvesafb_par** %6, align 8
  %17 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 768
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @FB_VSYNCTIMINGS, align 4
  %23 = load i32, i32* @FB_IGNOREMON, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %27 = call i32 @fb_get_mode(i32 %24, i32 60, %struct.fb_var_screeninfo* %25, %struct.fb_info* %26)
  br label %87

28:                                               ; preds = %15
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %31 = call i32 @fb_validate_mode(%struct.fb_var_screeninfo* %29, %struct.fb_info* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %87

34:                                               ; preds = %28
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 1
  %38 = call %struct.fb_videomode* @fb_find_best_mode(%struct.fb_var_screeninfo* %35, i32* %37)
  store %struct.fb_videomode* %38, %struct.fb_videomode** %5, align 8
  %39 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %40 = icmp ne %struct.fb_videomode* %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %34
  %42 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %43 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %41
  %50 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %51 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %49
  %58 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %59 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %62 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %68 = load %struct.fb_videomode*, %struct.fb_videomode** %5, align 8
  %69 = call i32 @fb_videomode_to_var(%struct.fb_var_screeninfo* %67, %struct.fb_videomode* %68)
  br label %87

70:                                               ; preds = %57, %49, %41
  br label %71

71:                                               ; preds = %70, %34
  %72 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32, i32* @FB_MAXTIMINGS, align 4
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %80 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %81 = call i32 @fb_get_mode(i32 %78, i32 0, %struct.fb_var_screeninfo* %79, %struct.fb_info* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %87

84:                                               ; preds = %77, %71
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %83, %66, %33, %21, %14
  ret void
}

declare dso_local i32 @fb_get_mode(i32, i32, %struct.fb_var_screeninfo*, %struct.fb_info*) #1

declare dso_local i32 @fb_validate_mode(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

declare dso_local %struct.fb_videomode* @fb_find_best_mode(%struct.fb_var_screeninfo*, i32*) #1

declare dso_local i32 @fb_videomode_to_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
