; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_store_rotate_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_store_rotate_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i32, i32 }
%struct.omapfb2_mem_region = type { i64 }

@OMAP_DSS_ROT_DMA = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_VRFB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_rotate_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_rotate_type(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.omapfb_info*, align 8
  %12 = alloca %struct.omapfb2_mem_region*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %15)
  store %struct.fb_info* %16, %struct.fb_info** %10, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %18 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %17)
  store %struct.omapfb_info* %18, %struct.omapfb_info** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtoint(i8* %19, i32 0, i32* %13)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %77

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @OMAP_DSS_ROT_DMA, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @OMAP_DSS_ROT_VRFB, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %77

36:                                               ; preds = %29, %25
  %37 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %38 = call i32 @lock_fb_info(%struct.fb_info* %37)
  store i32 0, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.omapfb_info*, %struct.omapfb_info** %11, align 8
  %41 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %64

45:                                               ; preds = %36
  %46 = load %struct.omapfb_info*, %struct.omapfb_info** %11, align 8
  %47 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.omapfb2_mem_region* @omapfb_get_mem_region(i32 %48)
  store %struct.omapfb2_mem_region* %49, %struct.omapfb2_mem_region** %12, align 8
  %50 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %12, align 8
  %51 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %61

57:                                               ; preds = %45
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.omapfb_info*, %struct.omapfb_info** %11, align 8
  %60 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %12, align 8
  %63 = call i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region* %62)
  br label %64

64:                                               ; preds = %61, %44
  %65 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %66 = call i32 @unlock_fb_info(%struct.fb_info* %65)
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  br label %74

72:                                               ; preds = %64
  %73 = load i64, i64* %9, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i64 [ %71, %69 ], [ %73, %72 ]
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %33, %23
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local %struct.omapfb2_mem_region* @omapfb_get_mem_region(i32) #1

declare dso_local i32 @omapfb_put_mem_region(%struct.omapfb2_mem_region*) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
