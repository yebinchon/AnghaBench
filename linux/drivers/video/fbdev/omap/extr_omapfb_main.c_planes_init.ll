; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_planes_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_planes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { %struct.fb_info**, i32, %struct.TYPE_4__ }
%struct.fb_info = type { %struct.TYPE_6__, %struct.omapfb_plane_struct* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.omapfb_plane_struct = type { i32, %struct.TYPE_5__, %struct.omapfb_device* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@def_mirror = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*)* @planes_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @planes_init(%struct.omapfb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.omapfb_plane_struct*, align 8
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %73, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %11 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %76

15:                                               ; preds = %8
  %16 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %17 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.fb_info* @framebuffer_alloc(i32 24, i32 %18)
  store %struct.fb_info* %19, %struct.fb_info** %4, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = icmp eq %struct.fb_info* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %24 = call i32 @planes_cleanup(%struct.omapfb_device* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %77

27:                                               ; preds = %15
  %28 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 1
  %30 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %29, align 8
  store %struct.omapfb_plane_struct* %30, %struct.omapfb_plane_struct** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %33 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %35 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %36 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %35, i32 0, i32 2
  store %struct.omapfb_device* %34, %struct.omapfb_device** %36, align 8
  %37 = load i32, i32* @def_mirror, align 4
  %38 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %39 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %42 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %43 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %42, i32 0, i32 0
  %44 = load %struct.fb_info**, %struct.fb_info*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %44, i64 %46
  store %struct.fb_info* %41, %struct.fb_info** %47, align 8
  %48 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %49 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %50 = call i32 @fbinfo_init(%struct.omapfb_device* %48, %struct.fb_info* %49)
  store i32 %50, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %27
  %53 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %54 = call i32 @framebuffer_release(%struct.fb_info* %53)
  %55 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %56 = call i32 @planes_cleanup(%struct.omapfb_device* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %77

58:                                               ; preds = %27
  %59 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %64 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %71 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %8

76:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %52, %22
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32) #1

declare dso_local i32 @planes_cleanup(%struct.omapfb_device*) #1

declare dso_local i32 @fbinfo_init(%struct.omapfb_device*, %struct.fb_info*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
