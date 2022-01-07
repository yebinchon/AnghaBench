; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_cirrusfb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, %struct.TYPE_3__, i32, %struct.cirrusfb_info* }
%struct.TYPE_3__ = type { i32 }
%struct.cirrusfb_info = type { i64 }

@BT_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"(RAM start set to: 0x%p)\0A\00", align 1
@mode_option = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"wrong initial video mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"choking on default var... umm, no good.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"could not register fb device; err = %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @cirrusfb_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrusfb_register(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.cirrusfb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 4
  %8 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %7, align 8
  store %struct.cirrusfb_info* %8, %struct.cirrusfb_info** %4, align 8
  %9 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %4, align 8
  %10 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BT_NONE, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = call i32 @cirrusfb_set_fbinfo(%struct.fb_info* %16)
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 2
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = load i32, i32* @mode_option, align 4
  %29 = call i32 @fb_find_mode(%struct.TYPE_3__* %26, %struct.fb_info* %27, i32 %28, i32* null, i32 0, i32* null, i32 8)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %1
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @dev_dbg(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %67

39:                                               ; preds = %1
  %40 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 2
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = call i32 @cirrusfb_check_var(%struct.TYPE_3__* %45, %struct.fb_info* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %67

55:                                               ; preds = %39
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = call i32 @register_framebuffer(%struct.fb_info* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %72

67:                                               ; preds = %60, %50, %32
  %68 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 0
  %70 = call i32 @fb_dealloc_cmap(i32* %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %66
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cirrusfb_set_fbinfo(%struct.fb_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @fb_find_mode(%struct.TYPE_3__*, %struct.fb_info*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @cirrusfb_check_var(%struct.TYPE_3__*, %struct.fb_info*) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
