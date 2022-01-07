; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq32k.c_bq32k_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq32k.c_bq32k_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rtc_device = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BQ32K_SECONDS = common dso_local global i32 0, align 4
@BQ32K_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Oscillator was halted. Restarting...\0A\00", align 1
@BQ32K_MINUTES = common dso_local global i32 0, align 4
@BQ32K_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Oscillator Failure. Check RTC battery.\0A\00", align 1
@bq32k_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@bq32k_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Unable to create sysfs entries for rtc bq32000\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bq32k_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq32k_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.rtc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_I2C, align 4
  %16 = call i32 @i2c_check_functionality(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %103

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* @BQ32K_SECONDS, align 4
  %24 = call i32 @bq32k_read(%struct.device* %22, i32* %8, i32 %23, i32 1)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @BQ32K_STOP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @BQ32K_STOP, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i32, i32* @BQ32K_SECONDS, align 4
  %41 = call i32 @bq32k_write(%struct.device* %39, i32* %8, i32 %40, i32 1)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %32, %27, %21
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %103

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load i32, i32* @BQ32K_MINUTES, align 4
  %50 = call i32 @bq32k_read(%struct.device* %48, i32* %8, i32 %49, i32 1)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %103

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @BQ32K_OF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @dev_warn(%struct.device* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @trickle_charger_of_init(%struct.device* %70, i32 %74)
  br label %76

76:                                               ; preds = %69, %63
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bq32k_driver, i32 0, i32 0, i32 0), align 4
  %80 = load i32, i32* @THIS_MODULE, align 4
  %81 = call %struct.rtc_device* @devm_rtc_device_register(%struct.device* %78, i32 %79, i32* @bq32k_rtc_ops, i32 %80)
  store %struct.rtc_device* %81, %struct.rtc_device** %7, align 8
  %82 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %83 = call i64 @IS_ERR(%struct.rtc_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %87 = call i32 @PTR_ERR(%struct.rtc_device* %86)
  store i32 %87, i32* %3, align 4
  br label %103

88:                                               ; preds = %76
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = call i32 @bq32k_sysfs_register(%struct.device* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %103

99:                                               ; preds = %88
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = load %struct.rtc_device*, %struct.rtc_device** %7, align 8
  %102 = call i32 @i2c_set_clientdata(%struct.i2c_client* %100, %struct.rtc_device* %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %94, %85, %53, %45, %18
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @bq32k_read(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @bq32k_write(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @trickle_charger_of_init(%struct.device*, i32) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(%struct.device*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @bq32k_sysfs_register(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
