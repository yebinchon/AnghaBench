; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_update_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_update_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.omapfb_plane_struct* }
%struct.omapfb_plane_struct = type { i32 }
%struct.omapfb_update_window = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.omapfb_update_window*)* @omapfb_update_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_update_win(%struct.fb_info* %0, %struct.omapfb_update_window* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.omapfb_update_window*, align 8
  %5 = alloca %struct.omapfb_plane_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.omapfb_update_window* %1, %struct.omapfb_update_window** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %8, align 8
  store %struct.omapfb_plane_struct* %9, %struct.omapfb_plane_struct** %5, align 8
  %10 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %11 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @omapfb_rqueue_lock(i32 %12)
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %4, align 8
  %16 = call i32 @omapfb_update_window_async(%struct.fb_info* %14, %struct.omapfb_update_window* %15, i32* null, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %18 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @omapfb_rqueue_unlock(i32 %19)
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local i32 @omapfb_rqueue_lock(i32) #1

declare dso_local i32 @omapfb_update_window_async(%struct.fb_info*, %struct.omapfb_update_window*, i32*, i32*) #1

declare dso_local i32 @omapfb_rqueue_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
