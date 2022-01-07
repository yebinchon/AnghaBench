; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_modes_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_modes_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmpfb_info = type { i32, i32, i32, i32, %struct.fb_info* }
%struct.fb_info = type { i32, i32 }
%struct.fb_videomode = type { i32 }
%struct.mmp_mode = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"can't get videomode num\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmpfb_info*)* @modes_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modes_setup(%struct.mmpfb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmpfb_info*, align 8
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca %struct.mmp_mode*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmpfb_info* %0, %struct.mmpfb_info** %3, align 8
  %9 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %10 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %9, i32 0, i32 4
  %11 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  store %struct.fb_info* %11, %struct.fb_info** %6, align 8
  %12 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %13 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @mmp_path_get_modelist(i32 %14, %struct.mmp_mode** %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %20 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_warn(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.fb_videomode* @kcalloc(i32 %24, i32 4, i32 %25)
  store %struct.fb_videomode* %26, %struct.fb_videomode** %4, align 8
  %27 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %28 = icmp ne %struct.fb_videomode* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %81

32:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %38, i64 %40
  %42 = load %struct.mmp_mode*, %struct.mmp_mode** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %42, i64 %44
  %46 = call i32 @mmpmode_to_fbmode(%struct.fb_videomode* %41, %struct.mmp_mode* %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  %55 = call i32 @fb_videomode_to_modelist(%struct.fb_videomode* %51, i32 %52, i32* %54)
  %56 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %57 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %56, i32 0, i32 1
  %58 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %59 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %58, i64 0
  %60 = call i32 @memcpy(i32* %57, %struct.fb_videomode* %59, i32 4)
  %61 = load %struct.mmp_mode*, %struct.mmp_mode** %5, align 8
  %62 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %61, i64 0
  %63 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %66 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 0
  %69 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %70 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %69, i32 0, i32 1
  %71 = call i32 @fb_videomode_to_var(i32* %68, i32* %70)
  %72 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %73 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mmp_mode*, %struct.mmp_mode** %5, align 8
  %76 = getelementptr inbounds %struct.mmp_mode, %struct.mmp_mode* %75, i64 0
  %77 = call i32 @mmp_path_set_mode(i32 %74, %struct.mmp_mode* %76)
  %78 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %79 = call i32 @kfree(%struct.fb_videomode* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %50, %29, %18
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @mmp_path_get_modelist(i32, %struct.mmp_mode**) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local %struct.fb_videomode* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mmpmode_to_fbmode(%struct.fb_videomode*, %struct.mmp_mode*) #1

declare dso_local i32 @fb_videomode_to_modelist(%struct.fb_videomode*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.fb_videomode*, i32) #1

declare dso_local i32 @fb_videomode_to_var(i32*, i32*) #1

declare dso_local i32 @mmp_path_set_mode(i32, %struct.mmp_mode*) #1

declare dso_local i32 @kfree(%struct.fb_videomode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
