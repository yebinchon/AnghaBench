; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_arcxcnn_bl.c_arcxcnn_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_arcxcnn_bl.c_arcxcnn_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.arcxcnn = type { i32 }

@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@ARCXCNN_CMD = common dso_local global i32 0, align 4
@ARCXCNN_CMD_STDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @arcxcnn_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcxcnn_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.arcxcnn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.arcxcnn* @bl_get_data(%struct.backlight_device* %7)
  store %struct.arcxcnn* %8, %struct.arcxcnn** %4, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %14 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %18 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.arcxcnn*, %struct.arcxcnn** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @arcxcnn_set_brightness(%struct.arcxcnn* %24, i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %46

31:                                               ; preds = %23
  %32 = load %struct.arcxcnn*, %struct.arcxcnn** %4, align 8
  %33 = load i32, i32* @ARCXCNN_CMD, align 4
  %34 = load i32, i32* @ARCXCNN_CMD_STDBY, align 4
  %35 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %36 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @ARCXCNN_CMD_STDBY, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ 0, %40 ], [ %42, %41 ]
  %45 = call i32 @arcxcnn_update_field(%struct.arcxcnn* %32, i32 %33, i32 %34, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %29
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.arcxcnn* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @arcxcnn_set_brightness(%struct.arcxcnn*, i64) #1

declare dso_local i32 @arcxcnn_update_field(%struct.arcxcnn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
