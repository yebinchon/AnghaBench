; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ffb.c_ffb_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ffb.c_ffb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%struct.vm_area_struct = type { i32 }
%struct.ffb_par = type { i32, i32 }

@ffb_mmap_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @ffb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.ffb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ffb_par*
  store %struct.ffb_par* %9, %struct.ffb_par** %5, align 8
  %10 = load i32, i32* @ffb_mmap_map, align 4
  %11 = load %struct.ffb_par*, %struct.ffb_par** %5, align 8
  %12 = getelementptr inbounds %struct.ffb_par, %struct.ffb_par* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ffb_par*, %struct.ffb_par** %5, align 8
  %15 = getelementptr inbounds %struct.ffb_par, %struct.ffb_par* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = call i32 @sbusfb_mmap_helper(i32 %10, i32 %13, i32 %16, i32 0, %struct.vm_area_struct* %17)
  ret i32 %18
}

declare dso_local i32 @sbusfb_mmap_helper(i32, i32, i32, i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
