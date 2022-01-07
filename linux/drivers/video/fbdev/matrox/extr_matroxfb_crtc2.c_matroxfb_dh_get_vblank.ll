; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_get_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_crtc2.c_matroxfb_dh_get_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matroxfb_dh_fb_info = type { %struct.TYPE_6__, %struct.matrox_fb_info* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.matrox_fb_info = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.fb_vblank = type { i32, i32, i32 }

@FB_VBLANK_HAVE_VCOUNT = common dso_local global i32 0, align 4
@FB_VBLANK_HAVE_VBLANK = common dso_local global i32 0, align 4
@FB_VBLANK_VBLANKING = common dso_local global i32 0, align 4
@FB_VBLANK_HAVE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matroxfb_dh_fb_info*, %struct.fb_vblank*)* @matroxfb_dh_get_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroxfb_dh_get_vblank(%struct.matroxfb_dh_fb_info* %0, %struct.fb_vblank* %1) #0 {
  %3 = alloca %struct.matroxfb_dh_fb_info*, align 8
  %4 = alloca %struct.fb_vblank*, align 8
  %5 = alloca %struct.matrox_fb_info*, align 8
  store %struct.matroxfb_dh_fb_info* %0, %struct.matroxfb_dh_fb_info** %3, align 8
  store %struct.fb_vblank* %1, %struct.fb_vblank** %4, align 8
  %6 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %6, i32 0, i32 1
  %8 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %7, align 8
  store %struct.matrox_fb_info* %8, %struct.matrox_fb_info** %5, align 8
  %9 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %10 = call i32 @matroxfb_enable_irq(%struct.matrox_fb_info* %9, i32 0)
  %11 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %12 = call i32 @memset(%struct.fb_vblank* %11, i32 0, i32 12)
  %13 = load i32, i32* @FB_VBLANK_HAVE_VCOUNT, align 4
  %14 = load i32, i32* @FB_VBLANK_HAVE_VBLANK, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %17 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = call i32 @mga_inl(i32 15432)
  %19 = and i32 %18, 2047
  %20 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %21 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %23 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %24, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @FB_VBLANK_VBLANKING, align 4
  %33 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %34 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %2
  %38 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %39 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %38, i32 0, i32 1
  %40 = call i64 @test_bit(i32 0, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i32, i32* @FB_VBLANK_HAVE_COUNT, align 4
  %44 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %45 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %49 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %54 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %42, %37
  ret i32 0
}

declare dso_local i32 @matroxfb_enable_irq(%struct.matrox_fb_info*, i32) #1

declare dso_local i32 @memset(%struct.fb_vblank*, i32, i32) #1

declare dso_local i32 @mga_inl(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
