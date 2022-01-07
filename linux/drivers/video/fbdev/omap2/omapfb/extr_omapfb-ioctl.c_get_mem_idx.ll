; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_get_mem_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_get_mem_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OMAPFB_MEM_IDX_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_info*)* @get_mem_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mem_idx(%struct.omapfb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_info*, align 8
  store %struct.omapfb_info* %0, %struct.omapfb_info** %3, align 8
  %4 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  %5 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  %8 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @OMAPFB_MEM_IDX_ENABLED, align 4
  %16 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  %17 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %15, %20
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %14, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
