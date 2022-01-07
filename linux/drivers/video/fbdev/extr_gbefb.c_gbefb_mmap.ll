; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gbefb.c_gbefb_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gbefb.c_gbefb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.fb_info = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@gbe_mem_size = common dso_local global i64 0, align 8
@gbe_tiles = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TILE_SHIFT = common dso_local global i64 0, align 8
@TILE_MASK = common dso_local global i64 0, align 8
@TILE_SIZE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @gbefb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbefb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = shl i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 -1, %27
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %107

33:                                               ; preds = %2
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @gbe_mem_size, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %107

40:                                               ; preds = %33
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @gbe_mem_size, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %42, %43
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %107

49:                                               ; preds = %40
  %50 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gbe_tiles, i32 0, i32 0), align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @TILE_SHIFT, align 8
  %53 = lshr i64 %51, %52
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  store i64* %54, i64** %11, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* @TILE_MASK, align 8
  %59 = load i64, i64* %7, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %103, %49
  %62 = load i64*, i64** %11, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TILE_SHIFT, align 8
  %65 = shl i64 %63, %64
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %65, %66
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* @TILE_SIZE, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i64, i64* %6, align 8
  store i64 %74, i64* %10, align 8
  br label %79

75:                                               ; preds = %61
  %76 = load i64, i64* @TILE_SIZE, align 8
  %77 = load i64, i64* %7, align 8
  %78 = sub i64 %76, %77
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %75, %73
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @PAGE_SHIFT, align 8
  %84 = lshr i64 %82, %83
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @remap_pfn_range(%struct.vm_area_struct* %80, i64 %81, i64 %84, i64 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %107

94:                                               ; preds = %79
  store i64 0, i64* %7, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %6, align 8
  %97 = sub i64 %96, %95
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %8, align 8
  %101 = load i64*, i64** %11, align 8
  %102 = getelementptr inbounds i64, i64* %101, i32 1
  store i64* %102, i64** %11, align 8
  br label %103

103:                                              ; preds = %94
  %104 = load i64, i64* %6, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %61, label %106

106:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %91, %46, %37, %30
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
