; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810fb_find_init_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810fb_find_init_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, i32, %struct.fb_monspecs, %struct.i810fb_par* }
%struct.fb_var_screeninfo = type { i32 }
%struct.fb_monspecs = type { i32*, i32 }
%struct.i810fb_par = type { i32, i32 }
%struct.fb_videomode = type { i32 }

@mode_option = common dso_local global i64 0, align 8
@xres = common dso_local global i64 0, align 8
@yres = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @i810fb_find_init_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810fb_find_init_mode(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fb_videomode, align 4
  %4 = alloca %struct.fb_var_screeninfo, align 4
  %5 = alloca %struct.fb_monspecs*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  store %struct.fb_monspecs* %8, %struct.fb_monspecs** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = call i32 @memset(%struct.fb_videomode* %3, i32 0, i32 4)
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = bitcast %struct.fb_var_screeninfo* %4 to i8*
  %16 = bitcast %struct.fb_var_screeninfo* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 8 %16, i64 4, i1 false)
  %17 = load i64, i64* @mode_option, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %21 = load i64, i64* @mode_option, align 8
  %22 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %23 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %26 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi %struct.fb_videomode* [ %3, %30 ], [ null, %31 ]
  %34 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @fb_find_mode(%struct.fb_var_screeninfo* %4, %struct.fb_info* %20, i64 %21, i32* %24, i32 %27, %struct.fb_videomode* %33, i32 %37)
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = bitcast %struct.fb_var_screeninfo* %41 to i8*
  %43 = bitcast %struct.fb_var_screeninfo* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %45 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @fb_destroy_modedb(i32* %46)
  %48 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  %49 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(%struct.fb_videomode*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fb_find_mode(%struct.fb_var_screeninfo*, %struct.fb_info*, i64, i32*, i32, %struct.fb_videomode*, i32) #1

declare dso_local i32 @fb_destroy_modedb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
