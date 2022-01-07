; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_accel.c_nvidiafb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_accel.c_nvidiafb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.nvidia_par* }
%struct.nvidia_par = type { i64 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@BLIT_POINT_SRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvidiafb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.nvidia_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  store %struct.nvidia_par* %8, %struct.nvidia_par** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %17 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %23 = call i32 @cfb_copyarea(%struct.fb_info* %21, %struct.fb_copyarea* %22)
  br label %61

24:                                               ; preds = %15
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %27 = load i32, i32* @BLIT_POINT_SRC, align 4
  %28 = call i32 @NVDmaStart(%struct.fb_info* %25, %struct.nvidia_par* %26, i32 %27, i32 3)
  %29 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %30 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %31 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %35 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = call i32 @NVDmaNext(%struct.nvidia_par* %29, i32 %37)
  %39 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %40 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %41 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %45 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %43, %46
  %48 = call i32 @NVDmaNext(%struct.nvidia_par* %39, i32 %47)
  %49 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %50 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %51 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %55 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = call i32 @NVDmaNext(%struct.nvidia_par* %49, i32 %57)
  %59 = load %struct.nvidia_par*, %struct.nvidia_par** %5, align 8
  %60 = call i32 @NVDmaKickoff(%struct.nvidia_par* %59)
  br label %61

61:                                               ; preds = %24, %20, %14
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @NVDmaStart(%struct.fb_info*, %struct.nvidia_par*, i32, i32) #1

declare dso_local i32 @NVDmaNext(%struct.nvidia_par*, i32) #1

declare dso_local i32 @NVDmaKickoff(%struct.nvidia_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
