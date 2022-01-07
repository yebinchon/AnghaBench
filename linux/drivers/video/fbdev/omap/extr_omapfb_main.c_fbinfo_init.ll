; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_fbinfo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_fbinfo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fb_info = type { i32, i32, i32, i32*, %struct.fb_fix_screeninfo, %struct.fb_var_screeninfo }
%struct.fb_fix_screeninfo = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i8*, i8*, i8*, i8*, i32 }

@omapfb_ops = common dso_local global i32 0, align 4
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4
@def_accel = common dso_local global i64 0, align 8
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@def_vxres = common dso_local global i8* null, align 8
@def_vyres = common dso_local global i8* null, align 8
@def_rotate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to allocate color map memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*, %struct.fb_info*)* @fbinfo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbinfo_init(%struct.omapfb_device* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.fb_fix_screeninfo*, align 8
  %7 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 5
  store %struct.fb_var_screeninfo* %9, %struct.fb_var_screeninfo** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 4
  store %struct.fb_fix_screeninfo* %11, %struct.fb_fix_screeninfo** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 3
  store i32* @omapfb_ops, i32** %13, align 8
  %14 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %15 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %18 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MODULE_NAME, align 4
  %21 = call i32 @strncpy(i32 %19, i32 %20, i32 4)
  %22 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %23 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i64, i64* @def_accel, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @FB_ACCELF_TEXT, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** @def_vxres, align 8
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @def_vyres, align 8
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @def_vxres, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @def_vyres, align 8
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @def_rotate, align 4
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %52 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %60 = call i32 @set_fb_var(%struct.fb_info* %58, %struct.fb_var_screeninfo* %59)
  %61 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %62 = call i32 @set_fb_fix(%struct.fb_info* %61, i32 1)
  %63 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = call i32 @fb_alloc_cmap(i32* %64, i32 16, i32 0)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %32
  %69 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %70 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %32
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @set_fb_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @set_fb_fix(%struct.fb_info*, i32) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
