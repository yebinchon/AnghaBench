; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_bl_power_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_bl_power_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.backlight_device = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"set power to %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bl_power_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_power_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.backlight_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.backlight_device* @to_backlight_device(%struct.device* %14)
  store %struct.backlight_device* %15, %struct.backlight_device** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 0, i64* %12)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %72

22:                                               ; preds = %4
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.backlight_device*, %struct.backlight_device** %11, align 8
  %26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.backlight_device*, %struct.backlight_device** %11, align 8
  %29 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %22
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.backlight_device*, %struct.backlight_device** %11, align 8
  %36 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %32
  %42 = load %struct.backlight_device*, %struct.backlight_device** %11, align 8
  %43 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.backlight_device*, %struct.backlight_device** %11, align 8
  %48 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load %struct.backlight_device*, %struct.backlight_device** %11, align 8
  %51 = call i32 @backlight_update_status(%struct.backlight_device* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = load i64, i64* %13, align 8
  %56 = load %struct.backlight_device*, %struct.backlight_device** %11, align 8
  %57 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  br label %62

59:                                               ; preds = %41
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %54
  br label %66

63:                                               ; preds = %32
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %62
  br label %67

67:                                               ; preds = %66, %22
  %68 = load %struct.backlight_device*, %struct.backlight_device** %11, align 8
  %69 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %20
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.backlight_device* @to_backlight_device(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
