; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_query_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_query_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_mem_info = type { i32, i32 }
%struct.omapfb_info = type { i32 }
%struct.omapfb2_mem_region = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.omapfb_mem_info*)* @omapfb_query_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_query_mem(%struct.fb_info* %0, %struct.omapfb_mem_info* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.omapfb_mem_info*, align 8
  %5 = alloca %struct.omapfb_info*, align 8
  %6 = alloca %struct.omapfb2_mem_region*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.omapfb_mem_info* %1, %struct.omapfb_mem_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %7)
  store %struct.omapfb_info* %8, %struct.omapfb_info** %5, align 8
  %9 = load %struct.omapfb_info*, %struct.omapfb_info** %5, align 8
  %10 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.omapfb2_mem_region* @omapfb_get_mem_region(i32 %11)
  store %struct.omapfb2_mem_region* %12, %struct.omapfb2_mem_region** %6, align 8
  %13 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %4, align 8
  %14 = call i32 @memset(%struct.omapfb_mem_info* %13, i32 0, i32 8)
  %15 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %6, align 8
  %16 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %4, align 8
  %19 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %6, align 8
  %21 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %4, align 8
  %24 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %6, align 8
  %26 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %25)
  ret i32 0
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local %struct.omapfb2_mem_region* @omapfb_get_mem_region(i32) #1

declare dso_local i32 @memset(%struct.omapfb_mem_info*, i32, i32) #1

declare dso_local i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
