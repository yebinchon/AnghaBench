; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_dvi.c_viafb_dvi_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_dvi.c_viafb_dvi_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32 }
%struct.fb_videomode = type { i32 }

@viaparinfo = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_dvi_set_mode(%struct.fb_var_screeninfo* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fb_var_screeninfo, align 4
  %10 = alloca %struct.fb_videomode*, align 8
  %11 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %13 = bitcast %struct.fb_var_screeninfo* %9 to i8*
  %14 = bitcast %struct.fb_var_screeninfo* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %4
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PICOS2KHZ(i32 %26)
  %28 = sdiv i32 %27, 1000
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.fb_videomode* @viafb_get_best_rb_mode(i32 %34, i32 %37, i32 60)
  store %struct.fb_videomode* %38, %struct.fb_videomode** %10, align 8
  %39 = load %struct.fb_videomode*, %struct.fb_videomode** %10, align 8
  %40 = icmp ne %struct.fb_videomode* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.fb_videomode*, %struct.fb_videomode** %10, align 8
  %43 = call i32 @viafb_fill_var_timing_info(%struct.fb_var_screeninfo* %9, %struct.fb_videomode* %42)
  br label %44

44:                                               ; preds = %41, %31
  br label %45

45:                                               ; preds = %44, %23, %4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @viafb_fill_crtc_timing(%struct.fb_var_screeninfo* %9, i32 %46, i32 %47, i32 %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PICOS2KHZ(i32) #2

declare dso_local %struct.fb_videomode* @viafb_get_best_rb_mode(i32, i32, i32) #2

declare dso_local i32 @viafb_fill_var_timing_info(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #2

declare dso_local i32 @viafb_fill_crtc_timing(%struct.fb_var_screeninfo*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
