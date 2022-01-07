; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_update_default_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_riva_update_default_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { %struct.fb_monspecs }
%struct.fb_monspecs = type { i32, i32, %struct.fb_videomode* }
%struct.fb_videomode = type { i32 }

@mode_option = common dso_local global i64 0, align 8
@FB_MISC_1ST_DETAIL = common dso_local global i32 0, align 4
@FB_MODE_IS_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.fb_info*)* @riva_update_default_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @riva_update_default_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_monspecs*, align 8
  %6 = alloca %struct.fb_videomode, align 4
  %7 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  store %struct.fb_monspecs* %9, %struct.fb_monspecs** %5, align 8
  %10 = call i32 (...) @NVTRACE_ENTER()
  %11 = load i64, i64* @mode_option, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %16 = load i64, i64* @mode_option, align 8
  %17 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %18 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %17, i32 0, i32 2
  %19 = load %struct.fb_videomode*, %struct.fb_videomode** %18, align 8
  %20 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %21 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @fb_find_mode(%struct.fb_var_screeninfo* %14, %struct.fb_info* %15, i64 %16, %struct.fb_videomode* %19, i32 %22, i32* null, i32 8)
  br label %82

24:                                               ; preds = %2
  %25 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %26 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %25, i32 0, i32 2
  %27 = load %struct.fb_videomode*, %struct.fb_videomode** %26, align 8
  %28 = icmp ne %struct.fb_videomode* %27, null
  br i1 %28, label %29, label %81

29:                                               ; preds = %24
  %30 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %31 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %30, i32 0, i32 2
  %32 = load %struct.fb_videomode*, %struct.fb_videomode** %31, align 8
  %33 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %32, i64 0
  %34 = bitcast %struct.fb_videomode* %6 to i8*
  %35 = bitcast %struct.fb_videomode* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FB_MISC_1ST_DETAIL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %72, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %47 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %52 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %51, i32 0, i32 2
  %53 = load %struct.fb_videomode*, %struct.fb_videomode** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %53, i64 %55
  %57 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FB_MODE_IS_FIRST, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %50
  %63 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %64 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %63, i32 0, i32 2
  %65 = load %struct.fb_videomode*, %struct.fb_videomode** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %65, i64 %67
  %69 = bitcast %struct.fb_videomode* %6 to i8*
  %70 = bitcast %struct.fb_videomode* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 4, i1 false)
  br label %75

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %44

75:                                               ; preds = %62, %44
  br label %76

76:                                               ; preds = %75, %29
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 0
  store i32 8, i32* %78, align 4
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %80 = call i32 @riva_update_var(%struct.fb_var_screeninfo* %79, %struct.fb_videomode* %6)
  br label %81

81:                                               ; preds = %76, %24
  br label %82

82:                                               ; preds = %81, %13
  %83 = call i32 (...) @NVTRACE_LEAVE()
  ret void
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i32 @fb_find_mode(%struct.fb_var_screeninfo*, %struct.fb_info*, i64, %struct.fb_videomode*, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @riva_update_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
