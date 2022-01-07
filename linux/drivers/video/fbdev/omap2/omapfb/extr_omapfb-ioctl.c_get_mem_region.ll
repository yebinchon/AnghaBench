; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_get_mem_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_get_mem_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_mem_region = type { i32 }
%struct.omapfb_info = type { i32, %struct.omapfb2_device* }
%struct.omapfb2_device = type { i32, %struct.omapfb2_mem_region* }

@OMAPFB_MEM_IDX_ENABLED = common dso_local global i32 0, align 4
@OMAPFB_MEM_IDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omapfb2_mem_region* (%struct.omapfb_info*, i32)* @get_mem_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omapfb2_mem_region* @get_mem_region(%struct.omapfb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.omapfb2_mem_region*, align 8
  %4 = alloca %struct.omapfb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omapfb2_device*, align 8
  store %struct.omapfb_info* %0, %struct.omapfb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %8 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %7, i32 0, i32 1
  %9 = load %struct.omapfb2_device*, %struct.omapfb2_device** %8, align 8
  store %struct.omapfb2_device* %9, %struct.omapfb2_device** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @OMAPFB_MEM_IDX_ENABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @OMAPFB_MEM_IDX_MASK, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %20 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.omapfb2_device*, %struct.omapfb2_device** %6, align 8
  %25 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.omapfb2_mem_region* null, %struct.omapfb2_mem_region** %3, align 8
  br label %36

29:                                               ; preds = %22
  %30 = load %struct.omapfb2_device*, %struct.omapfb2_device** %6, align 8
  %31 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %30, i32 0, i32 1
  %32 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %32, i64 %34
  store %struct.omapfb2_mem_region* %35, %struct.omapfb2_mem_region** %3, align 8
  br label %36

36:                                               ; preds = %29, %28
  %37 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %3, align 8
  ret %struct.omapfb2_mem_region* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
