; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pcf50633-backlight.c_pcf50633_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pcf50633-backlight.c_pcf50633_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.pcf50633_bl = type { i32, i32, i32 }

@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@PCF50633_REG_LEDOUT = common dso_local global i32 0, align 4
@PCF50633_REG_LEDENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @pcf50633_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.pcf50633_bl*, align 8
  %5 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %7 = call %struct.pcf50633_bl* @bl_get_data(%struct.backlight_device* %6)
  store %struct.pcf50633_bl* %7, %struct.pcf50633_bl** %4, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %13 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %19 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %1
  store i32 0, i32* %5, align 4
  br label %44

25:                                               ; preds = %17
  %26 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %27 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %31 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %36 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %5, align 4
  br label %43

39:                                               ; preds = %25
  %40 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %41 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %24
  %45 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %46 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %82

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %56 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PCF50633_REG_LEDOUT, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @pcf50633_reg_write(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %62 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %54
  %66 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %67 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PCF50633_REG_LEDENA, align 4
  %70 = call i32 @pcf50633_reg_write(i32 %68, i32 %69, i32 1)
  br label %71

71:                                               ; preds = %65, %54
  br label %78

72:                                               ; preds = %51
  %73 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %74 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PCF50633_REG_LEDENA, align 4
  %77 = call i32 @pcf50633_reg_write(i32 %75, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %72, %71
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.pcf50633_bl*, %struct.pcf50633_bl** %4, align 8
  %81 = getelementptr inbounds %struct.pcf50633_bl, %struct.pcf50633_bl* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %50
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.pcf50633_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @pcf50633_reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
