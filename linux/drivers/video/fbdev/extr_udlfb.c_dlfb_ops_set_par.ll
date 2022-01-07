; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_ops_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_ops_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.TYPE_2__, i64, %struct.dlfb_data* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlfb_data = type { i64, %struct.fb_var_screeninfo }

@FB_VMODE_SMOOTH_XPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @dlfb_ops_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_ops_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.dlfb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fb_var_screeninfo, align 8
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 3
  %12 = load %struct.dlfb_data*, %struct.dlfb_data** %11, align 8
  store %struct.dlfb_data* %12, %struct.dlfb_data** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 8
  %22 = mul nsw i32 %16, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = bitcast %struct.fb_var_screeninfo* %8 to i8*
  %26 = bitcast %struct.fb_var_screeninfo* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false)
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @FB_VMODE_SMOOTH_XPAN, align 4
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %34 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %33, i32 0, i32 1
  %35 = call i32 @memcmp(%struct.fb_var_screeninfo* %34, %struct.fb_var_screeninfo* %8, i32 24)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

38:                                               ; preds = %1
  %39 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i32 @dlfb_realloc_framebuffer(%struct.dlfb_data* %39, %struct.fb_info* %40, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %107

52:                                               ; preds = %38
  %53 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %54 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = call i32 @dlfb_set_video_mode(%struct.dlfb_data* %53, %struct.fb_var_screeninfo* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %107

61:                                               ; preds = %52
  %62 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %63 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %62, i32 0, i32 1
  %64 = bitcast %struct.fb_var_screeninfo* %63 to i8*
  %65 = bitcast %struct.fb_var_screeninfo* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 24, i1 false)
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %71 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %61
  %75 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %92, %74
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 2
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 14310, i32* %91, align 4
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %79

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %61
  %97 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %98 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dlfb_handle_damage(%struct.dlfb_data* %97, i32 0, i32 0, i32 %101, i32 %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %96, %59, %50, %37
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i32) #2

declare dso_local i32 @dlfb_realloc_framebuffer(%struct.dlfb_data*, %struct.fb_info*, i32) #2

declare dso_local i32 @dlfb_set_video_mode(%struct.dlfb_data*, %struct.fb_var_screeninfo*) #2

declare dso_local i32 @dlfb_handle_damage(%struct.dlfb_data*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
