; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64 }
%struct.fb_info = type { %struct.fb_var_screeninfo }
%struct.omapfb_info = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"pan_display(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @omapfb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.omapfb_info*, align 8
  %7 = alloca %struct.fb_var_screeninfo, align 8
  %8 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %9)
  store %struct.omapfb_info* %10, %struct.omapfb_info** %6, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %11)
  %13 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %62

34:                                               ; preds = %24, %2
  %35 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = bitcast %struct.fb_var_screeninfo* %7 to i8*
  %38 = bitcast %struct.fb_var_screeninfo* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  %47 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = bitcast %struct.fb_var_screeninfo* %48 to i8*
  %50 = bitcast %struct.fb_var_screeninfo* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %52 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @omapfb_get_mem_region(i32 %53)
  %55 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %56 = call i32 @omapfb_apply_changes(%struct.fb_info* %55, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %58 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @omapfb_put_mem_region(i32 %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %34, %33
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @DBG(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @omapfb_get_mem_region(i32) #1

declare dso_local i32 @omapfb_apply_changes(%struct.fb_info*, i32) #1

declare dso_local i32 @omapfb_put_mem_region(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
