; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ffb.c_ffb_init_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ffb.c_ffb_init_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ffb_par = type { i32, i32 }

@FFB_FLAG_AFB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Creator 3D\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Creator\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Elite 3D\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_ACCEL_SUN_CREATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @ffb_init_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffb_init_fix(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.ffb_par*, align 8
  %4 = alloca i8*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ffb_par*
  store %struct.ffb_par* %8, %struct.ffb_par** %3, align 8
  %9 = load %struct.ffb_par*, %struct.ffb_par** %3, align 8
  %10 = getelementptr inbounds %struct.ffb_par, %struct.ffb_par* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FFB_FLAG_AFB, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.ffb_par*, %struct.ffb_par** %3, align 8
  %17 = getelementptr inbounds %struct.ffb_par, %struct.ffb_par* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 7
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %23

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %23

23:                                               ; preds = %22, %21
  br label %25

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlcpy(i32 %29, i8* %30, i32 4)
  %32 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 8192, i32* %42, align 8
  %43 = load i32, i32* @FB_ACCEL_SUN_CREATOR, align 4
  %44 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  ret void
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
