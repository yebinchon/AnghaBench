; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_is_valid_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_is_valid_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32, i32 }
%struct.fb_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UVESAFB_EXACT_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_videomode*, %struct.fb_info*)* @uvesafb_is_valid_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_is_valid_mode(%struct.fb_videomode* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca %struct.fb_info*, align 8
  store %struct.fb_videomode* %0, %struct.fb_videomode** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 1
  %14 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %15 = call i32 @fb_videomode_to_var(i32* %13, %struct.fb_videomode* %14)
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %19 = call i64 @fb_validate_mode(i32* %17, %struct.fb_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %38

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %28 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %31 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UVESAFB_EXACT_RES, align 4
  %34 = call i32 @uvesafb_vbe_find_mode(i32 %26, i32 %29, i32 %32, i32 8, i32 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @fb_videomode_to_var(i32*, %struct.fb_videomode*) #1

declare dso_local i64 @fb_validate_mode(i32*, %struct.fb_info*) #1

declare dso_local i32 @uvesafb_vbe_find_mode(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
