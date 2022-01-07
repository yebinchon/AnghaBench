; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_fix_screeninfo }
%struct.fb_fix_screeninfo = type { i32 }
%struct.vm_area_struct = type { i32, %struct.omapfb2_mem_region*, i32*, i32 }
%struct.omapfb2_mem_region = type { i32 }
%struct.omapfb_info = type { %struct.omapfb2_mem_region* }

@.str = private unnamed_addr constant [45 x i8] c"user mmap region start %lx, len %d, off %lx\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@mmap_user_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @omapfb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.omapfb_info*, align 8
  %7 = alloca %struct.fb_fix_screeninfo*, align 8
  %8 = alloca %struct.omapfb2_mem_region*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %12)
  store %struct.omapfb_info* %13, %struct.omapfb_info** %6, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  store %struct.fb_fix_screeninfo* %15, %struct.fb_fix_screeninfo** %7, align 8
  %16 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %17 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %16, i32 0, i32 0
  %18 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %17, align 8
  %19 = call %struct.omapfb2_mem_region* @omapfb_get_mem_region(%struct.omapfb2_mem_region* %18)
  store %struct.omapfb2_mem_region* %19, %struct.omapfb2_mem_region** %8, align 8
  %20 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %21 = call i64 @omapfb_get_region_paddr(%struct.omapfb_info* %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %7, align 8
  %23 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = call i32 @DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %26, i32 %31)
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pgprot_writecombine(i32 %35)
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 2
  store i32* @mmap_user_ops, i32** %40, align 8
  %41 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %8, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 1
  store %struct.omapfb2_mem_region* %41, %struct.omapfb2_mem_region** %43, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @vm_iomap_memory(%struct.vm_area_struct* %44, i64 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  br label %57

51:                                               ; preds = %2
  %52 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %8, align 8
  %53 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %52, i32 0, i32 0
  %54 = call i32 @atomic_inc(i32* %53)
  %55 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %8, align 8
  %56 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %55)
  store i32 0, i32* %3, align 4
  br label %63

57:                                               ; preds = %50
  %58 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %59 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %58, i32 0, i32 0
  %60 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %59, align 8
  %61 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local %struct.omapfb2_mem_region* @omapfb_get_mem_region(%struct.omapfb2_mem_region*) #1

declare dso_local i64 @omapfb_get_region_paddr(%struct.omapfb_info*) #1

declare dso_local i32 @DBG(i8*, i64, i32, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @vm_iomap_memory(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
