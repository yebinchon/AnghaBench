; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tps65217_bl.c_tps65217_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_tps65217_bl.c_tps65217_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.tps65217_bl = type { i32, i32, i32 }

@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@TPS65217_REG_WLEDCTRL2 = common dso_local global i32 0, align 4
@TPS65217_PROTECT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to set brightness level: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"brightness set to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @tps65217_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65217_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.tps65217_bl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.tps65217_bl* @bl_get_data(%struct.backlight_device* %7)
  store %struct.tps65217_bl* %8, %struct.tps65217_bl** %4, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %14 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %23 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %30 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %21
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %36
  %40 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %41 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TPS65217_REG_WLEDCTRL2, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @TPS65217_PROTECT_NONE, align 4
  %47 = call i32 @tps65217_reg_write(i32 %42, i32 %43, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %52 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %76

57:                                               ; preds = %39
  %58 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %59 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %64 = getelementptr inbounds %struct.tps65217_bl, %struct.tps65217_bl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %69 = call i32 @tps65217_bl_enable(%struct.tps65217_bl* %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %57
  br label %74

71:                                               ; preds = %36
  %72 = load %struct.tps65217_bl*, %struct.tps65217_bl** %4, align 8
  %73 = call i32 @tps65217_bl_disable(%struct.tps65217_bl* %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %70
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %50
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.tps65217_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @tps65217_reg_write(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @tps65217_bl_enable(%struct.tps65217_bl*) #1

declare dso_local i32 @tps65217_bl_disable(%struct.tps65217_bl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
