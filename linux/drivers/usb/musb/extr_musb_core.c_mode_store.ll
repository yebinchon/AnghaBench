; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.musb = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@MUSB_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@MUSB_PERIPHERAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@MUSB_OTG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.musb*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.musb* @dev_to_musb(%struct.device* %12)
  store %struct.musb* %13, %struct.musb** %9, align 8
  %14 = load %struct.musb*, %struct.musb** %9, align 8
  %15 = getelementptr inbounds %struct.musb, %struct.musb* %14, i32 0, i32 0
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @sysfs_streq(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.musb*, %struct.musb** %9, align 8
  %23 = load i32, i32* @MUSB_HOST, align 4
  %24 = call i32 @musb_platform_set_mode(%struct.musb* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  br label %46

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @sysfs_streq(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.musb*, %struct.musb** %9, align 8
  %31 = load i32, i32* @MUSB_PERIPHERAL, align 4
  %32 = call i32 @musb_platform_set_mode(%struct.musb* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %45

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @sysfs_streq(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.musb*, %struct.musb** %9, align 8
  %39 = load i32, i32* @MUSB_OTG, align 4
  %40 = call i32 @musb_platform_set_mode(%struct.musb* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.musb*, %struct.musb** %9, align 8
  %48 = getelementptr inbounds %struct.musb, %struct.musb* %47, i32 0, i32 0
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i64, i64* %8, align 8
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i64 [ %54, %53 ], [ %57, %55 ]
  ret i64 %59
}

declare dso_local %struct.musb* @dev_to_musb(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @musb_platform_set_mode(%struct.musb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
