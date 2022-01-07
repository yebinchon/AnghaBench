; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macmodes.c_mac_find_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macmodes.c_mac_find_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32 }
%struct.fb_var_screeninfo = type { i32 }
%struct.fb_info = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@mac_modedb = common dso_local global %struct.fb_videomode* null, align 8
@DEFAULT_MODEDB_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_find_mode(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fb_videomode*, align 8
  %10 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %5, align 8
  store %struct.fb_info* %1, %struct.fb_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.fb_videomode* null, %struct.fb_videomode** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  store i8* %19, i8** %7, align 8
  %20 = load %struct.fb_videomode*, %struct.fb_videomode** @mac_modedb, align 8
  store %struct.fb_videomode* %20, %struct.fb_videomode** %9, align 8
  %21 = load %struct.fb_videomode*, %struct.fb_videomode** @mac_modedb, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.fb_videomode* %21)
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %17, %13, %4
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.fb_videomode*, %struct.fb_videomode** @mac_modedb, align 8
  %30 = load i64, i64* @DEFAULT_MODEDB_INDEX, align 8
  %31 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %29, i64 %30
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @fb_find_mode(%struct.fb_var_screeninfo* %24, %struct.fb_info* %25, i8* %26, %struct.fb_videomode* %27, i32 %28, %struct.fb_videomode* %31, i32 %32)
  ret i32 %33
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.fb_videomode*) #1

declare dso_local i32 @fb_find_mode(%struct.fb_var_screeninfo*, %struct.fb_info*, i8*, %struct.fb_videomode*, i32, %struct.fb_videomode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
