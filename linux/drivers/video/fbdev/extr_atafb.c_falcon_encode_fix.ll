; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_encode_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_encode_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_fix_screeninfo = type { i32, i32, i32, i32, i32, i32, i8*, i64, i32, i32, i32 }
%struct.atafb_par = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"Atari Builtin\00", align 1
@phys_screen_base = common dso_local global i32 0, align 4
@screen_len = common dso_local global i32 0, align 4
@FB_TYPE_INTERLEAVED_PLANES = common dso_local global i8* null, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i8* null, align 8
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_ACCEL_ATARIBLITT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_fix_screeninfo*, %struct.atafb_par*)* @falcon_encode_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_encode_fix(%struct.fb_fix_screeninfo* %0, %struct.atafb_par* %1) #0 {
  %3 = alloca %struct.fb_fix_screeninfo*, align 8
  %4 = alloca %struct.atafb_par*, align 8
  store %struct.fb_fix_screeninfo* %0, %struct.fb_fix_screeninfo** %3, align 8
  store %struct.atafb_par* %1, %struct.atafb_par** %4, align 8
  %5 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %6 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @strcpy(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @phys_screen_base, align 4
  %10 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %11 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @screen_len, align 4
  %13 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %14 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** @FB_TYPE_INTERLEAVED_PLANES, align 8
  %16 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %17 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %18, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %21 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %26 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %28 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %27, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %30 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load i8*, i8** @FB_TYPE_PACKED_PIXELS, align 8
  %37 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %38 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %40 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %42 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %41, i32 0, i32 1
  store i32 32, i32* %42, align 4
  br label %63

43:                                               ; preds = %2
  %44 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %45 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 256
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = load i8*, i8** @FB_TYPE_PACKED_PIXELS, align 8
  %53 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %54 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  %55 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %56 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %58 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %59 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %61 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %60, i32 0, i32 1
  store i32 2, i32* %61, align 4
  br label %62

62:                                               ; preds = %51, %43
  br label %63

63:                                               ; preds = %62, %35
  %64 = load %struct.atafb_par*, %struct.atafb_par** %4, align 8
  %65 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %68 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @FB_ACCEL_ATARIBLITT, align 4
  %70 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %3, align 8
  %71 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  ret i32 0
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
