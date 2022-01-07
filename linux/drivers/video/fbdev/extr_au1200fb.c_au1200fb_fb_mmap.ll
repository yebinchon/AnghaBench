; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_au1200fb_fb_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_au1200fb_fb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.au1200fb_device* }
%struct.au1200fb_device = type { i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @au1200fb_fb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1200fb_fb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.au1200fb_device*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.au1200fb_device*, %struct.au1200fb_device** %7, align 8
  store %struct.au1200fb_device* %8, %struct.au1200fb_device** %5, align 8
  %9 = load %struct.au1200fb_device*, %struct.au1200fb_device** %5, align 8
  %10 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = load %struct.au1200fb_device*, %struct.au1200fb_device** %5, align 8
  %14 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.au1200fb_device*, %struct.au1200fb_device** %5, align 8
  %17 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.au1200fb_device*, %struct.au1200fb_device** %5, align 8
  %20 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dma_mmap_attrs(i32 %11, %struct.vm_area_struct* %12, i32 %15, i32 %18, i32 %21, i32 0)
  ret i32 %22
}

declare dso_local i32 @dma_mmap_attrs(i32, %struct.vm_area_struct*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
