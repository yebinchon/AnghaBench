; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.omapfb_plane_struct* }
%struct.omapfb_plane_struct = type { %struct.omapfb_device* }
%struct.omapfb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @omapfb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.omapfb_plane_struct*, align 8
  %6 = alloca %struct.omapfb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %9, align 8
  store %struct.omapfb_plane_struct* %10, %struct.omapfb_plane_struct** %5, align 8
  %11 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %12 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %11, i32 0, i32 0
  %13 = load %struct.omapfb_device*, %struct.omapfb_device** %12, align 8
  store %struct.omapfb_device* %13, %struct.omapfb_device** %6, align 8
  %14 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %15 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %14)
  %16 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %17 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.fb_info*, %struct.vm_area_struct*)**
  %21 = load i32 (%struct.fb_info*, %struct.vm_area_struct*)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)** %20, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = call i32 %21(%struct.fb_info* %22, %struct.vm_area_struct* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %26 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %25)
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
