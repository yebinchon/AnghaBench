; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_rave-sp-backlight.c_rave_sp_backlight_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_rave-sp-backlight.c_rave_sp_backlight_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32, %struct.backlight_properties }
%struct.backlight_properties = type { i64, i32 }
%struct.rave_sp = type { i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@RAVE_SP_CMD_SET_BACKLIGHT = common dso_local global i32 0, align 4
@RAVE_SP_BACKLIGHT_LCD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @rave_sp_backlight_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_backlight_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.backlight_properties*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rave_sp*, align 8
  %6 = alloca [5 x i32], align 16
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 1
  store %struct.backlight_properties* %8, %struct.backlight_properties** %3, align 8
  %9 = load %struct.backlight_properties*, %struct.backlight_properties** %3, align 8
  %10 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.backlight_properties*, %struct.backlight_properties** %3, align 8
  %16 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ %17, %14 ], [ 0, %18 ]
  store i32 %20, i32* %4, align 4
  %21 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %22 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %21, i32 0, i32 0
  %23 = call %struct.rave_sp* @dev_get_drvdata(i32* %22)
  store %struct.rave_sp* %23, %struct.rave_sp** %5, align 8
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %25 = load i32, i32* @RAVE_SP_CMD_SET_BACKLIGHT, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* @RAVE_SP_BACKLIGHT_LCD_EN, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %31, %32
  br label %35

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 0, %34 ]
  store i32 %36, i32* %27, align 4
  %37 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.rave_sp*, %struct.rave_sp** %5, align 8
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %41 = call i32 @rave_sp_exec(%struct.rave_sp* %39, i32* %40, i32 20, i32* null, i32 0)
  ret i32 %41
}

declare dso_local %struct.rave_sp* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rave_sp_exec(%struct.rave_sp*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
