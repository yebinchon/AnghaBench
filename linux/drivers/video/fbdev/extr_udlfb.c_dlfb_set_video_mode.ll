; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fb_var_screeninfo = type { i32 }
%struct.urb = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlfb_data*, %struct.fb_var_screeninfo*)* @dlfb_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_set_video_mode(%struct.dlfb_data* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlfb_data*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb*, align 8
  store %struct.dlfb_data* %0, %struct.dlfb_data** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %11 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %12 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %11, i32 0, i32 2
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %20 = call %struct.urb* @dlfb_get_urb(%struct.dlfb_data* %19)
  store %struct.urb* %20, %struct.urb** %10, align 8
  %21 = load %struct.urb*, %struct.urb** %10, align 8
  %22 = icmp ne %struct.urb* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %67

26:                                               ; preds = %18
  %27 = load %struct.urb*, %struct.urb** %10, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @dlfb_vidreg_lock(i8* %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @dlfb_set_color_depth(i8* %33, i32 0)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @dlfb_set_base16bpp(i8* %35, i32 0)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %39 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @dlfb_set_base8bpp(i8* %37, i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %47 = call i8* @dlfb_set_vid_cmds(i8* %45, %struct.fb_var_screeninfo* %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %50 = call i8* @dlfb_blanking(i8* %48, i32 %49)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i8* @dlfb_vidreg_unlock(i8* %51)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  %59 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %60 = load %struct.urb*, %struct.urb** %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @dlfb_submit_urb(%struct.dlfb_data* %59, %struct.urb* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %64 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %65 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %26, %23, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.urb* @dlfb_get_urb(%struct.dlfb_data*) #1

declare dso_local i8* @dlfb_vidreg_lock(i8*) #1

declare dso_local i8* @dlfb_set_color_depth(i8*, i32) #1

declare dso_local i8* @dlfb_set_base16bpp(i8*, i32) #1

declare dso_local i8* @dlfb_set_base8bpp(i8*, i32) #1

declare dso_local i8* @dlfb_set_vid_cmds(i8*, %struct.fb_var_screeninfo*) #1

declare dso_local i8* @dlfb_blanking(i8*, i32) #1

declare dso_local i8* @dlfb_vidreg_unlock(i8*) #1

declare dso_local i32 @dlfb_submit_urb(%struct.dlfb_data*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
