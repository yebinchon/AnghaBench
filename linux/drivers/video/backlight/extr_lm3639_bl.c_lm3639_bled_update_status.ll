; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3639_bl.c_lm3639_bled_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lm3639_bl.c_lm3639_bled_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lm3639_chip_data = type { i32, i32, %struct.lm3639_platform_data* }
%struct.lm3639_platform_data = type { i32, i32 (i32, i32)*, i64 }

@REG_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"last flag is 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"No pwm control func. in plat-data\0A\00", align 1
@REG_BL_CONF_4 = common dso_local global i32 0, align 4
@REG_BL_CONF_3 = common dso_local global i32 0, align 4
@REG_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"i2c failed to access registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @lm3639_bled_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3639_bled_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lm3639_chip_data*, align 8
  %7 = alloca %struct.lm3639_platform_data*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = call %struct.lm3639_chip_data* @bl_get_data(%struct.backlight_device* %8)
  store %struct.lm3639_chip_data* %9, %struct.lm3639_chip_data** %6, align 8
  %10 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %11 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %10, i32 0, i32 2
  %12 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %11, align 8
  store %struct.lm3639_platform_data* %12, %struct.lm3639_platform_data** %7, align 8
  %13 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %14 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @REG_FLAG, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %115

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %26 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_info(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %21
  %31 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %7, align 8
  %32 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %7, align 8
  %37 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %36, i32 0, i32 1
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = icmp ne i32 (i32, i32)* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %7, align 8
  %42 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %41, i32 0, i32 1
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %45 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lm3639_platform_data*, %struct.lm3639_platform_data** %7, align 8
  %49 = getelementptr inbounds %struct.lm3639_platform_data, %struct.lm3639_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %43(i32 %47, i32 %50)
  br label %57

52:                                               ; preds = %35
  %53 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %54 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %40
  %58 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %59 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %2, align 4
  br label %124

62:                                               ; preds = %30
  %63 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %64 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @REG_BL_CONF_4, align 4
  %67 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %68 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @regmap_write(i32 %65, i32 %66, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %115

75:                                               ; preds = %62
  %76 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %77 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @REG_BL_CONF_3, align 4
  %80 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %81 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regmap_write(i32 %78, i32 %79, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %115

88:                                               ; preds = %75
  %89 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %90 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %96 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @REG_ENABLE, align 4
  %99 = call i32 @regmap_update_bits(i32 %97, i32 %98, i32 1, i32 0)
  store i32 %99, i32* %4, align 4
  br label %106

100:                                              ; preds = %88
  %101 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %102 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @REG_ENABLE, align 4
  %105 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 1, i32 1)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %100, %94
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %115

110:                                              ; preds = %106
  %111 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %112 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %2, align 4
  br label %124

115:                                              ; preds = %109, %87, %74, %20
  %116 = load %struct.lm3639_chip_data*, %struct.lm3639_chip_data** %6, align 8
  %117 = getelementptr inbounds %struct.lm3639_chip_data, %struct.lm3639_chip_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %121 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %115, %110, %57
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.lm3639_chip_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
