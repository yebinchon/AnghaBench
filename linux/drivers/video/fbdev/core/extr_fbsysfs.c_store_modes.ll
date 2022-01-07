; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbsysfs.c_store_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbsysfs.c_store_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { i32 }
%struct.fb_videomode = type { i32 }

@old_list = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_modes(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %12)
  store %struct.fb_info* %13, %struct.fb_info** %10, align 8
  %14 = load i32, i32* @old_list, align 4
  %15 = call i32 @LIST_HEAD(i32 %14)
  %16 = load i64, i64* %9, align 8
  %17 = udiv i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %56

27:                                               ; preds = %4
  %28 = call i32 (...) @console_lock()
  %29 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %30 = call i32 @lock_fb_info(%struct.fb_info* %29)
  %31 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = call i32 @list_splice(i32* %32, i32* @old_list)
  %34 = load i8*, i8** %8, align 8
  %35 = bitcast i8* %34 to %struct.fb_videomode*
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = call i32 @fb_videomode_to_modelist(%struct.fb_videomode* %35, i32 %36, i32* %38)
  %40 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %41 = call i64 @fb_new_modelist(%struct.fb_info* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %27
  %44 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = call i32 @fb_destroy_modelist(i32* %45)
  %47 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = call i32 @list_splice(i32* @old_list, i32* %48)
  br label %52

50:                                               ; preds = %27
  %51 = call i32 @fb_destroy_modelist(i32* @old_list)
  br label %52

52:                                               ; preds = %50, %43
  %53 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %54 = call i32 @unlock_fb_info(%struct.fb_info* %53)
  %55 = call i32 (...) @console_unlock()
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %24
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @fb_videomode_to_modelist(%struct.fb_videomode*, i32, i32*) #1

declare dso_local i64 @fb_new_modelist(%struct.fb_info*) #1

declare dso_local i32 @fb_destroy_modelist(i32*) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
