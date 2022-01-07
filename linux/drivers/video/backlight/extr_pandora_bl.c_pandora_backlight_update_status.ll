; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pandora_bl.c_pandora_backlight_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pandora_bl.c_pandora_backlight_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.pandora_private = type { i64 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@MAX_USER_VALUE = common dso_local global i32 0, align 4
@PANDORABL_WAS_OFF = common dso_local global i64 0, align 8
@TWL4030_MODULE_INTBR = common dso_local global i32 0, align 4
@TWL_INTBR_GPBR1 = common dso_local global i32 0, align 4
@PWM0_ENABLE = common dso_local global i32 0, align 4
@PWM0_CLK_ENABLE = common dso_local global i32 0, align 4
@TWL_MODULE_PWM = common dso_local global i32 0, align 4
@MAX_VALUE = common dso_local global i32 0, align 4
@TWL_PWM0_OFF = common dso_local global i32 0, align 4
@MIN_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @pandora_backlight_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pandora_backlight_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pandora_private*, align 8
  %5 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %7 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %11 = call %struct.pandora_private* @bl_get_data(%struct.backlight_device* %10)
  store %struct.pandora_private* %11, %struct.pandora_private** %4, align 8
  %12 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %13 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %21 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %30 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MAX_USER_VALUE, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @MAX_USER_VALUE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = load %struct.pandora_private*, %struct.pandora_private** %4, align 8
  %48 = getelementptr inbounds %struct.pandora_private, %struct.pandora_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PANDORABL_WAS_OFF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %113

53:                                               ; preds = %46
  %54 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %55 = load i32, i32* @TWL_INTBR_GPBR1, align 4
  %56 = call i32 @twl_i2c_read_u8(i32 %54, i32* %5, i32 %55)
  %57 = load i32, i32* @PWM0_ENABLE, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @TWL_INTBR_GPBR1, align 4
  %64 = call i32 @twl_i2c_write_u8(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @PWM0_CLK_ENABLE, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @TWL_INTBR_GPBR1, align 4
  %72 = call i32 @twl_i2c_write_u8(i32 %69, i32 %70, i32 %71)
  br label %113

73:                                               ; preds = %43
  %74 = load %struct.pandora_private*, %struct.pandora_private** %4, align 8
  %75 = getelementptr inbounds %struct.pandora_private, %struct.pandora_private* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PANDORABL_WAS_OFF, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %73
  %80 = load i32, i32* @TWL_MODULE_PWM, align 4
  %81 = load i32, i32* @MAX_VALUE, align 4
  %82 = load i32, i32* @TWL_PWM0_OFF, align 4
  %83 = call i32 @twl_i2c_write_u8(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %85 = load i32, i32* @TWL_INTBR_GPBR1, align 4
  %86 = call i32 @twl_i2c_read_u8(i32 %84, i32* %5, i32 %85)
  %87 = load i32, i32* @PWM0_ENABLE, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @PWM0_CLK_ENABLE, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @TWL_INTBR_GPBR1, align 4
  %97 = call i32 @twl_i2c_write_u8(i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* @PWM0_ENABLE, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @TWL_INTBR_GPBR1, align 4
  %104 = call i32 @twl_i2c_write_u8(i32 %101, i32 %102, i32 %103)
  %105 = call i32 @usleep_range(i32 2000, i32 10000)
  br label %106

106:                                              ; preds = %79, %73
  %107 = load i32, i32* @TWL_MODULE_PWM, align 4
  %108 = load i32, i32* @MIN_VALUE, align 4
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* @TWL_PWM0_OFF, align 4
  %112 = call i32 @twl_i2c_write_u8(i32 %107, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %53, %52
  %114 = load i32, i32* %3, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.pandora_private*, %struct.pandora_private** %4, align 8
  %118 = getelementptr inbounds %struct.pandora_private, %struct.pandora_private* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  br label %123

119:                                              ; preds = %113
  %120 = load i64, i64* @PANDORABL_WAS_OFF, align 8
  %121 = load %struct.pandora_private*, %struct.pandora_private** %4, align 8
  %122 = getelementptr inbounds %struct.pandora_private, %struct.pandora_private* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %116
  ret i32 0
}

declare dso_local %struct.pandora_private* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
