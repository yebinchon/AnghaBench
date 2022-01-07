; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.omapfb_plane_struct* }
%struct.omapfb_plane_struct = type { %struct.TYPE_2__, %struct.omapfb_device* }
%struct.TYPE_2__ = type { i32 }
%struct.omapfb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @omapfb_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_mirror(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omapfb_plane_struct*, align 8
  %6 = alloca %struct.omapfb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %9, align 8
  store %struct.omapfb_plane_struct* %10, %struct.omapfb_plane_struct** %5, align 8
  %11 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %12 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %11, i32 0, i32 1
  %13 = load %struct.omapfb_device*, %struct.omapfb_device** %12, align 8
  store %struct.omapfb_device* %13, %struct.omapfb_device** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %15 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %4, align 4
  %20 = call i64 (...) @cpu_is_omap15xx()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %28 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %35 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = call i32 @ctrl_change_mode(%struct.fb_info* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %32, %25
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %42 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i32 @ctrl_change_mode(%struct.fb_info*) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
