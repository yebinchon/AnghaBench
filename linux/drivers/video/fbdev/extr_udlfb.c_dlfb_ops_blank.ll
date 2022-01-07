; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_ops_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_ops_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, %struct.dlfb_data* }
%struct.dlfb_data = type { i32 }
%struct.urb = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"blank, mode %d --> %d\0A\00", align 1
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @dlfb_ops_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_ops_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.dlfb_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.urb*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 2
  %11 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  store %struct.dlfb_data* %11, %struct.dlfb_data** %6, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %16 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %21 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = call i32 @dlfb_set_video_mode(%struct.dlfb_data* %30, i32* %32)
  br label %34

34:                                               ; preds = %29, %25, %2
  %35 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %36 = call %struct.urb* @dlfb_get_urb(%struct.dlfb_data* %35)
  store %struct.urb* %36, %struct.urb** %8, align 8
  %37 = load %struct.urb*, %struct.urb** %8, align 8
  %38 = icmp ne %struct.urb* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %69

40:                                               ; preds = %34
  %41 = load %struct.urb*, %struct.urb** %8, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @dlfb_vidreg_lock(i8* %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i8* @dlfb_blanking(i8* %47, i32 %48)
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @dlfb_vidreg_unlock(i8* %50)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @dlfb_dummy_render(i8* %52)
  store i8* %53, i8** %7, align 8
  %54 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %55 = load %struct.urb*, %struct.urb** %8, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.urb*, %struct.urb** %8, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = ptrtoint i8* %56 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @dlfb_submit_urb(%struct.dlfb_data* %54, %struct.urb* %55, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.dlfb_data*, %struct.dlfb_data** %6, align 8
  %68 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %40, %39
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dlfb_set_video_mode(%struct.dlfb_data*, i32*) #1

declare dso_local %struct.urb* @dlfb_get_urb(%struct.dlfb_data*) #1

declare dso_local i8* @dlfb_vidreg_lock(i8*) #1

declare dso_local i8* @dlfb_blanking(i8*, i32) #1

declare dso_local i8* @dlfb_vidreg_unlock(i8*) #1

declare dso_local i8* @dlfb_dummy_render(i8*) #1

declare dso_local i32 @dlfb_submit_urb(%struct.dlfb_data*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
