; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ipaq_micro_bl.c_micro_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ipaq_micro_bl.c_micro_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.ipaq_micro = type { i32 }
%struct.ipaq_micro_msg = type { i32, i32*, i32 }

@MSG_BACKLIGHT = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @micro_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micro_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.ipaq_micro*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipaq_micro_msg, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %7 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 1
  %8 = call %struct.ipaq_micro* @dev_get_drvdata(i32* %7)
  store %struct.ipaq_micro* %8, %struct.ipaq_micro** %3, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %5, i32 0, i32 0
  store i32 3, i32* %13, align 8
  %14 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %5, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %5, i32 0, i32 2
  %16 = load i32, i32* @MSG_BACKLIGHT, align 4
  store i32 %16, i32* %15, align 8
  %17 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %26 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %30 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %24
  %36 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %5, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %5, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %5, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 %46, i32* %49, align 4
  %50 = load %struct.ipaq_micro*, %struct.ipaq_micro** %3, align 8
  %51 = call i32 @ipaq_micro_tx_msg_sync(%struct.ipaq_micro* %50, %struct.ipaq_micro_msg* %5)
  ret i32 %51
}

declare dso_local %struct.ipaq_micro* @dev_get_drvdata(i32*) #1

declare dso_local i32 @ipaq_micro_tx_msg_sync(%struct.ipaq_micro*, %struct.ipaq_micro_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
