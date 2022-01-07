; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_vbus_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_vbus_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.musb = type { i64, i32, i32 }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_VBUS = common dso_local global i32 0, align 4
@MUSB_DEVCTL_VBUS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Vbus %s, timeout %lu msec\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @vbus_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbus_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.musb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.musb* @dev_to_musb(%struct.device* %12)
  store %struct.musb* %13, %struct.musb** %7, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @pm_runtime_get_sync(%struct.device* %14)
  %16 = load %struct.musb*, %struct.musb** %7, align 8
  %17 = getelementptr inbounds %struct.musb, %struct.musb* %16, i32 0, i32 1
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.musb*, %struct.musb** %7, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.musb*, %struct.musb** %7, align 8
  %24 = call i32 @musb_platform_get_vbus_status(%struct.musb* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %3
  %28 = load %struct.musb*, %struct.musb** %7, align 8
  %29 = getelementptr inbounds %struct.musb, %struct.musb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MUSB_DEVCTL, align 4
  %32 = call i32 @musb_readb(i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @MUSB_DEVCTL_VBUS, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @MUSB_DEVCTL_VBUS_SHIFT, align 4
  %37 = shl i32 3, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %41

40:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.musb*, %struct.musb** %7, align 8
  %44 = getelementptr inbounds %struct.musb, %struct.musb* %43, i32 0, i32 1
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @pm_runtime_put_sync(%struct.device* %47)
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %53, i64 %54)
  ret i32 %55
}

declare dso_local %struct.musb* @dev_to_musb(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @musb_platform_get_vbus_status(%struct.musb*) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
