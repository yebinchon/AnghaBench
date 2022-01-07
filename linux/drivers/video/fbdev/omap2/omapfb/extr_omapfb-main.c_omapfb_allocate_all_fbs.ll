; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_allocate_all_fbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_allocate_all_fbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { i32, i32*, i32 }
%struct.omapfb_info = type { %struct.omapfb2_mem_region* }
%struct.omapfb2_mem_region = type { i32, i32, i32 }

@def_vram = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to parse vram parameter\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"region%d phys %08x virt %p size=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb2_device*)* @omapfb_allocate_all_fbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_allocate_all_fbs(%struct.omapfb2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb2_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i64], align 16
  %7 = alloca [10 x i64], align 16
  %8 = alloca %struct.omapfb_info*, align 8
  %9 = alloca %struct.omapfb2_mem_region*, align 8
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %3, align 8
  %10 = bitcast [10 x i64]* %6 to i64**
  %11 = call i32 @memset(i64** %10, i32 0, i32 80)
  %12 = bitcast [10 x i64]* %7 to i64**
  %13 = call i32 @memset(i64** %12, i32 0, i32 80)
  %14 = load i64, i64* @def_vram, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load i64, i64* @def_vram, align 8
  %18 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 0
  %19 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  %20 = call i64 @omapfb_parse_vram_param(i64 %17, i32 10, i64* %18, i64* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %24 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = bitcast [10 x i64]* %6 to i64**
  %28 = call i32 @memset(i64** %27, i32 0, i32 80)
  %29 = bitcast [10 x i64]* %7 to i64**
  %30 = call i32 @memset(i64** %29, i32 0, i32 80)
  br label %31

31:                                               ; preds = %22, %16, %1
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %70, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %35 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %73

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %41, %38
  %48 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %49 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @omapfb_alloc_fbmem_display(i32 %54, i64 %58, i64 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %47
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %107

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %68, %41
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %32

73:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %103, %73
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %77 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %74
  %81 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %82 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.omapfb_info* @FB2OFB(i32 %87)
  store %struct.omapfb_info* %88, %struct.omapfb_info** %8, align 8
  %89 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %90 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %89, i32 0, i32 0
  %91 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %90, align 8
  store %struct.omapfb2_mem_region* %91, %struct.omapfb2_mem_region** %9, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %94 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %97 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %100 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %80
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %74

106:                                              ; preds = %74
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %66
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @memset(i64**, i32, i32) #1

declare dso_local i64 @omapfb_parse_vram_param(i64, i32, i64*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @omapfb_alloc_fbmem_display(i32, i64, i64) #1

declare dso_local %struct.omapfb_info* @FB2OFB(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
