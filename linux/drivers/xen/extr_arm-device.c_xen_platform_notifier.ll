; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_arm-device.c_xen_platform_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_arm-device.c_xen_platform_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.platform_device = type { i64, i32, i32, i32* }

@NOTIFY_OK = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Platform: Failed to %s device %s MMIO!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @xen_platform_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_platform_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.platform_device* @to_platform_device(i8* %10)
  store %struct.platform_device* %11, %struct.platform_device** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %65

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  switch i64 %24, label %41 [
    i64 129, label %25
    i64 128, label %33
  ]

25:                                               ; preds = %23
  %26 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @xen_map_device_mmio(i32* %28, i64 %31)
  store i32 %32, i32* %9, align 4
  br label %43

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @xen_unmap_device_mmio(i32* %36, i64 %39)
  store i32 %40, i32* %9, align 4
  br label %43

41:                                               ; preds = %23
  %42 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %42, i32* %4, align 4
  br label %65

43:                                               ; preds = %33, %25
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 2
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %49, 129
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %57

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = icmp eq i64 %53, 128
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  br label %57

57:                                               ; preds = %52, %51
  %58 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %51 ], [ %56, %52 ]
  %59 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %43
  %64 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %41, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.platform_device* @to_platform_device(i8*) #1

declare dso_local i32 @xen_map_device_mmio(i32*, i64) #1

declare dso_local i32 @xen_unmap_device_mmio(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
