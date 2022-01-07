; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_device_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_device_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_mdm6600 = type { i32, i64, i32, i32, i32, %struct.gpio_desc**, %struct.TYPE_2__* }
%struct.gpio_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.gpio_desc** }

@PHY_MDM6600_MODE0 = common dso_local global i64 0, align 8
@PHY_MDM6600_MODE1 = common dso_local global i64 0, align 8
@PHY_MDM6600_RESET = common dso_local global i64 0, align 8
@PHY_MDM6600_POWER = common dso_local global i64 0, align 8
@PHY_MDM6600_CMD_NO_BYPASS = common dso_local global i32 0, align 4
@PHY_MDM6600_PHY_DELAY_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Waiting for power up request to complete..\0A\00", align 1
@PHY_MDM6600_ENABLED_DELAY_MS = common dso_local global i32 0, align 4
@PHY_MDM6600_STATUS_PANIC = common dso_local global i64 0, align 8
@PHY_MDM6600_STATUS_SHUTDOWN_ACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Powered up OK\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Timed out powering up\0A\00", align 1
@phy_mdm6600_wakeirq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"mdm6600-wake\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no modem wakeirq irq%i: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_mdm6600*)* @phy_mdm6600_device_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_mdm6600_device_power_on(%struct.phy_mdm6600* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_mdm6600*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca %struct.gpio_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_mdm6600* %0, %struct.phy_mdm6600** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %11 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %10, i32 0, i32 6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.gpio_desc**, %struct.gpio_desc*** %13, align 8
  %15 = load i64, i64* @PHY_MDM6600_MODE0, align 8
  %16 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %14, i64 %15
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  store %struct.gpio_desc* %17, %struct.gpio_desc** %4, align 8
  %18 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %19 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %18, i32 0, i32 6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.gpio_desc**, %struct.gpio_desc*** %21, align 8
  %23 = load i64, i64* @PHY_MDM6600_MODE1, align 8
  %24 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %22, i64 %23
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %24, align 8
  store %struct.gpio_desc* %25, %struct.gpio_desc** %5, align 8
  %26 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %27 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %26, i32 0, i32 5
  %28 = load %struct.gpio_desc**, %struct.gpio_desc*** %27, align 8
  %29 = load i64, i64* @PHY_MDM6600_RESET, align 8
  %30 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %28, i64 %29
  %31 = load %struct.gpio_desc*, %struct.gpio_desc** %30, align 8
  store %struct.gpio_desc* %31, %struct.gpio_desc** %6, align 8
  %32 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %33 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %32, i32 0, i32 5
  %34 = load %struct.gpio_desc**, %struct.gpio_desc*** %33, align 8
  %35 = load i64, i64* @PHY_MDM6600_POWER, align 8
  %36 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %34, i64 %35
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %36, align 8
  store %struct.gpio_desc* %37, %struct.gpio_desc** %7, align 8
  %38 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %39 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %38, i32 0)
  %40 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %41 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %40, i32 0)
  %42 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %43 = load i32, i32* @PHY_MDM6600_CMD_NO_BYPASS, align 4
  %44 = call i32 @phy_mdm6600_cmd(%struct.phy_mdm6600* %42, i32 %43)
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %46 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %45, i32 0)
  %47 = call i32 @msleep(i32 100)
  %48 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %49 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %48, i32 1)
  %50 = call i32 @msleep(i32 100)
  %51 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %52 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %51, i32 0)
  %53 = load i32, i32* @PHY_MDM6600_PHY_DELAY_MS, align 4
  %54 = call i32 @msleep(i32 %53)
  %55 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %56 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %58 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_info(i32 %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %62 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %61, i32 0, i32 4
  %63 = load i32, i32* @PHY_MDM6600_ENABLED_DELAY_MS, align 4
  %64 = call i32 @msecs_to_jiffies(i32 %63)
  %65 = call i64 @wait_for_completion_timeout(i32* %62, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %1
  %68 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %69 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PHY_MDM6600_STATUS_PANIC, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %75 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PHY_MDM6600_STATUS_SHUTDOWN_ACK, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %81 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_info(i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %73, %67
  br label %94

85:                                               ; preds = %1
  %86 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %87 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  %90 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %91 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %85, %84
  %95 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %96 = call i32 @gpiod_direction_input(%struct.gpio_desc* %95)
  %97 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %98 = call i32 @gpiod_to_irq(%struct.gpio_desc* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %2, align 4
  br label %129

103:                                              ; preds = %94
  %104 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %105 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @phy_mdm6600_wakeirq_thread, align 4
  %109 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %110 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @IRQF_ONESHOT, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %115 = call i32 @devm_request_threaded_irq(i32 %106, i32 %107, i32* null, i32 %108, i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.phy_mdm6600* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %103
  %119 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %120 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @dev_warn(i32 %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %103
  %126 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %127 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %125, %101
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

declare dso_local i32 @phy_mdm6600_cmd(%struct.phy_mdm6600*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gpiod_direction_input(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.phy_mdm6600*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
