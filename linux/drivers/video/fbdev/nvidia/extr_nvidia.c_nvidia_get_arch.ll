; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidia_get_arch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nvidia.c_nvidia_get_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.nvidia_par* }
%struct.nvidia_par = type { i32 }

@NV_ARCH_10 = common dso_local global i32 0, align 4
@NV_ARCH_20 = common dso_local global i32 0, align 4
@NV_ARCH_30 = common dso_local global i32 0, align 4
@NV_ARCH_40 = common dso_local global i32 0, align 4
@NV_ARCH_04 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @nvidia_get_arch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_get_arch(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.nvidia_par*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 0
  %7 = load %struct.nvidia_par*, %struct.nvidia_par** %6, align 8
  store %struct.nvidia_par* %7, %struct.nvidia_par** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %9 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 4080
  switch i32 %11, label %22 [
    i32 256, label %12
    i32 272, label %12
    i32 336, label %12
    i32 368, label %12
    i32 384, label %12
    i32 416, label %12
    i32 496, label %12
    i32 512, label %14
    i32 592, label %14
    i32 640, label %14
    i32 768, label %16
    i32 784, label %16
    i32 800, label %16
    i32 816, label %16
    i32 832, label %16
    i32 64, label %18
    i32 192, label %18
    i32 288, label %18
    i32 320, label %18
    i32 352, label %18
    i32 464, label %18
    i32 144, label %18
    i32 528, label %18
    i32 544, label %18
    i32 576, label %18
    i32 656, label %18
    i32 912, label %18
    i32 976, label %18
    i32 32, label %20
  ]

12:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %13 = load i32, i32* @NV_ARCH_10, align 4
  store i32 %13, i32* %4, align 4
  br label %23

14:                                               ; preds = %1, %1, %1
  %15 = load i32, i32* @NV_ARCH_20, align 4
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %1, %1, %1, %1, %1
  %17 = load i32, i32* @NV_ARCH_30, align 4
  store i32 %17, i32* %4, align 4
  br label %23

18:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %19 = load i32, i32* @NV_ARCH_40, align 4
  store i32 %19, i32* %4, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @NV_ARCH_04, align 4
  store i32 %21, i32* %4, align 4
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %20, %18, %16, %14, %12
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
