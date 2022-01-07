; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_store_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_store_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32 }
%struct.omapfb_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_mirror(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.omapfb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fb_var_screeninfo, align 4
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
  %20 = call i32 @strtobool(i8* %19, i32* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %65

25:                                               ; preds = %4
  %26 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %27 = call i32 @lock_fb_info(%struct.fb_info* %26)
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.omapfb_info*, %struct.omapfb_info** %11, align 8
  %30 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.omapfb_info*, %struct.omapfb_info** %11, align 8
  %32 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @omapfb_get_mem_region(i32 %33)
  %35 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = call i32 @memcpy(%struct.fb_var_screeninfo* %14, %struct.fb_var_screeninfo* %36, i32 4)
  %38 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %39 = call i32 @check_fb_var(%struct.fb_info* %38, %struct.fb_var_screeninfo* %14)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %57

43:                                               ; preds = %25
  %44 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = call i32 @memcpy(%struct.fb_var_screeninfo* %45, %struct.fb_var_screeninfo* %14, i32 4)
  %47 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %48 = call i32 @set_fb_fix(%struct.fb_info* %47)
  %49 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %50 = call i32 @omapfb_apply_changes(%struct.fb_info* %49, i32 0)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %57

54:                                               ; preds = %43
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %54, %53, %42
  %58 = load %struct.omapfb_info*, %struct.omapfb_info** %11, align 8
  %59 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @omapfb_put_mem_region(i32 %60)
  %62 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %63 = call i32 @unlock_fb_info(%struct.fb_info* %62)
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %57, %23
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @omapfb_get_mem_region(i32) #1

declare dso_local i32 @memcpy(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i32) #1

declare dso_local i32 @check_fb_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @set_fb_fix(%struct.fb_info*) #1

declare dso_local i32 @omapfb_apply_changes(%struct.fb_info*, i32) #1

declare dso_local i32 @omapfb_put_mem_region(i32) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
