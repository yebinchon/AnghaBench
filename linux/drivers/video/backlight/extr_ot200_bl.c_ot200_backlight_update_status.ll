; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ot200_bl.c_ot200_backlight_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ot200_bl.c_ot200_backlight_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ot200_backlight_data = type { i32 }

@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@pwm_timer = common dso_local global i32 0, align 4
@MFGPT_REG_SETUP = common dso_local global i32 0, align 4
@MFGPT_REG_COUNTER = common dso_local global i32 0, align 4
@MFGPT_SETUP_CNTEN = common dso_local global i64 0, align 8
@MFGPT_REG_CMP1 = common dso_local global i32 0, align 4
@MAX_COMP2 = common dso_local global i64 0, align 8
@dim_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @ot200_backlight_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ot200_backlight_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.ot200_backlight_data*, align 8
  %4 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = call %struct.ot200_backlight_data* @bl_get_data(%struct.backlight_device* %5)
  store %struct.ot200_backlight_data* %6, %struct.ot200_backlight_data** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %12 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @pwm_timer, align 4
  %24 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %25 = call i32 @cs5535_mfgpt_write(i32 %23, i32 %24, i64 0)
  br label %40

26:                                               ; preds = %19
  %27 = load %struct.ot200_backlight_data*, %struct.ot200_backlight_data** %3, align 8
  %28 = getelementptr inbounds %struct.ot200_backlight_data, %struct.ot200_backlight_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @pwm_timer, align 4
  %33 = load i32, i32* @MFGPT_REG_COUNTER, align 4
  %34 = call i32 @cs5535_mfgpt_write(i32 %32, i32 %33, i64 0)
  %35 = load i32, i32* @pwm_timer, align 4
  %36 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %37 = load i64, i64* @MFGPT_SETUP_CNTEN, align 8
  %38 = call i32 @cs5535_mfgpt_write(i32 %35, i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %31, %26
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* @pwm_timer, align 4
  %42 = load i32, i32* @MFGPT_REG_CMP1, align 4
  %43 = load i64, i64* @MAX_COMP2, align 8
  %44 = load i64*, i64** @dim_table, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %43, %48
  %50 = call i32 @cs5535_mfgpt_write(i32 %41, i32 %42, i64 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.ot200_backlight_data*, %struct.ot200_backlight_data** %3, align 8
  %53 = getelementptr inbounds %struct.ot200_backlight_data, %struct.ot200_backlight_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  ret i32 0
}

declare dso_local %struct.ot200_backlight_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @cs5535_mfgpt_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
